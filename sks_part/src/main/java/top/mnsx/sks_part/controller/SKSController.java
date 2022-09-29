package top.mnsx.sks_part.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.mnsx.sks_part.entity.Order;
import top.mnsx.sks_part.mq.MQSender;
import top.mnsx.sks_part.mq.SKSMessage;
import top.mnsx.sks_part.result.ResultCode;
import top.mnsx.sks_part.result.ResultMap;
import top.mnsx.sks_part.service.GoodService;
import top.mnsx.sks_part.service.OrderService;
import top.mnsx.sks_part.utils.JSONUtil;
import top.mnsx.sks_part.utils.RedisUtil;

import java.util.HashMap;
import java.util.Map;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 10:23
 * @Description:
 */
@RestController
@CrossOrigin
@RequestMapping("/sks")
public class SKSController {
    @Autowired
    private MQSender mqSender;
    @Autowired
    private GoodService goodService;
    @Autowired
    private RedisUtil redisUtil;
    @Autowired
    private OrderService orderService;
    
    private Map<Integer, Boolean> map = new HashMap<>();

    @GetMapping("/{goodId}/{userId}")
    public String sks(@PathVariable("goodId") Integer goodId, @PathVariable("userId") Integer userId) {
        ResultMap<Void> resultMap = new ResultMap<>();
        
        if (userId == null) {
            resultMap = resultMap.fail(new ResultCode(500, "用户未登录"));
            return JSONUtil.mapToJson(resultMap);
        }

        if (redisUtil.sHasKey("order:" + goodId, "" + userId)) {
            resultMap = resultMap.fail(new ResultCode(500, "已经完成秒杀"));
            return JSONUtil.mapToJson(resultMap);
        }

        Boolean over = map.get(goodId);
        if (over) {
            resultMap = resultMap.fail(new ResultCode(500, "秒杀已经结束"));
            return JSONUtil.mapToJson(resultMap);
        }

        Long result = redisUtil.sSet("order:" + goodId, "" + userId);
        if (result != 1) {
            resultMap = resultMap.fail(new ResultCode(500, "秒杀失败"));
            return JSONUtil.mapToJson(resultMap);
        }

        Long stock = redisUtil.decr("" + goodId, 1L);
        if (stock < 0) {
            map.put(goodId, true);
            resultMap = resultMap.fail(new ResultCode(500, "秒杀已经结束"));
            return JSONUtil.mapToJson(resultMap);
        }

        /*Long result = redisUtil.sSet("order:" + goodId, "" + userId);
        if (result != 1) {
            resultMap = resultMap.fail(new ResultCode(500, "秒杀失败"));
            return JSONUtil.mapToJson(resultMap);
        }*/

        SKSMessage sksMessage = new SKSMessage(userId, goodId);
        mqSender.sendSKSMessage(sksMessage);
        return JSONUtil.mapToJson(resultMap.ok());
    }

    @GetMapping("/{goodId}")
    public String start(@PathVariable Integer goodId) {
        map.put(goodId, false);
        Integer count = goodService.getStockCount(goodId);
        redisUtil.set("" + goodId, "" + count);
        ResultMap<Void> resultmap = new ResultMap<>();
        return JSONUtil.mapToJson(resultmap.ok());
    }
}

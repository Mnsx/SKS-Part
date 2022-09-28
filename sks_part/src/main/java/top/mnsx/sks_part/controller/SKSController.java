package top.mnsx.sks_part.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.mnsx.sks_part.mq.MQSender;
import top.mnsx.sks_part.mq.SKSMessage;
import top.mnsx.sks_part.result.ResultMap;
import top.mnsx.sks_part.service.GoodService;
import top.mnsx.sks_part.utils.JSONUtil;

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

    @GetMapping("/{userId}/{goodId}")
    public String sks(@PathVariable("userId") Integer userId, @PathVariable("goodId") Integer goodId) {
        SKSMessage sksMessage = new SKSMessage(userId, goodId);
        mqSender.sendSKSMessage(sksMessage);
        ResultMap<Void> resultMap = new ResultMap<>();
        return JSONUtil.mapToJson(resultMap.ok());
    }

    @GetMapping("/{goodId}")
    public String start(@PathVariable Integer goodId) {
        goodService.getStockCount(goodId);
        ResultMap<Void> resultmap = new ResultMap<>();
        return JSONUtil.mapToJson(resultmap.ok());
    }
}

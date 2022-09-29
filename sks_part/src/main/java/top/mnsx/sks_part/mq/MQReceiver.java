package top.mnsx.sks_part.mq;

import com.alibaba.fastjson2.JSON;
import com.rabbitmq.client.Channel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.mnsx.sks_part.dao.OrderDao;
import top.mnsx.sks_part.entity.Order;
import top.mnsx.sks_part.service.GoodService;
import top.mnsx.sks_part.service.OrderService;
import top.mnsx.sks_part.utils.RedisUtil;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 10:19
 * @Description:
 */
@Service
@Slf4j
public class MQReceiver {
    @Autowired
    private OrderService orderService;
    @Autowired
    private RedisUtil redisUtil;
    @Autowired
    private GoodService goodService;

    public static final String SKS_QUEUE = "sks.queue";

    @RabbitListener(queues=SKS_QUEUE)
    public void receive(String message) {
        log.info("receive message" + message);
        SKSMessage sksMessage = JSON.parseObject(message, SKSMessage.class);

        Integer count = goodService.getStockCount(sksMessage.getGoodsId());
        if (count < 0) {
            return;
        }

        // 直接存入数据库中
        Order order = orderService.selectOrderByUserId(sksMessage.getUserId());
        if (order != null) {
            return;
        }

        orderService.insertOrder(sksMessage.getUserId(), sksMessage.getGoodsId());

        goodService.updateStockCount(sksMessage.getGoodsId());

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}

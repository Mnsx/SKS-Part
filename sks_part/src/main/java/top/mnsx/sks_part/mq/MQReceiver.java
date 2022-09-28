package top.mnsx.sks_part.mq;

import com.alibaba.fastjson2.JSON;
import com.rabbitmq.client.Channel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.mnsx.sks_part.dao.OrderDao;
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
    private OrderDao orderDao;
    @Autowired
    private RedisUtil redisUtil;

    public static final String SKS_QUEUE = "sks.queue";

    @RabbitListener(queues=SKS_QUEUE)
    public void receive(String message) {
        log.info("message" + message);
        SKSMessage sksMessage = JSON.parseObject(message, SKSMessage.class);

        // 直接存入数据库中
        /*Integer result = orderDao.insertOrder(sksMessage.getUserId(), sksMessage.getGoodsId());
        if (result != 1) {
            throw new RuntimeException();
        }*/

        if (isHasStockCount(sksMessage.getGoodsId())) {
            reduceStockCount(sksMessage.getGoodsId());
        }
    }

    public Boolean isHasStockCount(Integer id) {
        return (!redisUtil.get(String.valueOf(id)).equals("0"));
    }

    public Boolean reduceStockCount(Integer id) {
        Long decr = redisUtil.decr(String.valueOf(id), 1L);
        return decr == 1;
    }
}

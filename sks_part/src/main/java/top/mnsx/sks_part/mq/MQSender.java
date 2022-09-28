package top.mnsx.sks_part.mq;

import com.alibaba.fastjson2.JSON;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.mnsx.sks_part.result.ResultMap;
import top.mnsx.sks_part.utils.JSONUtil;

import java.util.HashMap;
import java.util.Map;


@Service
@Slf4j
public class MQSender {
	@Autowired
	RabbitTemplate rabbitTemplate;

	public static final String SKS_QUEUE = "sks.queue";

	public void sendSKSMessage(SKSMessage msg) {
		String json = JSON.toJSONString(msg);
		rabbitTemplate.convertAndSend(SKS_QUEUE, json);
	}

}

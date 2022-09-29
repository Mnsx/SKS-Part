package top.mnsx.sks_part.mq;

import org.springframework.amqp.core.*;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 10:12
 * @Description:
 */
@Configuration
public class MQConfig {
    public static final String SKS_QUEUE = "sks.queue";
    public static final String SKS_EXCHANGE = "sks.change";

    @Bean("ex")
    public DirectExchange exchange() {
        return new DirectExchange(SKS_EXCHANGE);
    }

    @Bean
    public MessageConverter getMessageConverter() {
        return new Jackson2JsonMessageConverter();
    }

    @Bean("queue")
    public Queue queue() {
        return new Queue(SKS_QUEUE, true);
    }

    @Bean
    public Binding binding(@Qualifier("ex") DirectExchange exchange, @Qualifier("queue") Queue queue) {
        return BindingBuilder.bind(queue).to(exchange).with("EQ");
    }
}

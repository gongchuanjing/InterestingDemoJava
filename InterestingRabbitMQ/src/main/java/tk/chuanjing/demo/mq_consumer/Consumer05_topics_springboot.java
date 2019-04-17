package tk.chuanjing.demo.mq_consumer;

import com.rabbitmq.client.Channel;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import tk.chuanjing.demo.config.RabbitmqConfig;

/**
 * @author Administrator
 * @version 1.0
 * @create 2018-06-17 21:21
 **/
@Component
public class Consumer05_topics_springboot {

    @RabbitListener(queues = {RabbitmqConfig.QUEUE_INFORM_EMAIL})
    public void send_email(String msg,Message message,Channel channel){
        System.out.println("email接收到消息，内容为："+msg);
    }
}
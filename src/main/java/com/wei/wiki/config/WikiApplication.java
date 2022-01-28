package com.wei.wiki.config;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.env.Environment;

@ComponentScan("com.wei")
@SpringBootApplication
public class WikiApplication {

    private static final Logger LOGGER = LoggerFactory.getLogger(WikiApplication.class);

    public static void main(String[] args) {
        SpringApplication app = new SpringApplication(WikiApplication.class);
        Environment environment = app.run(args).getEnvironment();
        LOGGER.info("启动成功");
        LOGGER.info("地址：http://127.0.0.1:{}",environment.getProperty("server.port"));
    }

}

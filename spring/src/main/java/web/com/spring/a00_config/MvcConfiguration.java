package web.com.spring.a00_config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

@Configuration
public class MvcConfiguration  implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		registry.addResourceHandler("/**")
				.addResourceLocations("classpath:/templates/","classpath:/static/");
	}


	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> 
		converters) {

		converters.add(new MappingJackson2HttpMessageConverter());
	}
	@Bean
	public MappingJackson2JsonView pageJsonReport() {

		return new MappingJackson2JsonView();

	}


}

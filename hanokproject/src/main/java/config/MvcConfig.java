package config;
import javax.sql.DataSource;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.zaxxer.hikari.HikariDataSource;

import util.LoginInterceptor;
@Configuration
@ComponentScan(basePackages = { "kr.co.hanokproject", "util" })
@EnableWebMvc
@MapperScan(basePackages = { "kr.co.hanokproject" }, annotationClass = Mapper.class) // 인터페이스 스캔
@EnableTransactionManagement
public class MvcConfig implements WebMvcConfigurer {
	// ViewResolver 설정(JSP 경로)
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	// 정적페이지 처리(컨트롤러가 아니라 톰캣에서 처리하기 위해)
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	// db.properties에 있는 속성
	@Value("${db.driver}")
	private String driver;
	@Value("${db.url}")
	private String url;
	@Value("${db.username}")
	private String username;
	@Value("${db.password}")
	private String password;
	// HikariCP
	@Bean
	public DataSource dataSource() {
		HikariDataSource dataSource = new HikariDataSource();
//	         dataSource.setDriverClassName("oracle.jdbc.OracleDriver");
//	         dataSource.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:XE");
		dataSource.setDriverClassName(driver);
		dataSource.setJdbcUrl(url);
		dataSource.setUsername(username);
		dataSource.setPassword(password);
		return dataSource;
	}
	// MyBatis
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean ssf = new SqlSessionFactoryBean();
		ssf.setDataSource(dataSource()); // 의존성 주입
		// mapper파일의 위치
		//PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
		//ssf.setMapperLocations(resolver.getResources("classpath:/kr/co/hanokproject/**/*.xml"));
		return ssf.getObject();
	}
	// DAO에서 주입받을 객체
	// sql 실행하려고
//		@Bean
//		public SqlSessionTemplate sst() throws Exception {
//			return new SqlSessionTemplate(sqlSessionFactory());
//		}
	// 트랜잭션매니저 빈 등록
	@Bean
	public TransactionManager tm() {
		DataSourceTransactionManager dtm = new DataSourceTransactionManager(dataSource());
		return dtm;
	}
//		// 인터셉터 빈 등록
//		@Bean
//		public LoginInterceptor interception() {
//			return new LoginInterceptor();
//		}

//		// 설정
//		@Override
//		public void addInterceptors(InterceptorRegistry registry) {
//			registry.addInterceptor(interception())
//				.addPathPatterns("/student/write.do");
//			
//				// 관리자페이지
////				.addPathPatterns("/admin/**")
////				.excludePathPatterns("/admin/login.do")
//		}
	// 파일업로드관련 빈 등록
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("utf-8");
		resolver.setMaxUploadSize(1024 * 1024 * 5);
		return resolver;
	}
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	@Bean
	public static PropertyPlaceholderConfigurer propreties() {
		PropertyPlaceholderConfigurer config = new PropertyPlaceholderConfigurer();
		config.setLocations(new ClassPathResource("db.properties"));
		return config;
	}
}







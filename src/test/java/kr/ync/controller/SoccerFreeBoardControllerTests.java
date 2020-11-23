package kr.ync.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
//Java Config
//@ContextConfiguration(classes = {
//org.zerock.config.RootConfig.class,
//org.zerock.config.ServletConfig.class} )
@Log4j
public class SoccerFreeBoardControllerTests {
	
	//@Setter(onMethod_ = { @Autowired })
		@Autowired
		private WebApplicationContext ctx; // 객체를 주입받음

		private MockMvc mockMvc; // 필드 선언  
		
		@Before
		public void setup() {
			this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
		}
		
//		@Test
//		public void testList() throws Exception {
//	
//			log.info(
//					mockMvc.perform(MockMvcRequestBuilders.get("/front/blogs"))
//					.andReturn()
//					.getModelAndView()
//					.getModelMap());
//		}
		
//		@Test
//		public void testRegister() throws Exception {
//	
//			String resultPage = mockMvc
//					.perform(MockMvcRequestBuilders.post("/front/register")
//					.param("title", "테스트 새글 제목")
//					.param("content", "테스트 새글 내용")
//					.param("writer", "user00"))
//					.andReturn().getModelAndView().getViewName();
//	
//			log.info("resultPage: " + resultPage);
//	
//		}
		
		@Test
		public void testListPaging() throws Exception {
			log.info("===================================================================");
			log.info(mockMvc.perform(
					MockMvcRequestBuilders.get("/front/blogs")
					.param("pageNum", "2")
					.param("amount", "10"))
					.andReturn().getModelAndView().getModelMap());
			log.info("==================================================================");
		}

}

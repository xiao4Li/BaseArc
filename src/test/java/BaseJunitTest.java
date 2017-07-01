import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * @Package: [PACKAGE_NAME]
 * @Description: [一句话描述该类的功能]
 * @Author: [chenye]
 * @CreateDate: [2017/7/1 15:08]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/7/1 15:08，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/config/spring/spring-service.xml",
        "classpath:/config/spring/spring-dao.xml","classpath:/config/spring/spring-activity.xml"})
@WebAppConfiguration
public class BaseJunitTest{
}

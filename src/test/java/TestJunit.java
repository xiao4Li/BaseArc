import com.baseArc.service.SystemUtilsService;
import org.junit.Test;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @Package: [PACKAGE_NAME]
 * @Description: [一句话描述该类的功能]
 * @Author: [chenye]
 * @CreateDate: [2017/7/1 15:16]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/7/1 15:16，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
@Transactional
public class TestJunit extends BaseJunitTest{
    @Resource
    private SystemUtilsService systemUtilsService;

    @Test
    public void test(){
        System.out.println(systemUtilsService.getSystemDataTime());
    }
}

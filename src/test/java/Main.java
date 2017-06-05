import org.apache.shiro.codec.Base64;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.DefaultHashService;
import org.apache.shiro.crypto.hash.HashRequest;
import org.apache.shiro.util.ByteSource;
import org.apache.shiro.util.SimpleByteSource;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import java.security.NoSuchAlgorithmException;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/5/31
 * @Description: [ xxxx ]
 * @Version: 1.0
 */
public class Main {
    public static void main(String[] argus) throws NoSuchAlgorithmException {
        DefaultHashService hashService = new DefaultHashService(); //默认算法SHA-512
        hashService.setHashAlgorithmName("MD5");
        hashService.setGeneratePublicSalt(false);//是否生成公盐，默认false
        hashService.setHashIterations(2); //生成Hash值的迭代次数

        HashRequest request = new HashRequest.Builder()
                .setAlgorithmName("MD5").setSource(ByteSource.Util.bytes("123456"))
                .setSalt(ByteSource.Util.bytes("123")).build();
        String hex = hashService.computeHash(request).toHex();
    }
}

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
        hashService.setHashAlgorithmName("SHA-512");
        hashService.setPrivateSalt(new SimpleByteSource("123")); //私盐，默认无
        hashService.setGeneratePublicSalt(true);//是否生成公盐，默认false
        hashService.setRandomNumberGenerator(new SecureRandomNumberGenerator());//用于生成公盐。默认就这个
        hashService.setHashIterations(2); //生成Hash值的迭代次数

        HashRequest request = new HashRequest.Builder()
                .setAlgorithmName("MD5").setSource(ByteSource.Util.bytes("hello"))
                .setSalt(ByteSource.Util.bytes("999")).build();
        String hex = hashService.computeHash(request).toHex();
        HashRequest request2 = new HashRequest.Builder()
                .setAlgorithmName("MD5").setSource(ByteSource.Util.bytes("hello"))
                .setSalt(ByteSource.Util.bytes("777")).build();
        String hex2 = hashService.computeHash(request2).toHex();
    }
}

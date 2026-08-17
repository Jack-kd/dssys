package o;

import com.kuaishou.weapon.p0.C1240b;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: o.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1736a {

    /* renamed from: a, reason: collision with root package name */
    public String f52021a;

    /* renamed from: b, reason: collision with root package name */
    public String f52022b;

    /* renamed from: c, reason: collision with root package name */
    public String f52023c;

    public C1736a() {
        this("AES", C1240b.f30831a, "UTF-8");
    }

    public static String a(String str) {
        int length = 16 - (str.getBytes().length % 16);
        for (int i2 = 0; i2 < length; i2++) {
            str = str + ' ';
        }
        return str;
    }

    public byte[] b(String str, String str2, String str3) throws Exception {
        if (str == null || str.length() == 0) {
            throw new Exception("Empty string");
        }
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str3.getBytes(this.f52021a));
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), this.f52023c);
            Cipher cipher = Cipher.getInstance(this.f52022b);
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(a(str).getBytes());
        } catch (NoSuchAlgorithmException e2) {
            d.e("oauth_", e2.toString());
            return null;
        }
    }

    public C1736a(String str, String str2, String str3) {
        this.f52023c = str;
        this.f52022b = str2;
        this.f52021a = str3;
    }
}

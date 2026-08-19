package com.byazt.ly;

import android.text.TextUtils;
import android.util.Base64;
import com.byazt.eni.eb;
import com.byazt.zn.ec;
import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2431, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(eb ebVar, int i2, String str, int i3) throws Exception {
        if (ebVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        if (i3 != 2 && i3 != 3) {
            String[] strArrHp = ec.hp(true, com.byazt.el.hp.w());
            jSONObject.put("ipv4List", strArrHp[0]);
            jSONObject.put("ipv6List", strArrHp[1]);
        }
        jSONObject.put("networkType", String.valueOf(i2));
        jSONObject.put("packageName", str);
        String string = jSONObject.toString();
        byte[] bArrHp = hp(16);
        String strHp = hp(bArrHp, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkzi87lcyX1t/OSjlmjmj\nUFTAb0Y0wPZ79j10sjVrDtV+lMZXz/hOalITFyXRpmS8g8I1H3AlhihQQsierIFa\nQj5omUsXhzvNO+4DorkMJ14n1o1sfL0iOLTrzydghuUpyspj0M8v5bJTBbLv8DGM\nreKtJ8sbIYC5aj8pAdxn+YTnZ4Rhp/pNRbmIAlxs4Btu3whJt/RTfEASgsDRaTgO\nr9Rlj2YDiyEM4T3d0LsLjNed7B0Ogulzj6OzvHj+foIyb+YEEn6C5F9r+uNY2l2i\nYlHfaizd1HKfISrcAseJu6lGKRP0I3mv538Twqg1u0DFV6waQ9gwgOhq4ORCiNpd\nIQIDAQAB");
        String strHp2 = hp(string.getBytes(), bArrHp);
        ebVar.hp("sdkSecret", strHp);
        ebVar.hp("sdkData", strHp2);
    }

    public static String hp(byte[] bArr, byte[] bArr2) throws Exception {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, new SecretKeySpec(bArr2, "AES"), new GCMParameterSpec(128, Arrays.copyOf(bArr2, 12)));
        return Base64.encodeToString(cipher.doFinal(bArr), 2);
    }

    public static String hp(byte[] bArr, String str) throws Exception {
        if (bArr == null || TextUtils.isEmpty(str)) {
            return null;
        }
        RSAPublicKey rSAPublicKeyHp = hp(str);
        Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
        cipher.init(1, rSAPublicKeyHp);
        return Base64.encodeToString(hp(bArr, cipher, (rSAPublicKeyHp.getModulus().bitLength() / 8) - 66), 2);
    }

    private static RSAPublicKey hp(String str) throws Exception {
        return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
    }

    private static byte[] hp(byte[] bArr, Cipher cipher, int i2) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            int length = bArr.length;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                int i5 = length - i3;
                if (i5 > 0) {
                    byte[] bArrDoFinal = cipher.doFinal(bArr, i3, Math.min(i5, i2));
                    byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
                    i4++;
                    i3 = i4 * i2;
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static byte[] hp(int i2) {
        byte[] bArr = new byte[i2];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }
}

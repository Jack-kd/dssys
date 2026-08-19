package com.ubix.ssp.ad.e.a0;

import android.text.TextUtils;
import com.umeng.analytics.pro.ek;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public class h {
    public static String a(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals("")) {
            try {
                String str2 = "";
                for (byte b3 : MessageDigest.getInstance("MD5").digest(str.getBytes())) {
                    String hexString = Integer.toHexString(b3 & 255);
                    if (hexString.length() == 1) {
                        hexString = "0" + hexString;
                    }
                    str2 = str2 + hexString;
                }
                return str2;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return "";
    }

    public static String a(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            if (str2 == null) {
                System.out.print("Key为空null");
                return null;
            }
            if (str2.length() != 16) {
                System.out.print("Key长度不是16位");
                return null;
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("utf-8"), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return a(cipher.doFinal(str.getBytes("utf-8")));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        int length = bArr.length;
        for (int i2 = 0; i2 <= length - 1; i2++) {
            char cForDigit = Character.forDigit((bArr[i2] >> 4) & 15, 16);
            char cForDigit2 = Character.forDigit(bArr[i2] & ek.f49295m, 16);
            sb.append(cForDigit);
            sb.append(cForDigit2);
        }
        return sb.toString();
    }
}

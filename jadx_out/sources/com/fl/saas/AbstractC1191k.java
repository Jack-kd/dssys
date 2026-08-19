package com.fl.saas;

import android.text.TextUtils;
import com.fl.saas.adx.util.LogcatUtil;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.fl.saas.k, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1191k {
    public static String a(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String strReplaceAll = str.replaceAll("\\s+", "");
        int length = strReplaceAll.length() % 8;
        if (length != 0) {
            strReplaceAll = String.format("%-" + ((strReplaceAll.length() + 8) - length) + "s", strReplaceAll).replace(' ', '0');
        }
        int length2 = strReplaceAll.length() / 8;
        byte[] bArr = new byte[length2];
        int i2 = 0;
        while (i2 < length2) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) Integer.parseInt(strReplaceAll.substring(i2 * 8, i3 * 8), 2);
            i2 = i3;
        }
        return AbstractC1197m.a(bArr);
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : a(str, "!@#_123_sda_12!_", "ABCDEF1234567890", "AES/CBC/PKCS5Padding");
    }

    public static byte[] c(String str) {
        return AbstractC1197m.a(a(f(str), "!@#_123_sda_12!_", "AES/ECB/PKCS5Padding"));
    }

    public static String d(String str) {
        return a(f(str), "!@#_123_sda_12!_", "AES/ECB/PKCS5Padding");
    }

    public static String e(String str) {
        return b(str, "!@#_123_sda_12!_", "ABCDEF1234567890", "AES/CBC/PKCS5Padding");
    }

    public static String f(String str) {
        try {
            String strReplace = str.replace("0x", "").replace(" ", "");
            String string = new BigInteger(strReplace, 16).toString(2);
            int length = strReplace.length() * 4;
            if (string.length() < length) {
                string = String.format("%" + length + "s", string).replace(' ', '0');
            }
            return a(string);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return "";
        }
    }

    public static String a(String str, String str2, String str3) {
        return a(str, str2, (String) null, str3);
    }

    public static String b(String str, String str2, String str3, String str4) {
        byte[] bytes = str3 != null ? str3.getBytes(StandardCharsets.UTF_8) : null;
        Charset charset = StandardCharsets.UTF_8;
        return b(str.getBytes(charset), str2.getBytes(charset), bytes, str4);
    }

    public static String a(String str, String str2, String str3, String str4) {
        byte[] bytes = str3 != null ? str3.getBytes(StandardCharsets.UTF_8) : null;
        try {
            byte[] bArrB = AbstractC1197m.b(str);
            Charset charset = StandardCharsets.UTF_8;
            byte[] bArrA = a(bArrB, str2.getBytes(charset), bytes, str4);
            Objects.requireNonNull(bArrA);
            return new String(bArrA, charset);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return "";
        }
    }

    public static String b(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher cipher = Cipher.getInstance(str);
            if (bArr3 != null) {
                cipher.init(1, secretKeySpec, new IvParameterSpec(bArr3));
            } else {
                cipher.init(1, secretKeySpec);
            }
            return AbstractC1197m.b(cipher.doFinal(bArr));
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher cipher = Cipher.getInstance(str);
            if (bArr3 != null) {
                cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            } else {
                cipher.init(2, secretKeySpec);
            }
            return cipher.doFinal(bArr);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }
}

package com.meishu.sdk.core.utils;

import android.util.Base64;
import com.google.gson.Gson;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* loaded from: classes4.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public static Gson f31948a = new Gson();

    public static String a(Map<String, Object> map) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String strA = "";
        if (map.containsKey("msec")) {
            try {
                String str = (String) map.get("msec");
                try {
                    strA = a(str.getBytes());
                } catch (Exception unused) {
                    strA = str;
                }
            } catch (Exception unused2) {
            }
        }
        byte[] bArrA = a("884942f0e6454745814d5042ef23f4a6");
        byte[] bArrA2 = a(strA);
        try {
            String json = f31948a.toJson(map);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.getBlockSize();
            byte[] bytes = json.getBytes();
            cipher.init(1, new SecretKeySpec(bArrA, "AES"), new IvParameterSpec(bArrA2));
            byte[] bArrDoFinal = cipher.doFinal(bytes);
            byte[] bArr = new byte[bArrA2.length + bArrDoFinal.length];
            System.arraycopy(bArrA2, 0, bArr, 0, bArrA2.length);
            System.arraycopy(bArrDoFinal, 0, bArr, bArrA2.length, bArrDoFinal.length);
            return Base64.encodeToString(bArr, 2).trim();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] a(String str) {
        byte[] bArr;
        int length = str.length();
        if (length % 2 == 1) {
            length++;
            bArr = new byte[length / 2];
            str = o.a("0", str);
        } else {
            bArr = new byte[length / 2];
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 2;
            bArr[i3] = (byte) Integer.parseInt(str.substring(i2, i4), 16);
            i3++;
            i2 = i4;
        }
        return bArr;
    }

    public static String a(byte[] bArr) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(bArr);
        String string = new BigInteger(1, messageDigest.digest()).toString(16);
        return new String(new char[32 - string.length()]).replace(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, "0") + string;
    }
}

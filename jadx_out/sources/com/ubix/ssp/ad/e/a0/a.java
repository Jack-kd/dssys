package com.ubix.ssp.ad.e.a0;

import android.util.Base64;
import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static String f46092a = new String(Base64.decode("MTIzNDU2Nzg5", 0)) + new String(Base64.decode("MDEyMzQ1Ng==", 0));

    /* renamed from: b, reason: collision with root package name */
    private static String f46093b = new String(Base64.decode("MTIzNDU2Nzg5", 0)) + new String(Base64.decode("MDEyMzQ1Ng==", 0));

    public static String a(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(f46092a.getBytes(Charset.forName("UTF-8")), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(f46093b.getBytes(Charset.forName("UTF-8"))));
            return new String(cipher.doFinal(bArr));
        } catch (Exception unused) {
            return "";
        }
    }

    public static String b(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(f46092a.getBytes(Charset.forName("UTF-8")), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, new IvParameterSpec(f46093b.getBytes(Charset.forName("UTF-8"))));
            return new String(Base64.encode(cipher.doFinal(bArr), 10));
        } catch (Exception unused) {
            return "";
        }
    }
}

package com.czhj.sdk.common.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.czhj.sdk.common.Constants;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public class AESUtil {

    /* renamed from: a, reason: collision with root package name */
    private static final int f29416a = 12;

    /* renamed from: b, reason: collision with root package name */
    private static final int f29417b = 128;

    /* renamed from: c, reason: collision with root package name */
    private static volatile byte[] f29418c;

    public static String DecryptString(String str, String str2) {
        return DecryptString(str, str2, Constants.GCMNONCE);
    }

    public static String DecryptStringServer(String str, String str2) {
        return DecryptString(str, str2, null);
    }

    public static byte[] Encrypt(byte[] bArr, String str) throws Exception {
        return Encrypt(bArr, str, null);
    }

    public static String EncryptString(String str, String str2) {
        return EncryptString(str, str2, Constants.GCMNONCE);
    }

    public static String EncryptStringServer(String str, String str2) {
        return EncryptString(str, str2, null);
    }

    private static byte[] a(byte[] bArr, String str, int i2, String str2) throws Exception {
        if (bArr.length == 0 || TextUtils.isEmpty(str)) {
            return bArr;
        }
        byte[] bArrDecode = !TextUtils.isEmpty(str2) ? Base64.decode(str2, 2) : generateNonce();
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(i2, new SecretKeySpec(str.getBytes("utf-8"), "AES"), new GCMParameterSpec(128, bArrDecode));
        return cipher.doFinal(bArr);
    }

    public static synchronized byte[] generateNonce() {
        try {
            if (f29418c == null) {
                f29418c = new byte[12];
                new SecureRandom().nextBytes(f29418c);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f29418c;
    }

    public static String DecryptString(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return str;
        }
        try {
            return new String(a(Base64.decode(str.getBytes("utf-8"), 2), str2, 2, str3), "utf-8");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] Encrypt(byte[] bArr, String str, String str2) throws Exception {
        if (bArr.length == 0 || TextUtils.isEmpty(str)) {
            return bArr;
        }
        try {
            return a(bArr, str, 1, str2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String EncryptString(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return str;
        }
        try {
            return Base64.encodeToString(Encrypt(str.getBytes("utf-8"), str2, str3), 2);
        } catch (Exception unused) {
            return null;
        }
    }
}

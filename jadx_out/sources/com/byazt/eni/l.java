package com.byazt.eni;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@com.byazt.kj.hp(hp = {0, 1, 1905, 34})
/* loaded from: classes2.dex */
public class l {
    public static String hp(byte[] bArr) throws NoSuchAlgorithmException {
        if (bArr == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return s.hp(messageDigest.digest());
        } catch (Exception unused) {
            return "";
        }
    }
}

package com.octopus.ad.internal.c;

import com.umeng.analytics.pro.ek;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes4.dex */
public class h {
    public static String a(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            int i2 = (b3 >>> 4) & 15;
            int i3 = 0;
            while (true) {
                sb.append((char) ((i2 < 0 || i2 > 9) ? i2 + 87 : i2 + 48));
                i2 = b3 & ek.f49295m;
                int i4 = i3 + 1;
                if (i3 >= 1) {
                    break;
                }
                i3 = i4;
            }
        }
        return sb.toString();
    }
}

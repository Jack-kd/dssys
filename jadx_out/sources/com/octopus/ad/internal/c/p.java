package com.octopus.ad.internal.c;

import androidx.annotation.Nullable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

/* loaded from: classes4.dex */
public class p {
    public static boolean a(@Nullable String str) {
        return str == null || str.length() == 0;
    }

    public static String b(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b3 : bArrDigest) {
                int i2 = b3 & 255;
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UnsupportedEncodingException", e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new RuntimeException("NoSuchAlgorithmException", e3);
        }
    }

    public static String a() {
        String strB = b(UUID.randomUUID().toString());
        com.octopus.ad.d.b.f.a("OctopusAd", "createRequestId:" + strB);
        return strB;
    }
}

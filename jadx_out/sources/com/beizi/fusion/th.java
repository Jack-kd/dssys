package com.beizi.fusion;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

/* loaded from: classes2.dex */
public abstract class th {
    public static String a(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b3 : bArrDigest) {
                int i2 = b3 & 255;
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String b(String str) {
        return a(str).substring(8, 24);
    }
}

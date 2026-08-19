package com.fl.saas;

import android.text.TextUtils;
import com.fl.saas.adx.util.LogcatUtil;
import java.security.MessageDigest;

/* renamed from: com.fl.saas.h0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1183h0 {
    public static String a(String str) {
        return TextUtils.isEmpty(str) ? "" : a(str.getBytes());
    }

    public static String a(byte[] bArr) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(bArr);
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b3 : bArrDigest) {
                int i2 = b3 & 255;
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return "";
        }
    }
}

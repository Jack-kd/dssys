package com.meishu.sdk.core.utils;

/* loaded from: classes4.dex */
public class m1 {
    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            String upperCase = Integer.toHexString(b3 & 255).toUpperCase();
            if (upperCase.length() == 1) {
                sb.append("0");
                sb.append(upperCase);
            } else {
                sb.append(upperCase);
            }
        }
        return sb.toString();
    }
}

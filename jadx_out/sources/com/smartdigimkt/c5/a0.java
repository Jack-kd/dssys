package com.smartdigimkt.c5;

/* loaded from: classes5.dex */
public abstract class a0 {
    public static String a(String str) {
        byte[] bytes = str.getBytes();
        for (int i2 = 0; i2 < bytes.length; i2++) {
            bytes[i2] = (byte) (bytes[i2] - 3);
        }
        return new String(bytes);
    }
}

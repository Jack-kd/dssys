package com.beizi.fusion;

import com.qq.e.comm.managers.setting.GlobalSetting;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* loaded from: classes2.dex */
public abstract class g8 {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f14055a = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "a", "b", "c", "d", "e", "f"};

    public static String a(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            try {
                DigestInputStream digestInputStream = new DigestInputStream(fileInputStream, MessageDigest.getInstance("MD5"));
                try {
                    while (digestInputStream.read(new byte[4096]) != -1) {
                    }
                    String strA = a(digestInputStream.getMessageDigest().digest());
                    digestInputStream.close();
                    fileInputStream.close();
                    return strA;
                } finally {
                }
            } finally {
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b3)));
        }
        return sb.toString();
    }
}

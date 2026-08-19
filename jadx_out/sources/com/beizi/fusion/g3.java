package com.beizi.fusion;

import android.text.TextUtils;
import android.util.Base64;

/* loaded from: classes2.dex */
public class g3 implements oa {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static g3 f13923a = new g3();
    }

    public static byte[] a(String str) {
        try {
            return Base64.decode(str, 2);
        } catch (Exception e2) {
            rm.a(e2);
            return null;
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new String(Base64.decode(str, 2));
        } catch (Exception e2) {
            rm.a(e2);
            return "";
        }
    }

    public static String c(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return new String(Base64.decode(bArr, 2));
        } catch (Exception e2) {
            rm.a(e2);
            return "";
        }
    }

    public static String d(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return Base64.encodeToString(bArr, 2);
        } catch (Exception e2) {
            rm.a(e2);
            return "";
        }
    }

    private g3() {
        if (b.f13923a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static g3 a() {
        return b.f13923a;
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return Base64.encodeToString(str.getBytes(), 2);
        } catch (Exception e2) {
            rm.a(e2);
            return "";
        }
    }

    @Override // com.beizi.fusion.oa
    public byte[] a(byte[] bArr) {
        try {
            return Base64.decode(bArr, 2);
        } catch (Exception e2) {
            rm.a(e2);
            return null;
        }
    }

    @Override // com.beizi.fusion.oa
    public byte[] b(byte[] bArr) {
        try {
            return Base64.encode(bArr, 2);
        } catch (Exception e2) {
            rm.a(e2);
            return null;
        }
    }
}

package com.smartdigimkt.z;

import java.security.NoSuchAlgorithmException;

/* loaded from: classes5.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public static volatile b0 f45269a;

    public static b0 a() {
        if (f45269a == null) {
            synchronized (b0.class) {
                try {
                    if (f45269a == null) {
                        f45269a = new b0();
                    }
                } finally {
                }
            }
        }
        return f45269a;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.lang.String r18, boolean r19, com.smartdigimkt.m3.c r20, com.smartdigimkt.l3.a r21, com.smartdigimkt.e0.q r22) {
        /*
            Method dump skipped, instructions count: 1230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.z.b0.a(java.lang.String, boolean, com.smartdigimkt.m3.c, com.smartdigimkt.l3.a, com.smartdigimkt.e0.q):void");
    }

    public static String a(int i2, String str) throws NoSuchAlgorithmException {
        return com.smartdigimkt.t3.n.a().b(i2, com.smartdigimkt.c5.i.b(str));
    }
}

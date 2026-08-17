package com.smartdigimkt.q;

import android.content.Context;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f42617b;

    /* renamed from: c, reason: collision with root package name */
    public static final Method f42618c;

    /* renamed from: a, reason: collision with root package name */
    public final String f42619a;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f42617b = cls.newInstance();
            f42618c = cls.getMethod("getOAID", Context.class);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(android.content.Context r3) {
        /*
            r2 = this;
            r2.<init>()
            java.lang.reflect.Method r0 = com.smartdigimkt.q.d.f42618c
            java.lang.Object r1 = com.smartdigimkt.q.d.f42617b
            if (r1 == 0) goto L18
            if (r0 == 0) goto L18
            java.lang.Object[] r3 = new java.lang.Object[]{r3}     // Catch: java.lang.Throwable -> L18
            java.lang.Object r3 = r0.invoke(r1, r3)     // Catch: java.lang.Throwable -> L18
            if (r3 == 0) goto L18
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L18
            goto L19
        L18:
            r3 = 0
        L19:
            r2.f42619a = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.q.d.<init>(android.content.Context):void");
    }
}

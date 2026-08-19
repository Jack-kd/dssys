package com.smartdigimkt.c5;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.util.SparseBooleanArray;
import java.util.List;

/* loaded from: classes5.dex */
public final class z {

    /* renamed from: b, reason: collision with root package name */
    public static volatile z f39823b;

    /* renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f39824a = new SparseBooleanArray(3);

    public static z a() {
        if (f39823b == null) {
            synchronized (z.class) {
                try {
                    if (f39823b == null) {
                        f39823b = new z();
                    }
                } finally {
                }
            }
        }
        return f39823b;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0038 A[Catch: all -> 0x0012, Exception -> 0x0041, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:11:0x0015, B:14:0x0023, B:19:0x0032, B:21:0x0038, B:24:0x0041), top: B:31:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean b(android.content.Context r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            android.util.SparseBooleanArray r0 = r4.f39824a     // Catch: java.lang.Throwable -> L12
            r1 = 1
            int r0 = r0.indexOfKey(r1)     // Catch: java.lang.Throwable -> L12
            if (r0 < 0) goto L14
            android.util.SparseBooleanArray r5 = r4.f39824a     // Catch: java.lang.Throwable -> L12
            boolean r5 = r5.get(r1)     // Catch: java.lang.Throwable -> L12
            monitor-exit(r4)
            return r5
        L12:
            r5 = move-exception
            goto L48
        L14:
            r0 = 0
            com.smartdigimkt.c5.x r2 = new com.smartdigimkt.c5.x     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L41
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L41
            java.lang.String r5 = "com.huawei.hwid"
            boolean r3 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L41
            if (r3 == 0) goto L23
            goto L31
        L23:
            android.content.pm.PackageManager r3 = r2.f39822a     // Catch: java.lang.Throwable -> L12 android.content.pm.PackageManager.NameNotFoundException -> L31 java.lang.Exception -> L41
            android.content.pm.ApplicationInfo r5 = r3.getApplicationInfo(r5, r0)     // Catch: java.lang.Throwable -> L12 android.content.pm.PackageManager.NameNotFoundException -> L31 java.lang.Exception -> L41
            boolean r5 = r5.enabled     // Catch: java.lang.Throwable -> L12 android.content.pm.PackageManager.NameNotFoundException -> L31 java.lang.Exception -> L41
            if (r5 == 0) goto L2f
            r5 = r1
            goto L32
        L2f:
            r5 = 2
            goto L32
        L31:
            r5 = 3
        L32:
            java.lang.String r2 = r2.a()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L41
            if (r5 != r1) goto L41
            java.lang.String r5 = "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05"
            boolean r5 = r5.equalsIgnoreCase(r2)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L41
            if (r5 == 0) goto L41
            r0 = r1
        L41:
            android.util.SparseBooleanArray r5 = r4.f39824a     // Catch: java.lang.Throwable -> L12
            r5.put(r1, r0)     // Catch: java.lang.Throwable -> L12
            monitor-exit(r4)
            return r0
        L48:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L12
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.c5.z.b(android.content.Context):boolean");
    }

    public final synchronized boolean a(Context context) {
        if (this.f39824a.indexOfKey(2) >= 0) {
            return this.f39824a.get(2);
        }
        boolean z2 = false;
        try {
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
            if (listQueryIntentServices != null) {
                if (listQueryIntentServices.size() > 0) {
                    z2 = true;
                }
            }
        } catch (Exception unused) {
        }
        this.f39824a.put(2, z2);
        return z2;
    }
}

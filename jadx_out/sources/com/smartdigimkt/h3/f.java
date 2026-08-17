package com.smartdigimkt.h3;

import android.content.Context;

/* loaded from: classes5.dex */
public final class f extends d {

    /* renamed from: e, reason: collision with root package name */
    public final com.smartdigimkt.c5.e f40558e;

    public f(Context context, String str, com.smartdigimkt.c5.e eVar) {
        super(context, str, "", 0L);
        this.f40558e = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    @Override // com.smartdigimkt.h3.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.smartdigimkt.h3.b a() {
        /*
            r4 = this;
            java.lang.String r0 = r4.f40554a
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 != 0) goto L25
            android.content.Context r0 = r4.f40555b
            java.lang.String r2 = r4.f40554a
            java.lang.String r3 = com.smartdigimkt.c5.h.f39731a
            if (r0 != 0) goto L19
            com.smartdigimkt.sdk.core.SDKContext r0 = com.smartdigimkt.sdk.core.SDKContext.getInstance()
            android.content.Context r0 = r0.d()
        L19:
            if (r0 == 0) goto L25
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L25
            r3 = 0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r2, r3)     // Catch: java.lang.Throwable -> L25
            goto L26
        L25:
            r0 = r1
        L26:
            com.smartdigimkt.c5.e r2 = r4.f40558e
            if (r2 == 0) goto L3a
            java.lang.Object r2 = com.smartdigimkt.c5.h.f39742f0
            monitor-enter(r2)
            if (r0 == 0) goto L36
            java.lang.String r0 = r0.versionName     // Catch: java.lang.Throwable -> L34
            com.smartdigimkt.c5.h.f39769t = r0     // Catch: java.lang.Throwable -> L34
            goto L36
        L34:
            r0 = move-exception
            goto L38
        L36:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
            goto L3a
        L38:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
            throw r0
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.h3.f.a():com.smartdigimkt.h3.b");
    }

    @Override // com.smartdigimkt.h3.d
    public final int b() {
        return 3;
    }
}

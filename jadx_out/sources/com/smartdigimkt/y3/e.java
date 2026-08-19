package com.smartdigimkt.y3;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.q3.c f45201a;

    public e(com.smartdigimkt.q3.c cVar) {
        this.f45201a = cVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a8, code lost:
    
        if (r3.contains(r2.f42801G) != false) goto L31;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            com.smartdigimkt.q3.c r0 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            java.lang.String r0 = r0.f42820d     // Catch: java.lang.Throwable -> Le4
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le4
            if (r0 == 0) goto L16
            com.smartdigimkt.q3.c r0 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.sdk.core.SDKContext r1 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> Le4
            java.lang.String r1 = r1.f()     // Catch: java.lang.Throwable -> Le4
            r0.f42820d = r1     // Catch: java.lang.Throwable -> Le4
        L16:
            com.smartdigimkt.q3.c r0 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            java.lang.String r0 = r0.f42819c     // Catch: java.lang.Throwable -> Le4
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le4
            r1 = 1
            if (r0 != 0) goto L55
            com.smartdigimkt.q3.c r0 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.sdk.core.SDKContext r2 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.q3.c r3 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            java.lang.String r3 = r3.f42819c     // Catch: java.lang.Throwable -> Le4
            java.lang.String r2 = r2.b(r3)     // Catch: java.lang.Throwable -> Le4
            r0.f42821e = r2     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.q3.c r0 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            java.lang.String r2 = r0.f42819c     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.z4.m r3 = com.smartdigimkt.z4.m.a()     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.a5.e r2 = r3.a(r2)     // Catch: java.lang.Throwable -> Le4
            if (r2 == 0) goto L43
            org.json.JSONObject r2 = r2.f39434x     // Catch: java.lang.Throwable -> Le4
            r0.f42805K = r2     // Catch: java.lang.Throwable -> Le4
        L43:
            com.smartdigimkt.sdk.api.SDMAdxSetting r0 = com.smartdigimkt.sdk.api.SDMAdxSetting.getInstance()     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.q3.c r2 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            java.lang.String r2 = r2.f42819c     // Catch: java.lang.Throwable -> Le4
            boolean r0 = r0.isAdxNetworkMode(r2)     // Catch: java.lang.Throwable -> Le4
            if (r0 == 0) goto L55
            com.smartdigimkt.q3.c r0 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            r0.f42809O = r1     // Catch: java.lang.Throwable -> Le4
        L55:
            com.smartdigimkt.q3.c r0 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Le4
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> Le4
            r0.f42824h = r2     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.z4.d r0 = com.smartdigimkt.z4.d.c()     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.a5.a r0 = r0.a()     // Catch: java.lang.Throwable -> Le4
            if (r0 == 0) goto Lda
            com.smartdigimkt.q3.c r2 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            boolean r2 = com.smartdigimkt.y3.h.a(r0, r2)     // Catch: java.lang.Throwable -> Le4
            if (r2 == 0) goto L75
            goto Le4
        L75:
            com.smartdigimkt.q3.c r2 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            java.util.Map r3 = r0.f39390u     // Catch: java.lang.Throwable -> Le4
            if (r3 == 0) goto Ld3
            java.lang.String r4 = r2.f42801G     // Catch: java.lang.Throwable -> Le4
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> Le4
            if (r4 == 0) goto L8c
            java.lang.String r2 = r2.f42817a     // Catch: java.lang.Throwable -> Le4
            boolean r2 = r3.containsKey(r2)     // Catch: java.lang.Throwable -> Le4
            if (r2 == 0) goto Ld3
            goto Laa
        L8c:
            java.lang.String r4 = r2.f42817a     // Catch: java.lang.Throwable -> Le4
            boolean r4 = r3.containsKey(r4)     // Catch: java.lang.Throwable -> Le4
            if (r4 == 0) goto Ld3
            java.lang.String r4 = r2.f42817a     // Catch: java.lang.Throwable -> Le4
            java.lang.Object r3 = r3.get(r4)     // Catch: java.lang.Throwable -> Le4
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> Le4
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> Le4
            if (r4 != 0) goto Ld3
            java.lang.String r2 = r2.f42801G     // Catch: java.lang.Throwable -> Le4
            boolean r2 = r3.contains(r2)     // Catch: java.lang.Throwable -> Le4
            if (r2 == 0) goto Ld3
        Laa:
            com.smartdigimkt.sdk.core.SDKContext r0 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> Le4
            android.content.Context r0 = r0.d()     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.y3.m r2 = com.smartdigimkt.y3.m.f45233e     // Catch: java.lang.Throwable -> Le4
            if (r2 != 0) goto Lcb
            java.lang.Class<com.smartdigimkt.y3.m> r2 = com.smartdigimkt.y3.m.class
            monitor-enter(r2)     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.y3.m r3 = com.smartdigimkt.y3.m.f45233e     // Catch: java.lang.Throwable -> Lc5
            if (r3 != 0) goto Lc7
            com.smartdigimkt.y3.m r3 = new com.smartdigimkt.y3.m     // Catch: java.lang.Throwable -> Lc5
            r3.<init>(r0)     // Catch: java.lang.Throwable -> Lc5
            com.smartdigimkt.y3.m.f45233e = r3     // Catch: java.lang.Throwable -> Lc5
            goto Lc7
        Lc5:
            r0 = move-exception
            goto Lc9
        Lc7:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lc5
            goto Lcb
        Lc9:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lc5
            throw r0     // Catch: java.lang.Throwable -> Le4
        Lcb:
            com.smartdigimkt.y3.m r0 = com.smartdigimkt.y3.m.f45233e     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.q3.c r2 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            r0.a(r2, r1)     // Catch: java.lang.Throwable -> Le4
            return
        Ld3:
            com.smartdigimkt.q3.c r1 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            boolean r0 = com.smartdigimkt.y3.h.b(r0, r1)     // Catch: java.lang.Throwable -> Le4
            goto Ldb
        Lda:
            r0 = 0
        Ldb:
            com.smartdigimkt.y3.l r1 = com.smartdigimkt.y3.l.a()     // Catch: java.lang.Throwable -> Le4
            com.smartdigimkt.q3.c r2 = r5.f45201a     // Catch: java.lang.Throwable -> Le4
            r1.a(r2, r0)     // Catch: java.lang.Throwable -> Le4
        Le4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.y3.e.run():void");
    }
}

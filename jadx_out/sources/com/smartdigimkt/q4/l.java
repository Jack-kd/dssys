package com.smartdigimkt.q4;

import java.util.LinkedHashMap;

/* loaded from: classes5.dex */
public final class l extends b {

    /* renamed from: j, reason: collision with root package name */
    public boolean f42865j;

    /* renamed from: k, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f42866k;

    public l(int i2, String str, com.smartdigimkt.m3.k kVar, LinkedHashMap linkedHashMap, com.smartdigimkt.l3.a aVar) {
        super(new com.smartdigimkt.r4.j(i2, kVar, str, linkedHashMap));
        this.f42865j = false;
        this.f42866k = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0018  */
    @Override // com.smartdigimkt.q4.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r8) {
        /*
            r7 = this;
            r0 = 302(0x12e, float:4.23E-43)
            r1 = 0
            if (r8 == r0) goto Ld
            r0 = 301(0x12d, float:4.22E-43)
            if (r8 == r0) goto Ld
            r0 = 307(0x133, float:4.3E-43)
            if (r8 != r0) goto L45
        Ld:
            com.smartdigimkt.r4.d r0 = r7.f42855d
            if (r0 == 0) goto L18
            boolean r2 = r0 instanceof com.smartdigimkt.r4.j     // Catch: java.lang.Throwable -> L18
            if (r2 == 0) goto L18
            com.smartdigimkt.r4.j r0 = (com.smartdigimkt.r4.j) r0     // Catch: java.lang.Throwable -> L18
            goto L19
        L18:
            r0 = r1
        L19:
            if (r0 == 0) goto L45
            boolean r2 = r0.l()
            if (r2 != 0) goto L45
            com.smartdigimkt.m3.k r8 = r0.f43071c
            if (r8 == 0) goto Lb6
            int r1 = r0.f43069a
            java.lang.String r0 = r0.k()
            r2 = 8
            if (r1 != r2) goto L38
            com.smartdigimkt.l3.a r1 = r7.f42866k
            java.lang.String r2 = "1"
            com.smartdigimkt.y3.h.a(r8, r1, r2, r0)
            goto Lb6
        L38:
            r2 = 9
            if (r1 != r2) goto Lb6
            com.smartdigimkt.l3.a r1 = r7.f42866k
            java.lang.String r2 = "2"
            com.smartdigimkt.y3.h.a(r8, r1, r2, r0)
            goto Lb6
        L45:
            boolean r0 = r7.f42865j
            if (r0 == 0) goto Lb6
            com.smartdigimkt.r4.d r0 = r7.f42855d
            r0.k()
            com.smartdigimkt.c0.d r0 = com.smartdigimkt.c0.d.a()
            r0.getClass()
            r0 = 0
            switch(r8) {
                case -1003: goto L5b;
                case -1002: goto L5b;
                case -1001: goto L5b;
                case -1000: goto L5b;
                default: goto L59;
            }
        L59:
            r2 = r0
            goto L5c
        L5b:
            r2 = 1
        L5c:
            if (r2 != 0) goto L6b
            r3 = -99
            if (r8 < r3) goto L66
            r3 = 200(0xc8, float:2.8E-43)
            if (r8 < r3) goto L6d
        L66:
            r3 = 400(0x190, float:5.6E-43)
            if (r8 < r3) goto L6b
            goto L6d
        L6b:
            if (r2 == 0) goto Lb6
        L6d:
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L7d
            com.smartdigimkt.r4.d r2 = r7.f42855d     // Catch: java.lang.Throwable -> L7d
            java.util.Map r2 = r2.e()     // Catch: java.lang.Throwable -> L7d
            r8.<init>(r2)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L7d
            goto L86
        L7d:
            org.json.JSONObject r8 = new org.json.JSONObject
            r8.<init>()
            java.lang.String r8 = r8.toString()
        L86:
            com.smartdigimkt.r4.d r2 = r7.f42855d
            int r2 = r2.j()
            com.smartdigimkt.r4.d r3 = r7.f42855d
            boolean r4 = r3 instanceof com.smartdigimkt.r4.j
            if (r4 == 0) goto L96
            com.smartdigimkt.r4.j r3 = (com.smartdigimkt.r4.j) r3
            com.smartdigimkt.m3.k r1 = r3.f43071c
        L96:
            if (r1 == 0) goto Lb6
            com.smartdigimkt.c0.d r3 = com.smartdigimkt.c0.d.a()
            java.lang.String r4 = r7.f42852a
            long r5 = r1.f42058s0
            monitor-enter(r3)
            com.smartdigimkt.i0.d r1 = new com.smartdigimkt.i0.d     // Catch: java.lang.Throwable -> Lb3
            r1.<init>()     // Catch: java.lang.Throwable -> Lb3
            r1.f40643b = r2     // Catch: java.lang.Throwable -> Lb3
            r1.f40645d = r4     // Catch: java.lang.Throwable -> Lb3
            r1.f40644c = r8     // Catch: java.lang.Throwable -> Lb3
            r1.f40647f = r5     // Catch: java.lang.Throwable -> Lb3
            r3.a(r1, r0)     // Catch: java.lang.Throwable -> Lb3
            monitor-exit(r3)
            goto Lb6
        Lb3:
            r8 = move-exception
            monitor-exit(r3)
            throw r8
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.q4.l.a(int):void");
    }
}

package com.smartdigimkt.y3;

/* loaded from: classes5.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f45239a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f45240b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f45241c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f45242d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f45243e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ s f45244f;

    public p(s sVar, int i2, String str, String str2, String str3, String str4) {
        this.f45244f = sVar;
        this.f45239a = i2;
        this.f45240b = str;
        this.f45241c = str2;
        this.f45242d = str3;
        this.f45243e = str4;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:12|(2:47|13)|(3:49|14|(1:16))|45|29|40|30|31|51) */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.security.NoSuchAlgorithmException {
        /*
            r19 = this;
            r1 = r19
            int r0 = r1.f45239a
            java.lang.String r2 = r1.f45240b
            java.lang.String r3 = r1.f45241c
            java.lang.String r4 = r1.f45242d
            long r5 = java.lang.System.currentTimeMillis()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = r1.f45240b
            r7.append(r8)
            r7.append(r5)
            java.lang.String r8 = r1.f45242d
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            if (r7 == 0) goto L29
            java.lang.String r7 = r1.f45242d
            goto L2b
        L29:
            java.lang.String r7 = ""
        L2b:
            java.lang.String r7 = com.smartdigimkt.c5.i.b(r7)
            java.lang.String r8 = r1.f45243e
            com.smartdigimkt.y3.s r9 = r1.f45244f
            java.lang.String r9 = r9.f45250a
            com.smartdigimkt.sdk.core.SDKContext r9 = com.smartdigimkt.sdk.core.SDKContext.getInstance()
            android.content.Context r9 = r9.d()
            com.smartdigimkt.k3.d r9 = com.smartdigimkt.k3.d.a(r9)
            com.smartdigimkt.k3.j r9 = com.smartdigimkt.k3.j.a(r9)
            monitor-enter(r9)
            android.database.sqlite.SQLiteDatabase r10 = r9.b()     // Catch: java.lang.Throwable -> L78
            if (r10 != 0) goto L4e
            monitor-exit(r9)
            return
        L4e:
            r10 = 0
            android.database.sqlite.SQLiteDatabase r11 = r9.a()     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L7b
            java.lang.String r12 = "request_info"
            r17 = 0
            r18 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            android.database.Cursor r11 = r11.query(r12, r13, r14, r15, r16, r17, r18)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L7b
            int r12 = r11.getCount()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L7c
            r13 = 1000(0x3e8, float:1.401E-42)
            if (r12 < r13) goto L7e
            r9.c()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L7c
            goto L7e
        L6e:
            r0 = move-exception
            r10 = r11
            goto L72
        L71:
            r0 = move-exception
        L72:
            if (r10 == 0) goto L7a
            r10.close()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            goto L7a
        L78:
            r0 = move-exception
            goto Lbe
        L7a:
            throw r0     // Catch: java.lang.Throwable -> L78
        L7b:
            r11 = r10
        L7c:
            if (r11 == 0) goto L81
        L7e:
            r11.close()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L81
        L81:
            android.content.ContentValues r11 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            r11.<init>()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            java.lang.String r12 = "id"
            r11.put(r12, r7)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            java.lang.String r7 = "req_type"
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            r11.put(r7, r0)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            java.lang.String r0 = "req_url"
            r11.put(r0, r2)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            java.lang.String r0 = "req_head"
            r11.put(r0, r3)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            java.lang.String r0 = "req_content"
            r11.put(r0, r4)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            java.lang.String r0 = "time"
            java.lang.Long r2 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            r11.put(r0, r2)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            java.lang.String r0 = "extra"
            r11.put(r0, r8)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            android.database.sqlite.SQLiteDatabase r0 = r9.b()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            java.lang.String r2 = "request_info"
            r0.insert(r2, r10, r11)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> Lbc
            monitor-exit(r9)
            goto Lbd
        Lbc:
            monitor-exit(r9)
        Lbd:
            return
        Lbe:
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.y3.p.run():void");
    }
}

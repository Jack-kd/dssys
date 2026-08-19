package com.smartdigimkt.z3;

/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public a f45439a;

    /* renamed from: b, reason: collision with root package name */
    public long f45440b = 500;

    /* renamed from: c, reason: collision with root package name */
    public boolean f45441c = true;

    /* renamed from: d, reason: collision with root package name */
    public final long f45442d;

    /* renamed from: e, reason: collision with root package name */
    public long f45443e;

    public b(long j2) {
        this.f45442d = j2;
        this.f45443e = j2;
    }

    public abstract void a();

    public abstract void a(long j2);

    /* JADX WARN: Removed duplicated region for block: B:26:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(long r7, long r9) throws java.lang.Throwable {
        /*
            r6 = this;
            monitor-enter(r6)
            r6.f45443e = r7     // Catch: java.lang.Throwable -> L37
            r6.f45440b = r9     // Catch: java.lang.Throwable -> L37
            long r7 = r6.f45442d     // Catch: java.lang.Throwable -> L37
            r0 = 0
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r7 <= 0) goto L3a
            int r7 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r7 <= 0) goto L3a
            boolean r7 = r6.f45441c     // Catch: java.lang.Throwable -> L37
            if (r7 != 0) goto L1d
            r6.c()     // Catch: java.lang.Throwable -> L19
            goto L1d
        L19:
            r0 = move-exception
            r7 = r0
            r1 = r6
            goto L3d
        L1d:
            boolean r7 = r6.f45441c     // Catch: java.lang.Throwable -> L37
            if (r7 == 0) goto L3a
            com.smartdigimkt.z3.a r0 = new com.smartdigimkt.z3.a     // Catch: java.lang.Throwable -> L37
            long r2 = r6.f45443e     // Catch: java.lang.Throwable -> L37
            long r4 = r6.f45440b     // Catch: java.lang.Throwable -> L37
            r1 = r6
            r0.<init>(r1, r2, r4)     // Catch: java.lang.Throwable -> L34
            r1.f45439a = r0     // Catch: java.lang.Throwable -> L34
            r0.start()     // Catch: java.lang.Throwable -> L30
        L30:
            r7 = 0
            r1.f45441c = r7     // Catch: java.lang.Throwable -> L34
            goto L3b
        L34:
            r0 = move-exception
        L35:
            r7 = r0
            goto L3d
        L37:
            r0 = move-exception
            r1 = r6
            goto L35
        L3a:
            r1 = r6
        L3b:
            monitor-exit(r6)
            return
        L3d:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L34
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.z3.b.a(long, long):void");
    }

    public final void b() {
        if (this.f45441c) {
            return;
        }
        try {
            this.f45439a.cancel();
        } catch (Throwable unused) {
        }
        this.f45441c = true;
    }

    public final void c() {
        try {
            this.f45439a.cancel();
        } catch (Throwable unused) {
        }
        this.f45441c = true;
        this.f45443e = this.f45442d;
    }
}

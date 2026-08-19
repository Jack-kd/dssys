package com.anythink.core.common.n.c;

import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* loaded from: classes2.dex */
public final class k implements v {

    /* renamed from: a, reason: collision with root package name */
    private final d f7082a;

    /* renamed from: b, reason: collision with root package name */
    private final Deflater f7083b;

    /* renamed from: c, reason: collision with root package name */
    private final g f7084c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f7085d;

    /* renamed from: e, reason: collision with root package name */
    private final CRC32 f7086e = new CRC32();

    private k(v vVar) {
        if (vVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        Deflater deflater = new Deflater(-1, true);
        this.f7083b = deflater;
        d dVarA = n.a(vVar);
        this.f7082a = dVarA;
        this.f7084c = new g(dVarA, deflater);
        c cVarC = dVarA.c();
        cVarC.k(8075);
        cVarC.l(8);
        cVarC.l(0);
        cVarC.i(0);
        cVarC.l(0);
        cVarC.l(0);
    }

    private Deflater b() {
        return this.f7083b;
    }

    private void c() {
        c cVarC = this.f7082a.c();
        cVarC.k(8075);
        cVarC.l(8);
        cVarC.l(0);
        cVarC.i(0);
        cVarC.l(0);
        cVarC.l(0);
    }

    private void d() {
        this.f7082a.h((int) this.f7086e.getValue());
        this.f7082a.h((int) this.f7083b.getBytesRead());
    }

    @Override // com.anythink.core.common.n.c.v
    public final void a(c cVar, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (j2 == 0) {
            return;
        }
        b(cVar, j2);
        this.f7084c.a(cVar, j2);
    }

    @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        if (this.f7085d) {
            return;
        }
        try {
            this.f7084c.b();
            this.f7082a.h((int) this.f7086e.getValue());
            this.f7082a.h((int) this.f7083b.getBytesRead());
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f7083b.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f7082a.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f7085d = true;
        if (th != null) {
            y.a(th);
        }
    }

    @Override // com.anythink.core.common.n.c.v, java.io.Flushable
    public final void flush() {
        this.f7084c.flush();
    }

    private void b(c cVar, long j2) {
        s sVar = cVar.f7059b;
        while (j2 > 0) {
            int iMin = (int) Math.min(j2, sVar.f7130e - sVar.f7129d);
            this.f7086e.update(sVar.f7128c, sVar.f7129d, iMin);
            j2 -= iMin;
            sVar = sVar.f7133h;
        }
    }

    @Override // com.anythink.core.common.n.c.v
    public final x a() {
        return this.f7082a.a();
    }
}

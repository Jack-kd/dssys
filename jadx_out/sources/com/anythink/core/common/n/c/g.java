package com.anythink.core.common.n.c;

import java.util.zip.Deflater;

/* loaded from: classes2.dex */
public final class g implements v {

    /* renamed from: a, reason: collision with root package name */
    private final d f7076a;

    /* renamed from: b, reason: collision with root package name */
    private final Deflater f7077b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f7078c;

    private g(v vVar, Deflater deflater) {
        this(n.a(vVar), deflater);
    }

    @Override // com.anythink.core.common.n.c.v
    public final void a(c cVar, long j2) {
        y.a(cVar.f7060c, 0L, j2);
        while (j2 > 0) {
            s sVar = cVar.f7059b;
            int iMin = (int) Math.min(j2, sVar.f7130e - sVar.f7129d);
            this.f7077b.setInput(sVar.f7128c, sVar.f7129d, iMin);
            a(false);
            long j3 = iMin;
            cVar.f7060c -= j3;
            int i2 = sVar.f7129d + iMin;
            sVar.f7129d = i2;
            if (i2 == sVar.f7130e) {
                cVar.f7059b = sVar.c();
                t.a(sVar);
            }
            j2 -= j3;
        }
    }

    public final void b() {
        this.f7077b.finish();
        a(false);
    }

    @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        if (this.f7078c) {
            return;
        }
        try {
            b();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f7077b.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f7076a.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f7078c = true;
        if (th != null) {
            y.a(th);
        }
    }

    @Override // com.anythink.core.common.n.c.v, java.io.Flushable
    public final void flush() {
        a(true);
        this.f7076a.flush();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f7076a + ")";
    }

    public g(d dVar, Deflater deflater) {
        if (dVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f7076a = dVar;
        this.f7077b = deflater;
    }

    private void a(boolean z2) {
        s sVarG;
        int iDeflate;
        c cVarC = this.f7076a.c();
        while (true) {
            sVarG = cVarC.g(1);
            if (z2) {
                Deflater deflater = this.f7077b;
                byte[] bArr = sVarG.f7128c;
                int i2 = sVarG.f7130e;
                iDeflate = deflater.deflate(bArr, i2, 8192 - i2, 2);
            } else {
                Deflater deflater2 = this.f7077b;
                byte[] bArr2 = sVarG.f7128c;
                int i3 = sVarG.f7130e;
                iDeflate = deflater2.deflate(bArr2, i3, 8192 - i3);
            }
            if (iDeflate > 0) {
                sVarG.f7130e += iDeflate;
                cVarC.f7060c += iDeflate;
                this.f7076a.A();
            } else if (this.f7077b.needsInput()) {
                break;
            }
        }
        if (sVarG.f7129d == sVarG.f7130e) {
            cVarC.f7059b = sVarG.c();
            t.a(sVarG);
        }
    }

    @Override // com.anythink.core.common.n.c.v
    public final x a() {
        return this.f7076a.a();
    }
}

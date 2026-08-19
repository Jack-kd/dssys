package org.eclipse.jetty.client;

import org.eclipse.jetty.io.Buffers;

/* loaded from: classes5.dex */
public class c extends a implements org.eclipse.jetty.io.nio.a {

    /* renamed from: t, reason: collision with root package name */
    public static final R1.c f52077t = R1.b.a(c.class);

    /* renamed from: q, reason: collision with root package name */
    public boolean f52078q;

    /* renamed from: r, reason: collision with root package name */
    public L1.d f52079r;

    /* renamed from: s, reason: collision with root package name */
    public final L1.c f52080s;

    public c(Buffers buffers, Buffers buffers2, L1.k kVar) {
        super(buffers, buffers2, kVar);
        this.f52080s = (L1.c) kVar;
    }

    @Override // org.eclipse.jetty.io.nio.a
    public void c() {
        if (this.f52060f.isIdle()) {
            this.f221c.j();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01f1  */
    /* JADX WARN: Type inference failed for: r2v15, types: [L1.j] */
    /* JADX WARN: Type inference failed for: r2v32, types: [L1.j] */
    /* JADX WARN: Type inference failed for: r5v26, types: [L1.j] */
    @Override // L1.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public L1.j handle() {
        /*
            Method dump skipped, instructions count: 889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.c.handle():L1.j");
    }

    @Override // org.eclipse.jetty.client.a
    public void p() {
        this.f52078q = false;
        super.p();
    }

    @Override // org.eclipse.jetty.client.a
    public boolean q(j jVar) {
        boolean zQ = super.q(jVar);
        if (zQ) {
            this.f52080s.q();
        }
        return zQ;
    }
}

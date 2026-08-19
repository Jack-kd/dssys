package org.eclipse.jetty.client;

import java.io.IOException;
import org.eclipse.jetty.io.Buffers;

/* loaded from: classes5.dex */
public class d extends a {

    /* renamed from: t, reason: collision with root package name */
    public static final R1.c f52081t = R1.b.a(d.class);

    /* renamed from: q, reason: collision with root package name */
    public boolean f52082q;

    /* renamed from: r, reason: collision with root package name */
    public L1.d f52083r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f52084s;

    public d(Buffers buffers, Buffers buffers2, L1.k kVar) {
        super(buffers, buffers2, kVar);
        this.f52084s = false;
    }

    @Override // L1.b, L1.j
    public void a(long j2) {
        try {
            f52081t.i("onIdleExpired {}ms {} {}", Long.valueOf(j2), this, this.f221c);
            this.f52084s = true;
            this.f221c.close();
        } catch (IOException e2) {
            f52081t.h(e2);
            try {
                this.f221c.close();
            } catch (IOException e3) {
                f52081t.h(e3);
            }
        }
        synchronized (this) {
            notifyAll();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
    
        throw new java.lang.InterruptedException();
     */
    @Override // L1.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public L1.j handle() {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.d.handle():L1.j");
    }

    @Override // org.eclipse.jetty.client.a
    public void n(j jVar) {
        synchronized (this) {
            super.n(jVar);
            this.f52084s = true;
            notifyAll();
        }
    }

    @Override // org.eclipse.jetty.client.a
    public void p() {
        this.f52082q = false;
        this.f52084s = false;
        super.p();
    }

    @Override // org.eclipse.jetty.client.a
    public boolean q(j jVar) {
        boolean zQ = super.q(jVar);
        if (!zQ) {
            return zQ;
        }
        synchronized (this) {
            notifyAll();
        }
        return zQ;
    }
}

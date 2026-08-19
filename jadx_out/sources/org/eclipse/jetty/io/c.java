package org.eclipse.jetty.io;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.eclipse.jetty.io.Buffers;

/* loaded from: classes5.dex */
public class c extends a {

    /* renamed from: f, reason: collision with root package name */
    public final Queue f52394f;

    /* renamed from: g, reason: collision with root package name */
    public final Queue f52395g;

    /* renamed from: h, reason: collision with root package name */
    public final Queue f52396h;

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f52397i;

    /* renamed from: j, reason: collision with root package name */
    public final int f52398j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f52399k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f52400l;

    public c(Buffers.Type type, int i2, Buffers.Type type2, int i3, Buffers.Type type3, int i4) {
        super(type, i2, type2, i3, type3);
        this.f52397i = new AtomicInteger();
        this.f52394f = new ConcurrentLinkedQueue();
        this.f52395g = new ConcurrentLinkedQueue();
        this.f52396h = new ConcurrentLinkedQueue();
        this.f52399k = type == type3;
        this.f52400l = type2 == type3;
        this.f52398j = i4;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public L1.d a(int i2) {
        if (this.f52399k && i2 == d()) {
            return getHeader();
        }
        if (this.f52400l && i2 == c()) {
            return getBuffer();
        }
        L1.d dVar = (L1.d) this.f52396h.poll();
        while (dVar != null && dVar.w0() != i2) {
            this.f52397i.decrementAndGet();
            dVar = (L1.d) this.f52396h.poll();
        }
        if (dVar == null) {
            return h(i2);
        }
        this.f52397i.decrementAndGet();
        return dVar;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public void b(L1.d dVar) {
        dVar.clear();
        if (dVar.y0() || dVar.s0()) {
            return;
        }
        if (this.f52397i.incrementAndGet() > this.f52398j) {
            this.f52397i.decrementAndGet();
            return;
        }
        if (f(dVar)) {
            this.f52394f.add(dVar);
        } else if (e(dVar)) {
            this.f52395g.add(dVar);
        } else {
            this.f52396h.add(dVar);
        }
    }

    @Override // org.eclipse.jetty.io.Buffers
    public L1.d getBuffer() {
        L1.d dVar = (L1.d) this.f52395g.poll();
        if (dVar == null) {
            return g();
        }
        this.f52397i.decrementAndGet();
        return dVar;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public L1.d getHeader() {
        L1.d dVar = (L1.d) this.f52394f.poll();
        if (dVar == null) {
            return i();
        }
        this.f52397i.decrementAndGet();
        return dVar;
    }

    public String toString() {
        return String.format("%s [%d/%d@%d,%d/%d@%d,%d/%d@-]", getClass().getSimpleName(), Integer.valueOf(this.f52394f.size()), Integer.valueOf(this.f52398j), Integer.valueOf(this.f52380b), Integer.valueOf(this.f52395g.size()), Integer.valueOf(this.f52398j), Integer.valueOf(this.f52382d), Integer.valueOf(this.f52396h.size()), Integer.valueOf(this.f52398j));
    }
}

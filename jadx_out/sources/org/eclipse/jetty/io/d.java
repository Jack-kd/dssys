package org.eclipse.jetty.io;

import org.eclipse.jetty.io.Buffers;

/* loaded from: classes5.dex */
public class d extends org.eclipse.jetty.io.a {

    /* renamed from: f, reason: collision with root package name */
    public final ThreadLocal f52401f;

    public class a extends ThreadLocal {
        public a() {
        }

        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public b initialValue() {
            return new b();
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public L1.d f52403a;

        /* renamed from: b, reason: collision with root package name */
        public L1.d f52404b;

        /* renamed from: c, reason: collision with root package name */
        public L1.d f52405c;
    }

    public d(Buffers.Type type, int i2, Buffers.Type type2, int i3, Buffers.Type type3) {
        super(type, i2, type2, i3, type3);
        this.f52401f = new a();
    }

    @Override // org.eclipse.jetty.io.Buffers
    public L1.d a(int i2) {
        b bVar = (b) this.f52401f.get();
        L1.d dVar = bVar.f52405c;
        if (dVar == null || dVar.w0() != i2) {
            return h(i2);
        }
        L1.d dVar2 = bVar.f52405c;
        bVar.f52405c = null;
        return dVar2;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public void b(L1.d dVar) {
        dVar.clear();
        if (dVar.y0() || dVar.s0()) {
            return;
        }
        b bVar = (b) this.f52401f.get();
        if (bVar.f52404b == null && f(dVar)) {
            bVar.f52404b = dVar;
        } else if (bVar.f52403a == null && e(dVar)) {
            bVar.f52403a = dVar;
        } else {
            bVar.f52405c = dVar;
        }
    }

    @Override // org.eclipse.jetty.io.Buffers
    public L1.d getBuffer() {
        b bVar = (b) this.f52401f.get();
        L1.d dVar = bVar.f52403a;
        if (dVar != null) {
            bVar.f52403a = null;
            return dVar;
        }
        L1.d dVar2 = bVar.f52405c;
        if (dVar2 == null || !e(dVar2)) {
            return g();
        }
        L1.d dVar3 = bVar.f52405c;
        bVar.f52405c = null;
        return dVar3;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public L1.d getHeader() {
        b bVar = (b) this.f52401f.get();
        L1.d dVar = bVar.f52404b;
        if (dVar != null) {
            bVar.f52404b = null;
            return dVar;
        }
        L1.d dVar2 = bVar.f52405c;
        if (dVar2 == null || !f(dVar2)) {
            return i();
        }
        L1.d dVar3 = bVar.f52405c;
        bVar.f52405c = null;
        return dVar3;
    }

    public String toString() {
        return "{{" + d() + "," + c() + "}}";
    }
}

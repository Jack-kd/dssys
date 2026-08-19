package com.anythink.core.common.n.c;

/* loaded from: classes2.dex */
public abstract class h implements v {

    /* renamed from: a, reason: collision with root package name */
    private final v f7079a;

    public h(v vVar) {
        if (vVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f7079a = vVar;
    }

    private v b() {
        return this.f7079a;
    }

    @Override // com.anythink.core.common.n.c.v
    public void a(c cVar, long j2) {
        this.f7079a.a(cVar, j2);
    }

    @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f7079a.close();
    }

    @Override // com.anythink.core.common.n.c.v, java.io.Flushable
    public void flush() {
        this.f7079a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f7079a.toString() + ")";
    }

    @Override // com.anythink.core.common.n.c.v
    public final x a() {
        return this.f7079a.a();
    }
}

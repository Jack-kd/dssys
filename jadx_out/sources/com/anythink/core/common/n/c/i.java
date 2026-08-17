package com.anythink.core.common.n.c;

/* loaded from: classes2.dex */
public abstract class i implements w {

    /* renamed from: a, reason: collision with root package name */
    private final w f7080a;

    public i(w wVar) {
        if (wVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f7080a = wVar;
    }

    @Override // com.anythink.core.common.n.c.w
    public final x a() {
        return this.f7080a.a();
    }

    @Override // com.anythink.core.common.n.c.w
    public long a_(c cVar, long j2) {
        return this.f7080a.a_(cVar, j2);
    }

    public final w b() {
        return this.f7080a;
    }

    @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f7080a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f7080a.toString() + ")";
    }
}

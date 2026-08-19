package com.anythink.core.common.n.c;

/* loaded from: classes2.dex */
final class p implements w {

    /* renamed from: a, reason: collision with root package name */
    private final e f7112a;

    /* renamed from: b, reason: collision with root package name */
    private final c f7113b;

    /* renamed from: c, reason: collision with root package name */
    private s f7114c;

    /* renamed from: d, reason: collision with root package name */
    private int f7115d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f7116e;

    /* renamed from: f, reason: collision with root package name */
    private long f7117f;

    public p(e eVar) {
        this.f7112a = eVar;
        c cVarC = eVar.c();
        this.f7113b = cVarC;
        s sVar = cVarC.f7059b;
        this.f7114c = sVar;
        this.f7115d = sVar != null ? sVar.f7129d : -1;
    }

    @Override // com.anythink.core.common.n.c.w
    public final x a() {
        return this.f7112a.a();
    }

    @Override // com.anythink.core.common.n.c.w
    public final long a_(c cVar, long j2) {
        s sVar;
        s sVar2;
        if (this.f7116e) {
            throw new IllegalStateException("closed");
        }
        s sVar3 = this.f7114c;
        if (sVar3 != null && (sVar3 != (sVar2 = this.f7113b.f7059b) || this.f7115d != sVar2.f7129d)) {
            throw new IllegalStateException("Peek source is invalid because upstream source was used");
        }
        this.f7112a.b(this.f7117f + j2);
        if (this.f7114c == null && (sVar = this.f7113b.f7059b) != null) {
            this.f7114c = sVar;
            this.f7115d = sVar.f7129d;
        }
        long jMin = Math.min(j2, this.f7113b.f7060c - this.f7117f);
        if (jMin <= 0) {
            return -1L;
        }
        this.f7113b.a(cVar, this.f7117f, jMin);
        this.f7117f += jMin;
        return jMin;
    }

    @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f7116e = true;
    }
}

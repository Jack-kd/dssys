package com.anythink.core.common.u.b;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private final f f7824a;

    /* renamed from: b, reason: collision with root package name */
    private volatile c f7825b;

    /* renamed from: c, reason: collision with root package name */
    private volatile b f7826c;

    public d(f fVar) {
        this.f7824a = fVar;
    }

    public final a a() {
        if (this.f7825b == null) {
            synchronized (this) {
                try {
                    if (this.f7825b == null) {
                        this.f7825b = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f7825b;
    }

    public final a b() {
        if (this.f7826c == null) {
            synchronized (this) {
                try {
                    if (this.f7826c == null) {
                        this.f7826c = new b(this.f7824a);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f7826c;
    }
}

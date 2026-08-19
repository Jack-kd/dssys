package com.anythink.core.common.v;

/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private volatile boolean f8050a;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f8053d;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f8055f;

    /* renamed from: b, reason: collision with root package name */
    private final com.anythink.core.common.t.a f8051b = com.anythink.core.common.t.c.a();

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.v.b.d f8052c = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dl, new Runnable() { // from class: com.anythink.core.common.v.b.1
        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.f8050a) {
                return;
            }
            b.b(b.this);
            b.this.d();
        }
    });

    /* renamed from: e, reason: collision with root package name */
    private final com.anythink.core.common.v.b.d f8054e = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dm, new Runnable() { // from class: com.anythink.core.common.v.b.2
        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.f8053d) {
                return;
            }
            b.d(b.this);
            b.this.e();
        }
    });

    /* renamed from: g, reason: collision with root package name */
    private final com.anythink.core.common.v.b.d f8056g = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dn, new Runnable() { // from class: com.anythink.core.common.v.b.3
        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.f8055f) {
                return;
            }
            b.f(b.this);
            b.this.f();
        }
    });

    public static /* synthetic */ boolean b(b bVar) {
        bVar.f8050a = true;
        return true;
    }

    public static /* synthetic */ boolean d(b bVar) {
        bVar.f8053d = true;
        return true;
    }

    public static /* synthetic */ boolean f(b bVar) {
        bVar.f8055f = true;
        return true;
    }

    private boolean h() {
        return this.f8050a;
    }

    private boolean i() {
        return this.f8055f;
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final synchronized void g() {
        this.f8051b.a(this.f8056g);
    }

    public final synchronized void a(long j2) {
        this.f8051b.a(this.f8052c, j2);
    }

    public final synchronized void b(long j2) {
        this.f8051b.a(this.f8054e, j2);
    }

    public final boolean c() {
        return this.f8053d;
    }

    public final synchronized void c(long j2) {
        this.f8051b.a(this.f8056g, j2);
    }

    public final synchronized void a() {
        this.f8051b.a(this.f8052c);
    }

    public final synchronized void b() {
        this.f8051b.a(this.f8054e);
    }
}

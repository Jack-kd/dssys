package com.anythink.core.common.n.b.a.c;

import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.w;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class g implements w.a {

    /* renamed from: a, reason: collision with root package name */
    private final List<w> f6238a;

    /* renamed from: b, reason: collision with root package name */
    private final com.anythink.core.common.n.b.a.b.j f6239b;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.n.b.a.b.c f6240c;

    /* renamed from: d, reason: collision with root package name */
    private final int f6241d;

    /* renamed from: e, reason: collision with root package name */
    private final ad f6242e;

    /* renamed from: f, reason: collision with root package name */
    private final com.anythink.core.common.n.b.e f6243f;

    /* renamed from: g, reason: collision with root package name */
    private final int f6244g;

    /* renamed from: h, reason: collision with root package name */
    private final int f6245h;

    /* renamed from: i, reason: collision with root package name */
    private final int f6246i;

    /* renamed from: j, reason: collision with root package name */
    private int f6247j;

    public g(List<w> list, com.anythink.core.common.n.b.a.b.j jVar, com.anythink.core.common.n.b.a.b.c cVar, int i2, ad adVar, com.anythink.core.common.n.b.e eVar, int i3, int i4, int i5) {
        this.f6238a = list;
        this.f6239b = jVar;
        this.f6240c = cVar;
        this.f6241d = i2;
        this.f6242e = adVar;
        this.f6243f = eVar;
        this.f6244g = i3;
        this.f6245h = i4;
        this.f6246i = i5;
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final w.a a(int i2, TimeUnit timeUnit) {
        return new g(this.f6238a, this.f6239b, this.f6240c, this.f6241d, this.f6242e, this.f6243f, com.anythink.core.common.n.b.a.c.a("timeout", i2, timeUnit), this.f6245h, this.f6246i);
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final com.anythink.core.common.n.b.j b() {
        com.anythink.core.common.n.b.a.b.c cVar = this.f6240c;
        if (cVar != null) {
            return cVar.a();
        }
        return null;
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final w.a c(int i2, TimeUnit timeUnit) {
        return new g(this.f6238a, this.f6239b, this.f6240c, this.f6241d, this.f6242e, this.f6243f, this.f6244g, this.f6245h, com.anythink.core.common.n.b.a.c.a("timeout", i2, timeUnit));
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final int d() {
        return this.f6244g;
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final int e() {
        return this.f6245h;
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final int f() {
        return this.f6246i;
    }

    public final com.anythink.core.common.n.b.a.b.j g() {
        return this.f6239b;
    }

    public final com.anythink.core.common.n.b.a.b.c h() {
        com.anythink.core.common.n.b.a.b.c cVar = this.f6240c;
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalStateException();
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final w.a b(int i2, TimeUnit timeUnit) {
        return new g(this.f6238a, this.f6239b, this.f6240c, this.f6241d, this.f6242e, this.f6243f, this.f6244g, com.anythink.core.common.n.b.a.c.a("timeout", i2, timeUnit), this.f6246i);
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final ad a() {
        return this.f6242e;
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final com.anythink.core.common.n.b.e c() {
        return this.f6243f;
    }

    @Override // com.anythink.core.common.n.b.w.a
    public final af a(ad adVar) {
        return a(adVar, this.f6239b, this.f6240c);
    }

    public final af a(ad adVar, com.anythink.core.common.n.b.a.b.j jVar, com.anythink.core.common.n.b.a.b.c cVar) {
        if (this.f6241d < this.f6238a.size()) {
            this.f6247j++;
            com.anythink.core.common.n.b.a.b.c cVar2 = this.f6240c;
            if (cVar2 != null && !cVar2.a().a(adVar.a())) {
                throw new IllegalStateException("network interceptor " + this.f6238a.get(this.f6241d - 1) + " must retain the same host and port");
            }
            if (this.f6240c != null && this.f6247j > 1) {
                throw new IllegalStateException("network interceptor " + this.f6238a.get(this.f6241d - 1) + " must call proceed() exactly once");
            }
            g gVar = new g(this.f6238a, jVar, cVar, this.f6241d + 1, adVar, this.f6243f, this.f6244g, this.f6245h, this.f6246i);
            w wVar = this.f6238a.get(this.f6241d);
            af afVarA = wVar.a(gVar);
            if (cVar != null && this.f6241d + 1 < this.f6238a.size() && gVar.f6247j != 1) {
                throw new IllegalStateException("network interceptor " + wVar + " must call proceed() exactly once");
            }
            if (afVarA == null) {
                throw new NullPointerException("interceptor " + wVar + " returned null");
            }
            if (afVarA.g() != null) {
                return afVarA;
            }
            throw new IllegalStateException("interceptor " + wVar + " returned a response with no body");
        }
        throw new AssertionError();
    }
}

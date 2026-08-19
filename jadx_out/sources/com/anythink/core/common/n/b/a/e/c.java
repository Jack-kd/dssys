package com.anythink.core.common.n.b.a.e;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public static final String f6306b = ":status";

    /* renamed from: c, reason: collision with root package name */
    public static final String f6307c = ":method";

    /* renamed from: d, reason: collision with root package name */
    public static final String f6308d = ":path";

    /* renamed from: e, reason: collision with root package name */
    public static final String f6309e = ":scheme";

    /* renamed from: f, reason: collision with root package name */
    public static final String f6310f = ":authority";

    /* renamed from: l, reason: collision with root package name */
    public final com.anythink.core.common.n.c.f f6316l;

    /* renamed from: m, reason: collision with root package name */
    public final com.anythink.core.common.n.c.f f6317m;

    /* renamed from: n, reason: collision with root package name */
    final int f6318n;

    /* renamed from: a, reason: collision with root package name */
    public static final com.anythink.core.common.n.c.f f6305a = com.anythink.core.common.n.c.f.a(":");

    /* renamed from: g, reason: collision with root package name */
    public static final com.anythink.core.common.n.c.f f6311g = com.anythink.core.common.n.c.f.a(":status");

    /* renamed from: h, reason: collision with root package name */
    public static final com.anythink.core.common.n.c.f f6312h = com.anythink.core.common.n.c.f.a(":method");

    /* renamed from: i, reason: collision with root package name */
    public static final com.anythink.core.common.n.c.f f6313i = com.anythink.core.common.n.c.f.a(":path");

    /* renamed from: j, reason: collision with root package name */
    public static final com.anythink.core.common.n.c.f f6314j = com.anythink.core.common.n.c.f.a(":scheme");

    /* renamed from: k, reason: collision with root package name */
    public static final com.anythink.core.common.n.c.f f6315k = com.anythink.core.common.n.c.f.a(":authority");

    public c(String str, String str2) {
        this(com.anythink.core.common.n.c.f.a(str), com.anythink.core.common.n.c.f.a(str2));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (this.f6316l.equals(cVar.f6316l) && this.f6317m.equals(cVar.f6317m)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f6316l.hashCode() + 527) * 31) + this.f6317m.hashCode();
    }

    public final String toString() {
        return com.anythink.core.common.n.b.a.c.a("%s: %s", this.f6316l.a(), this.f6317m.a());
    }

    public c(com.anythink.core.common.n.c.f fVar, String str) {
        this(fVar, com.anythink.core.common.n.c.f.a(str));
    }

    public c(com.anythink.core.common.n.c.f fVar, com.anythink.core.common.n.c.f fVar2) {
        this.f6316l = fVar;
        this.f6317m = fVar2;
        this.f6318n = fVar.j() + 32 + fVar2.j();
    }
}

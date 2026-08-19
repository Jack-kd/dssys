package com.byazt.ndb;

@com.byazt.kj.hp(hp = {0, 1, 832, 54})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public a f23535a;
    public a eb;
    public final byte[] hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f23536j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f23537l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f23538w;

    public a() {
        this.hp = new byte[8192];
        this.f23538w = true;
        this.f23536j = false;
    }

    public final a hp() {
        this.f23536j = true;
        return new a(this.hp, this.f23537l, this.jx, true, false);
    }

    public final a l() {
        a aVar = this.f23535a;
        a aVar2 = aVar != this ? aVar : null;
        a aVar3 = this.eb;
        if (aVar3 != null) {
            aVar3.f23535a = aVar;
        }
        a aVar4 = this.f23535a;
        if (aVar4 != null) {
            aVar4.eb = aVar3;
        }
        this.f23535a = null;
        this.eb = null;
        return aVar2;
    }

    public final a hp(a aVar) {
        aVar.eb = this;
        aVar.f23535a = this.f23535a;
        this.f23535a.eb = aVar;
        this.f23535a = aVar;
        return aVar;
    }

    public a(byte[] bArr, int i2, int i3, boolean z2, boolean z3) {
        this.hp = bArr;
        this.f23537l = i2;
        this.jx = i3;
        this.f23536j = z2;
        this.f23538w = z3;
    }
}

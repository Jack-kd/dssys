package com.byazt.jw;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1659, 28})
/* loaded from: classes.dex */
public class hp implements w {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.yc.hp f21709a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.yc.hp f21710e;
    public com.byazt.yc.hp eb;
    public boolean gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public String f21711j;
    public j jl;
    public gu jx;

    /* renamed from: k, reason: collision with root package name */
    public int f21712k;

    /* renamed from: l, reason: collision with root package name */
    public a f21713l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.yc.hp f21714q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.yc.hp f21715s;

    /* renamed from: u, reason: collision with root package name */
    public int f21716u;

    /* renamed from: v, reason: collision with root package name */
    public int f21717v;

    /* renamed from: w, reason: collision with root package name */
    public Context f21718w;
    public AtomicBoolean zy;

    @com.byazt.kj.hp(hp = {0, 1, 1659, 170})
    /* renamed from: com.byazt.jw.hp$hp, reason: collision with other inner class name */
    public static class C0286hp {

        /* renamed from: a, reason: collision with root package name */
        public boolean f21719a;
        public j eb;
        public gu hp;

        /* renamed from: j, reason: collision with root package name */
        public com.byazt.yc.hp f21721j;
        public String jl;
        public com.byazt.yc.hp jx;

        /* renamed from: l, reason: collision with root package name */
        public com.byazt.yc.hp f21723l;

        /* renamed from: s, reason: collision with root package name */
        public a f21725s;

        /* renamed from: w, reason: collision with root package name */
        public com.byazt.yc.hp f21727w;
        public Context zy;

        /* renamed from: q, reason: collision with root package name */
        public final AtomicBoolean f21724q = new AtomicBoolean(false);

        /* renamed from: e, reason: collision with root package name */
        public int f21720e = 5000;
        public int gu = 10;

        /* renamed from: k, reason: collision with root package name */
        public int f21722k = -1;

        /* renamed from: v, reason: collision with root package name */
        public int f21726v = -1;

        public C0286hp hp(Context context) {
            this.zy = context;
            return this;
        }

        public C0286hp jx(com.byazt.yc.hp hpVar) {
            this.f21721j = hpVar;
            return this;
        }

        public C0286hp l(boolean z2) {
            this.f21719a = z2;
            return this;
        }

        public C0286hp hp(String str) {
            this.jl = str;
            return this;
        }

        public C0286hp l(com.byazt.yc.hp hpVar) {
            this.jx = hpVar;
            return this;
        }

        public C0286hp hp(int i2) {
            this.f21722k = i2;
            return this;
        }

        public C0286hp l(int i2) {
            this.f21726v = i2;
            return this;
        }

        public C0286hp hp(boolean z2) {
            this.f21724q.set(z2);
            return this;
        }

        public C0286hp hp(a aVar) {
            this.f21725s = aVar;
            return this;
        }

        public C0286hp hp(j jVar) {
            this.eb = jVar;
            return this;
        }

        public C0286hp hp(com.byazt.yc.hp hpVar) {
            this.f21723l = hpVar;
            return this;
        }

        public C0286hp hp(gu guVar) {
            this.hp = guVar;
            return this;
        }

        public hp hp() {
            hp hpVar = new hp();
            hpVar.jx = this.hp;
            hpVar.f21709a = this.f21723l;
            hpVar.eb = this.jx;
            hpVar.f21715s = this.f21721j;
            hpVar.f21714q = this.f21727w;
            hpVar.gu = this.f21719a;
            hpVar.jl = this.eb;
            hpVar.f21713l = this.f21725s;
            hpVar.zy = this.f21724q;
            hpVar.f21711j = this.jl;
            hpVar.f21718w = this.zy;
            hpVar.f21717v = this.gu;
            hpVar.f21712k = this.f21720e;
            hpVar.f21716u = this.f21722k;
            hpVar.hp = this.f21726v;
            return hpVar;
        }
    }

    @Override // com.byazt.jw.w
    public com.byazt.yc.hp a() {
        return this.f21710e;
    }

    @Override // com.byazt.jw.w
    public gu e() {
        return this.jx;
    }

    @Override // com.byazt.jw.w
    public com.byazt.yc.hp eb() {
        return this.f21709a;
    }

    @Override // com.byazt.jw.w
    public Context getContext() {
        return this.f21718w;
    }

    @Override // com.byazt.jw.w
    public boolean gu() {
        return this.gu;
    }

    @Override // com.byazt.jw.w
    public int jl() {
        return this.f21716u;
    }

    @Override // com.byazt.jw.w
    public com.byazt.yc.hp q() {
        return this.f21715s;
    }

    @Override // com.byazt.jw.w
    public com.byazt.yc.hp s() {
        return this.eb;
    }

    @Override // com.byazt.jw.w
    public String w() {
        return this.f21711j;
    }

    @Override // com.byazt.jw.w
    public int zy() {
        return this.hp;
    }

    private hp() {
        this.zy = new AtomicBoolean(false);
        this.f21712k = 200;
        this.f21717v = 10;
        this.f21716u = -1;
        this.hp = -1;
    }

    @Override // com.byazt.jw.w
    public j j() {
        return this.jl;
    }

    @Override // com.byazt.jw.w
    public boolean jx() {
        return this.zy.get();
    }

    @Override // com.byazt.jw.w
    public a l() {
        return this.f21713l;
    }

    @Override // com.byazt.jw.w
    public com.byazt.yc.hp hp() {
        return this.f21714q;
    }

    @Override // com.byazt.jw.w
    public void hp(a aVar) {
        this.f21713l = aVar;
    }

    @Override // com.byazt.jw.w
    public void hp(boolean z2) {
        this.zy.set(z2);
    }
}

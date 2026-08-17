package com.byazt.ym;

import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {

    /* renamed from: a, reason: collision with root package name */
    public final String f28046a;

    /* renamed from: e, reason: collision with root package name */
    public volatile int f28047e;
    public final boolean eb;
    public volatile Function gu;
    public final Class<Object> hp;

    /* renamed from: j, reason: collision with root package name */
    public final int f28048j;
    public volatile Map<com.byazt.pg.hp, Object> jl;
    public final int jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile int f28049k;

    /* renamed from: l, reason: collision with root package name */
    public final Class<Object> f28050l;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f28051q;

    /* renamed from: s, reason: collision with root package name */
    public final int[] f28052s;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f28053w;
    public volatile Object zy;

    public gu(Class cls, Class cls2, boolean z2, int i2, int i3, String str, boolean z3, int[] iArr, boolean z4) {
        this.hp = cls;
        this.f28050l = cls2;
        this.jx = i2;
        this.f28053w = z2;
        this.f28048j = i3;
        this.f28046a = str;
        this.eb = z3;
        if (i2 < 0) {
            this.f28049k = i2;
        }
        if (z3) {
            this.jl = new ConcurrentHashMap();
        }
        this.f28052s = iArr;
        this.f28051q = z4;
    }

    public boolean a() {
        return this.f28049k > this.f28047e && this.f28049k > this.jx;
    }

    public int hp() {
        return this.f28047e;
    }

    public Object j() {
        return this.zy;
    }

    public Map<com.byazt.pg.hp, Object> jx() {
        return this.jl;
    }

    public Function l() {
        return this.gu;
    }

    public int w() {
        return this.f28049k;
    }

    public void hp(int i2) {
        this.f28047e = i2;
    }

    public void l(int i2) {
        this.f28049k = i2;
    }

    public void hp(Function function) {
        this.gu = function;
    }

    public synchronized Object hp(com.byazt.pg.hp hpVar) {
        if (this.eb && hpVar != null && this.jl != null) {
            return this.jl.get(hpVar);
        }
        return this.zy;
    }

    public synchronized void hp(Object obj, com.byazt.pg.hp hpVar) {
        if (this.eb && hpVar != null && this.jl != null) {
            this.jl.put(hpVar, obj);
            return;
        }
        this.zy = obj;
    }
}

package com.byazt.zh;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 754, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public int f28455a;

    /* renamed from: e, reason: collision with root package name */
    public float f28456e;
    public int eb;
    public float gu;
    public int jl;

    /* renamed from: q, reason: collision with root package name */
    public int f28460q;

    /* renamed from: s, reason: collision with root package name */
    public int f28461s;

    /* renamed from: u, reason: collision with root package name */
    public int f28462u;

    /* renamed from: v, reason: collision with root package name */
    public int f28463v;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public int f28464w;
    public boolean xs;
    public int zy;
    public int hp = Integer.MAX_VALUE;

    /* renamed from: l, reason: collision with root package name */
    public int f28459l = Integer.MAX_VALUE;
    public int jx = Integer.MIN_VALUE;

    /* renamed from: j, reason: collision with root package name */
    public int f28457j = Integer.MIN_VALUE;

    /* renamed from: k, reason: collision with root package name */
    public List<Integer> f28458k = new ArrayList();

    public int hp() {
        return this.eb;
    }

    public int l() {
        return this.f28461s - this.f28460q;
    }

    public void hp(View view, int i2, int i3, int i4, int i5) {
        l lVar = (l) view.getLayoutParams();
        this.hp = Math.min(this.hp, (view.getLeft() - lVar.zy()) - i2);
        this.f28459l = Math.min(this.f28459l, (view.getTop() - lVar.k()) - i3);
        this.jx = Math.max(this.jx, view.getRight() + lVar.v() + i4);
        this.f28457j = Math.max(this.f28457j, view.getBottom() + lVar.u() + i5);
    }
}

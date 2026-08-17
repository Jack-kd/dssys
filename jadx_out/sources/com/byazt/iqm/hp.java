package com.byazt.iqm;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 687, 28})
/* loaded from: classes.dex */
public class hp implements jx {

    /* renamed from: a, reason: collision with root package name */
    public String f21178a;

    /* renamed from: e, reason: collision with root package name */
    public String f21179e;
    public boolean eb;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public String f21181l;

    /* renamed from: q, reason: collision with root package name */
    public JSONObject f21182q;

    /* renamed from: j, reason: collision with root package name */
    public int f21180j = 1;

    /* renamed from: w, reason: collision with root package name */
    public int f21184w = 0;
    public int hp = 0;

    /* renamed from: s, reason: collision with root package name */
    public int f21183s = 2;

    @Override // com.byazt.iqm.jx
    public String a() {
        return this.f21178a;
    }

    @Override // com.byazt.iqm.jx
    public String e() {
        return this.f21179e;
    }

    @Override // com.byazt.iqm.jx
    public boolean eb() {
        return this.eb;
    }

    @Override // com.byazt.iqm.jx
    public String hp() {
        return this.f21181l;
    }

    @Override // com.byazt.iqm.jx
    public int j() {
        return this.f21184w;
    }

    @Override // com.byazt.iqm.jx
    public int jx() {
        return this.f21180j;
    }

    @Override // com.byazt.iqm.jx
    public int l() {
        return this.jx;
    }

    @Override // com.byazt.iqm.jx
    public JSONObject q() {
        return this.f21182q;
    }

    @Override // com.byazt.iqm.jx
    public int s() {
        return this.f21183s;
    }

    @Override // com.byazt.iqm.jx
    public int w() {
        return this.hp;
    }

    @Override // com.byazt.iqm.jx
    public void hp(String str) {
        this.f21181l = str;
    }

    @Override // com.byazt.iqm.jx
    public void j(int i2) {
        this.hp = i2;
    }

    @Override // com.byazt.iqm.jx
    public void jx(int i2) {
        this.f21184w = i2;
    }

    @Override // com.byazt.iqm.jx
    public void l(int i2) {
        this.f21180j = i2;
    }

    @Override // com.byazt.iqm.jx
    public void w(int i2) {
        this.f21183s = i2;
    }

    @Override // com.byazt.iqm.jx
    public void hp(int i2) {
        this.jx = i2;
    }

    @Override // com.byazt.iqm.jx
    public void jx(String str) {
        this.f21179e = str;
    }

    @Override // com.byazt.iqm.jx
    public void l(String str) {
        this.f21178a = str;
    }

    @Override // com.byazt.iqm.jx
    public void hp(JSONObject jSONObject) {
        this.f21182q = jSONObject;
    }
}

package com.byazt.wgi;

@com.byazt.kj.hp(hp = {0, 1, 1410, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public int f26900a;

    /* renamed from: e, reason: collision with root package name */
    public String f26901e;
    public String gu;
    public double hp;

    /* renamed from: j, reason: collision with root package name */
    public double f26902j;
    public double jx;

    /* renamed from: l, reason: collision with root package name */
    public double f26903l;

    /* renamed from: w, reason: collision with root package name */
    public String f26906w;
    public int eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public int f26905s = 0;

    /* renamed from: q, reason: collision with root package name */
    public int f26904q = 0;

    public hp(double d2, double d3, double d4, double d5, int i2, String str) {
        this.hp = d2;
        this.f26903l = d3;
        this.jx = d4;
        this.f26902j = d5;
        this.f26906w = str;
        this.f26900a = i2;
    }

    private boolean j() {
        return hp(this.hp, this.jx);
    }

    private boolean w() {
        return hp(this.f26903l, this.f26902j);
    }

    public boolean hp() {
        return j();
    }

    public double jx() {
        return this.f26903l;
    }

    public double l() {
        return this.hp;
    }

    public String toString() {
        return "adnName = " + this.f26901e + " adnRit = " + this.gu + ", send = " + this.eb + ", fill = " + this.f26905s + ", show = " + this.f26904q + " localSsr = " + this.hp + ", serviceSsr = " + this.jx + ", localSrr = " + this.f26903l + ", serviceSrr = " + this.f26902j + ", opt = " + this.f26906w + ", condition = " + this.f26900a + ", compareBehaviorSsr = " + j() + ", compareBehaviorSrr = " + w() + ", checkBehaviorRule = " + hp();
    }

    private boolean hp(double d2, double d3) {
        String str = this.f26906w;
        str.getClass();
        switch (str) {
            case "1":
                if (d2 > d3) {
                }
                break;
            case "2":
                if (d2 < d3) {
                }
                break;
            case "3":
                if (d2 >= d3) {
                }
                break;
            case "4":
                if (d2 <= d3) {
                }
                break;
            case "5":
                if (d2 == d3) {
                }
                break;
        }
        return true;
    }

    public void jx(int i2) {
        this.f26904q = i2;
    }

    public void l(int i2) {
        this.f26905s = i2;
    }

    public void hp(int i2) {
        this.eb = i2;
    }

    public void l(String str) {
        this.gu = str;
    }

    public void hp(String str) {
        this.f26901e = str;
    }
}

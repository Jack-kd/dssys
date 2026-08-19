package com.byazt.hwo;

@com.byazt.kj.hp(hp = {0, 1, 1224, 34})
/* loaded from: classes2.dex */
public class l {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f20972j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public String f20973l;

    /* renamed from: w, reason: collision with root package name */
    public int f20974w;

    public l(String str, String str2, long j2) {
        this.f20972j = -1;
        this.f20974w = -1;
        this.hp = str;
        this.f20973l = str2;
        this.jx = j2;
    }

    public String hp() {
        return this.f20973l;
    }

    public int j() {
        return this.f20972j;
    }

    public long jx() {
        return this.jx;
    }

    public String l() {
        return this.hp;
    }

    public int w() {
        return this.f20974w;
    }

    public void hp(int i2) {
        this.f20974w = i2;
    }

    public l(String str, String str2, long j2, int i2) {
        this.f20974w = -1;
        this.hp = str;
        this.f20973l = str2;
        this.jx = j2;
        this.f20972j = i2;
    }
}

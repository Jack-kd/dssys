package com.byazt.ch;

@com.byazt.kj.hp(hp = {0, 1, 162, 38})
/* loaded from: classes2.dex */
public class j {
    public float hp;

    /* renamed from: l, reason: collision with root package name */
    public float f18856l;

    public j(float f2, float f3) {
        this.hp = f2;
        this.f18856l = f3;
    }

    public float hp() {
        return this.hp;
    }

    public float l() {
        return this.f18856l;
    }

    public String toString() {
        return hp() + "x" + l();
    }

    public void hp(float f2, float f3) {
        this.hp = f2;
        this.f18856l = f3;
    }

    public boolean l(float f2, float f3) {
        return this.hp == f2 && this.f18856l == f3;
    }

    public j() {
        this(1.0f, 1.0f);
    }
}

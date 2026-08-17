package com.byazt.kd;

@com.byazt.kj.hp(hp = {0, 1, 860, 30})
/* loaded from: classes2.dex */
public class jx extends com.byazt.qt.hp {
    public final int hp;

    /* renamed from: l, reason: collision with root package name */
    public final String f22011l;

    public jx(int i2, String str) {
        this.hp = i2;
        this.f22011l = str;
    }

    @Override // com.byazt.qt.hp
    public int getCode() {
        return this.hp;
    }

    @Override // com.byazt.qt.hp
    public String getMsg() {
        return this.f22011l;
    }
}

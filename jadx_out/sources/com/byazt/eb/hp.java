package com.byazt.eb;

@com.byazt.kj.hp(hp = {0, 1, 94, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.qt.hp {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public String f19388l;

    public hp(int i2, String str) {
        this.hp = i2;
        this.f19388l = str;
    }

    @Override // com.byazt.qt.hp
    public int getCode() {
        return this.hp;
    }

    @Override // com.byazt.qt.hp
    public String getMsg() {
        return this.f19388l;
    }
}

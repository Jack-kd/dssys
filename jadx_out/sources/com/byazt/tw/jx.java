package com.byazt.tw;

@com.byazt.kj.hp(hp = {0, 1, 593, 30})
/* loaded from: classes3.dex */
public class jx implements com.byazt.um.jx {
    public int hp;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26072l;

    public jx(int i2, int i3) {
        this.hp = i2;
        this.f26072l = i3;
    }

    @Override // com.byazt.um.jx
    public int getCode() {
        return this.hp;
    }

    @Override // com.byazt.um.jx
    public int getExtraCode() {
        return this.f26072l;
    }

    @Override // com.byazt.um.jx
    public String getMsg() {
        return this.jx;
    }

    @Override // com.byazt.um.jx
    public void setCode(int i2) {
        this.hp = i2;
    }

    @Override // com.byazt.um.jx
    public void setExtraCode(int i2) {
        this.f26072l = i2;
    }

    @Override // com.byazt.um.jx
    public void setMsg(String str) {
        this.jx = str;
    }

    public jx(int i2, int i3, String str) {
        this.hp = i2;
        this.f26072l = i3;
        this.jx = str;
    }
}

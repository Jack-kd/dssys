package com.byazt.wf;

@com.byazt.kj.hp(hp = {0, 1, 416, 38})
/* loaded from: classes3.dex */
public class j {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f26892j;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f26893l;

    public j(String str, String str2, String str3, String str4) {
        this.hp = str;
        this.f26893l = str2;
        this.jx = str3;
        this.f26892j = str4 == null ? "img_0.png" : str4;
    }

    public String hp() {
        return this.hp;
    }

    public String jx() {
        return this.f26892j;
    }

    public String l() {
        return this.jx;
    }
}

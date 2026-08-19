package com.byazt.yg;

import android.graphics.Typeface;

@com.byazt.kj.hp(hp = {0, 1, 1463, 30})
/* loaded from: classes3.dex */
public class jx {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final float f27913j;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f27914l;

    /* renamed from: w, reason: collision with root package name */
    public Typeface f27915w;

    public jx(String str, String str2, String str3, float f2) {
        this.hp = str;
        this.f27914l = str2;
        this.jx = str3;
        this.f27913j = f2;
    }

    public String hp() {
        return this.hp;
    }

    public Typeface j() {
        return this.f27915w;
    }

    public String jx() {
        return this.jx;
    }

    public String l() {
        return this.f27914l;
    }

    public void hp(Typeface typeface) {
        this.f27915w = typeface;
    }
}

package com.byazt.po;

import android.graphics.drawable.Drawable;

@com.byazt.kj.hp(hp = {0, 1, 212, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public l f24459a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f24460j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f24461l;

    /* renamed from: w, reason: collision with root package name */
    public Drawable f24462w;

    public static hp hp() {
        return new hp();
    }

    public hp j(String str) {
        this.f24460j = str;
        return this;
    }

    public hp jx(String str) {
        this.jx = str;
        return this;
    }

    public hp l(String str) {
        this.f24461l = str;
        return this;
    }

    public hp hp(String str) {
        this.hp = str;
        return this;
    }

    public hp hp(Drawable drawable) {
        this.f24462w = drawable;
        return this;
    }

    public hp hp(l lVar) {
        this.f24459a = lVar;
        return this;
    }
}

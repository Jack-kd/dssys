package com.byazt.yg;

import com.byazt.na.k;

@com.byazt.kj.hp(hp = {0, 1, 1463, 54})
/* loaded from: classes3.dex */
public class a {
    public static final a hp = new a();

    /* renamed from: l, reason: collision with root package name */
    public final k<String, com.byazt.na.a> f27906l = new k<>(20);

    public static a hp() {
        return hp;
    }

    public com.byazt.na.a hp(String str) {
        if (str == null) {
            return null;
        }
        return this.f27906l.hp((k<String, com.byazt.na.a>) str);
    }

    public void hp(String str, com.byazt.na.a aVar) {
        if (str == null) {
            return;
        }
        this.f27906l.hp((k<String, com.byazt.na.a>) str, (String) aVar);
    }

    public void hp(int i2) {
        this.f27906l.hp(i2);
    }
}

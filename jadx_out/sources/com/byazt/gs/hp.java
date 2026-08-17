package com.byazt.gs;

@com.byazt.kj.hp(hp = {0, 1, 575, 28})
/* loaded from: classes2.dex */
public class hp {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public long f20574l;

    public static hp hp(String str) {
        hp hpVar = new hp();
        hpVar.hp = str;
        hpVar.f20574l = System.currentTimeMillis();
        return hpVar;
    }
}

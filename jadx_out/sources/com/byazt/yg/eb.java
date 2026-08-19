package com.byazt.yg;

@com.byazt.kj.hp(hp = {0, 1, 1463, 94})
/* loaded from: classes3.dex */
public class eb {
    public final float hp;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final float f27907l;

    public eb(String str, float f2, float f3) {
        this.jx = str;
        this.f27907l = f3;
        this.hp = f2;
    }

    public boolean hp(String str) {
        if (this.jx.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.jx.endsWith("\r")) {
            String str2 = this.jx;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}

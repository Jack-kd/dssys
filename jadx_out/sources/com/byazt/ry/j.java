package com.byazt.ry;

import com.byazt.ctq.eb;
import com.byazt.pg.ud;

@com.byazt.kj.hp(hp = {0, 1, 256, 38})
/* loaded from: classes3.dex */
public class j {
    public static boolean hp() {
        return (com.byazt.xt.hp.hp().l() & 2) == 2;
    }

    public static eb jx(String str, String str2) {
        return ((ud) com.byazt.ym.j.getService("storage_service")).getVersionIsolateStore(hp(str), str2);
    }

    public static boolean l() {
        return (com.byazt.xt.hp.hp().l() & 4) == 4;
    }

    private static com.byazt.pg.hp hp(String str) {
        return com.byazt.el.hp.hp().hp(str);
    }

    public static com.byazt.ctq.w l(String str, String str2) {
        return ((ud) com.byazt.ym.j.getService("storage_service")).getLayerIsolateStore(hp(str), str2);
    }

    public static com.byazt.ctq.jx hp(String str, String str2) {
        return ((ud) com.byazt.ym.j.getService("storage_service")).getGlobalStorage(hp(str), str2);
    }
}

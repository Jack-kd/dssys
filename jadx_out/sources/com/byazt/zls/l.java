package com.byazt.zls;

import android.util.SparseArray;
import com.byazt.jz.s;
import com.byazt.ow.w;
import com.byazt.zn.nu;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2172, 34})
/* loaded from: classes3.dex */
public class l {
    public static w hp;

    public static void hp(String str) {
        l();
        try {
            w wVar = hp;
            if (wVar != null) {
                hp.put("live_init_".concat(String.valueOf(str)), wVar.get("live_init_".concat(String.valueOf(str)), 0) + 1);
            }
        } catch (Throwable unused) {
        }
    }

    public static void j(String str) {
        hp();
        l(str);
    }

    public static boolean jx(String str) {
        l();
        w wVar = hp;
        return (wVar != null ? wVar.get("live_init_".concat(String.valueOf(str)), 0) : 0) < 5;
    }

    private static void l() {
        if (hp == null) {
            hp = nu.hp("csj_live");
        }
    }

    public static void l(String str) {
        l();
        try {
            w wVar = hp;
            if (wVar != null) {
                wVar.put("live_init_".concat(String.valueOf(str)), 0);
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp() {
        try {
            Function<SparseArray<Object>, Object> functionA = s.u().a(4);
            if (functionA != null) {
                functionA.apply(com.byazt.wi.j.hp().hp(100).hp(Void.class).hp(0, "com.byted.live.lite").l());
            }
        } catch (Throwable unused) {
        }
    }
}

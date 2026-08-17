package com.byazt.pz;

import android.text.TextUtils;
import com.byazt.jz.d;
import com.byazt.ry.j;
import com.byazt.ymw.sz;
import io.flutter.plugin.platform.PlatformPlugin;

@com.byazt.kj.hp(hp = {0, 1, PlatformPlugin.DEFAULT_SYSTEM_UI, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static String hp(com.byazt.pg.hp hpVar, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "ads_layer_default";
        }
        if (l()) {
            str = j(hpVar, str);
        }
        return hp(str, hpVar != null && hpVar.isSupportMultiProcess(), hpVar.getAppId());
    }

    private static String j(com.byazt.pg.hp hpVar, String str) {
        if (hpVar == null || TextUtils.isEmpty(hpVar.getAppId())) {
            return str;
        }
        return hpVar.getAppId() + "_" + str;
    }

    public static String jx(com.byazt.pg.hp hpVar, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "ads_version_default";
        }
        if (l()) {
            str = j(hpVar, str);
        }
        return hp(str, hpVar != null && hpVar.isSupportMultiProcess(), hpVar.getAppId());
    }

    public static String l(com.byazt.pg.hp hpVar, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "ads_global_default";
        }
        if (l()) {
            str = j(hpVar, str) + "_global";
        }
        return hp(str, hpVar != null && hpVar.isSupportMultiProcess(), hpVar.getAppId());
    }

    private static String hp(String str, boolean z2, String str2) {
        if (z2 || sz.hp(com.byazt.jz.sz.getContext()) || !j.l()) {
            return str;
        }
        return str + sz.l(com.byazt.jz.sz.getContext());
    }

    private static boolean l() {
        if (hp()) {
            return false;
        }
        return j.hp();
    }

    public static boolean hp() {
        return d.f21856j < 7500;
    }
}

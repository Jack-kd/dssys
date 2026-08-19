package com.byazt.rt;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.byazt.zg.nu;

@com.byazt.kj.hp(hp = {0, 1, 1531, 34})
/* loaded from: classes3.dex */
public class l {
    public static final String hp = nu.j();

    /* renamed from: l, reason: collision with root package name */
    public static boolean f25372l = true;

    public static int hp() {
        return Integer.parseInt(l().replace(i.f2495E, ""));
    }

    public static String j() {
        return com.byazt.owd.l.j();
    }

    public static String jx() {
        if (TextUtils.isEmpty(l())) {
            return "";
        }
        String[] strArrSplit = l().split("\\.");
        if (strArrSplit.length < 4) {
            return "";
        }
        return strArrSplit[0] + i.f2495E + strArrSplit[1] + i.f2495E + strArrSplit[2];
    }

    public static String l() {
        return com.byazt.owd.l.jx();
    }
}

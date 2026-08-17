package com.byazt.wkx;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 2496, 38})
/* loaded from: classes3.dex */
public class j {
    public static Context getContext() {
        if (com.byazt.ui.hp.hp().jx() == null) {
            return null;
        }
        return com.byazt.ui.hp.hp().jx().getContext();
    }

    public static boolean hp() {
        com.byazt.ui.jx jxVarJx = com.byazt.ui.hp.hp().jx();
        return jxVarJx != null && jxVarJx.eb() == 1;
    }

    public static int l() {
        return com.byazt.ui.hp.hp().jx().e();
    }
}

package com.byazt.ke;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 581, 30})
/* loaded from: classes2.dex */
public class jx {
    public static volatile Context hp;

    public static Context getContext() {
        return hp;
    }

    public static void hp(Context context) {
        if (hp == null && context != null) {
            hp = context.getApplicationContext();
        }
    }
}

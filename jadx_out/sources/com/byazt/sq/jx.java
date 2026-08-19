package com.byazt.sq;

import android.content.Context;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 1453, 30})
/* loaded from: classes3.dex */
public class jx {
    public static boolean hp(Context context) {
        return context != null && TextUtils.getLayoutDirectionFromLocale(context.getResources().getConfiguration().locale) == 1 && (context.getApplicationInfo().flags & 4194304) == 4194304;
    }
}

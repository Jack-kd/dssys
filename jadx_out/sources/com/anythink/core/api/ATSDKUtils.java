package com.anythink.core.api;

import android.content.Context;
import com.anythink.core.common.v.p;
import com.anythink.core.common.v.s;

/* loaded from: classes.dex */
public class ATSDKUtils {
    public static int dip2px(Context context, float f2) {
        return p.a(context, f2);
    }

    public static double getRmbChangeToUsdRate() {
        return s.b();
    }

    public static double getUsdChangeToRmbRate() {
        return s.a();
    }

    public static int px2dip(Context context, float f2) {
        return p.b(context, f2);
    }
}

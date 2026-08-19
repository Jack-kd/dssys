package com.kwad.sdk.api.core;

import android.content.Context;

/* loaded from: classes4.dex */
public class ApiViewUtil {
    public static int px2dip(Context context, float f2) {
        return (int) ((f2 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}

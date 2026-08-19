package com.meishu.sdk.core.utils;

import android.content.Context;

/* loaded from: classes4.dex */
public class a1 {
    public static int a(Context context, String str) {
        return context.getResources().getIdentifier(str, "id", context.getPackageName());
    }
}

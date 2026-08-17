package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public abstract class gm {
    public static int a(Context context, String str) {
        return a(context, "id", str);
    }

    public static int a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str2, str, context.getPackageName());
    }
}

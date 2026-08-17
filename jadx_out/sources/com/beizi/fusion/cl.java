package com.beizi.fusion;

import android.content.Context;
import androidx.core.content.ContextCompat;

/* loaded from: classes2.dex */
public abstract class cl {
    private static boolean a(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    public static boolean b(Context context, String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }
}

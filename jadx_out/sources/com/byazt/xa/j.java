package com.byazt.xa;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;

@com.byazt.kj.hp(hp = {0, 1, 1328, 38})
/* loaded from: classes3.dex */
public final class j {
    public static String hp;

    @SuppressLint({"StaticFieldLeak"})
    public static Context jx;

    /* renamed from: l, reason: collision with root package name */
    public static Resources f27165l;

    private static String hp(Context context) {
        if (hp == null) {
            hp = context.getPackageName();
        }
        return hp;
    }

    public static int l(Context context, String str) {
        return hp(context, str, "drawable");
    }

    private static int hp(Context context, String str, String str2) {
        if (f27165l == null) {
            f27165l = context.getResources();
        }
        return f27165l.getIdentifier(str, str2, hp(context));
    }

    public static int hp(Context context, String str) {
        return hp(context, str, "raw");
    }
}

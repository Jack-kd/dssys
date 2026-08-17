package com.byazt.ymw;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;

@com.byazt.kj.hp(hp = {0, 1, 68, 301})
/* loaded from: classes3.dex */
public final class cx {

    @SuppressLint({"StaticFieldLeak"})
    public static Context hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f28076j = false;
    public static boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public static Resources f28077l;

    public static Resources hp(Context context) {
        Resources resources = f28077l;
        if (resources == null) {
            resources = null;
        }
        Context context2 = hp;
        if (context2 != null) {
            resources = context2.getResources();
        }
        return resources == null ? context.getResources() : resources;
    }
}

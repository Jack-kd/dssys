package com.kwad.components.core.innerEc.live.widget;

import android.view.View;
import android.view.ViewGroup;
import com.kwad.sdk.utils.ab;

/* loaded from: classes4.dex */
public final class p {
    public static void b(ViewGroup viewGroup, View view) {
        Float fValueOf = Float.valueOf(1.0f);
        try {
            Object objI = ab.i(ab.a("com.kwad.yoga.YogaNodeJNIFinalizer", viewGroup.getClass().getClassLoader()));
            ab.callMethodOrThrow(objI, "setFlexGrow", fValueOf);
            ab.callMethodOrThrow(objI, "setFlexShrink", fValueOf);
            ab.callMethodOrThrow(viewGroup, "addView", view, objI);
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
        }
    }
}

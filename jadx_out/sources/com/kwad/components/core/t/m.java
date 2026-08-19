package com.kwad.components.core.t;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.view.KeyEvent;
import android.view.ViewGroup;

/* loaded from: classes4.dex */
public final class m {
    public static void a(com.kwad.components.core.widget.e eVar, ViewGroup viewGroup) {
        if (eVar == null || viewGroup == null) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            KeyEvent.Callback childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof com.kwad.components.core.widget.d) {
                ((com.kwad.components.core.widget.d) childAt).a(eVar);
            } else if (childAt instanceof ViewGroup) {
                a(eVar, (ViewGroup) childAt);
            }
        }
    }

    public static void b(com.kwad.components.core.widget.e eVar, Drawable drawable) {
        if (drawable instanceof ShapeDrawable) {
            ((ShapeDrawable) drawable).getPaint().setColor(eVar.zX());
        } else if (drawable instanceof ColorDrawable) {
            ((ColorDrawable) drawable).setColor(eVar.zX());
        } else if (drawable instanceof GradientDrawable) {
            ((GradientDrawable) drawable).setColor(eVar.zX());
        }
    }
}

package com.kwad.components.core.innerEc.live.i;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.bd;

/* loaded from: classes4.dex */
public final class c {
    private static final CharSequence XK = "navigationBarBackground";
    public static final Float XL = Float.valueOf(263.0f);
    public static final Float XM = Float.valueOf(201.5f);
    private static int XN = ai.VA();
    private static int XO;
    private static int XP;

    public static boolean a(Context context, Window window, int[] iArr) {
        if (bd.Wc()) {
            return com.kwad.sdk.c.a.a.bC(context).y > 0;
        }
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt != null && childAt.getId() != -1) {
                if (TextUtils.equals(XK, context.getResources().getResourceEntryName(childAt.getId())) && childAt.getVisibility() == 0) {
                    iArr[0] = childAt.getHeight();
                    return true;
                }
            }
        }
        return false;
    }

    public static int ay(Context context) {
        return com.kwad.sdk.c.a.a.a(context, 20.0f);
    }

    public static int az(Context context) {
        if (XP == 0) {
            XP = com.kwad.sdk.c.a.a.bC(context).y;
            int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
            if (identifier > 0) {
                XP = context.getResources().getDimensionPixelSize(identifier);
            }
        }
        return XP;
    }

    public static int b(Context context, boolean z2) {
        if (XO == 0) {
            XO = com.kwad.sdk.c.a.a.bE(context).y;
        }
        return XO;
    }

    public static void bc(int i2) {
        if (i2 == XN) {
            return;
        }
        XN = i2;
        ai.fW(i2);
    }

    public static int c(Context context, boolean z2) {
        return com.kwad.sdk.c.a.a.a(context, XL.floatValue());
    }

    public static int sK() {
        return XN;
    }
}

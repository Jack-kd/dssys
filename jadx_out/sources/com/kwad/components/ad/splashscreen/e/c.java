package com.kwad.components.ad.splashscreen.e;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.kwad.sdk.core.response.model.AdInfo;

/* loaded from: classes4.dex */
public final class c {
    public static boolean A(@NonNull AdInfo adInfo) {
        return adInfo.adSplashInfo.skipButtonPosition == 0;
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (i3 >= 0) {
                marginLayoutParams.bottomMargin = com.kwad.sdk.c.a.a.a(view.getContext(), i3);
            }
            marginLayoutParams.leftMargin = com.kwad.sdk.c.a.a.a(view.getContext(), 16.0f);
        }
    }

    public static boolean a(Context context, int i2, int i3) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i4 = displayMetrics.widthPixels;
        int i5 = displayMetrics.heightPixels;
        int iA = com.kwad.sdk.c.a.a.a(context, 10.0f);
        return Math.abs(i2 - i4) <= iA && Math.abs(i3 - i5) <= iA;
    }
}

package com.kwad.sdk.utils;

import android.app.Activity;
import android.content.res.Resources;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class e {
    public static int q(Activity activity) {
        Resources resources = activity.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public static boolean r(@NonNull Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        if (viewGroup != null) {
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                viewGroup.getChildAt(i2).getContext().getPackageName();
                if (viewGroup.getChildAt(i2).getId() != -1 && "navigationBarBackground".equals(activity.getResources().getResourceEntryName(viewGroup.getChildAt(i2).getId()))) {
                    return true;
                }
            }
        }
        return false;
    }
}

package com.kwad.components.core.t;

import android.R;
import android.app.Activity;
import android.view.Window;
import androidx.annotation.NonNull;
import com.kwad.sdk.utils.ab;
import com.kwad.sdk.utils.bd;
import io.flutter.plugin.platform.PlatformPlugin;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes4.dex */
public final class d {
    public static void a(@NonNull Activity activity, int i2, boolean z2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        a(activity, 0, true, true);
    }

    private static void b(@NonNull Activity activity, int i2, boolean z2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i3;
        Window window = activity.getWindow();
        if (z2) {
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            if (bd.Wb()) {
                a(activity, true);
            } else if (bd.Wc()) {
                p.b(activity, true);
            }
            i3 = 9472;
        } else {
            i3 = PlatformPlugin.DEFAULT_SYSTEM_UI;
        }
        window.getDecorView().setSystemUiVisibility(i3);
        window.setStatusBarColor(i2);
        window.setNavigationBarColor(window.getNavigationBarColor());
    }

    public static boolean wJ() {
        return true;
    }

    public static void a(@NonNull Activity activity, int i2, boolean z2, boolean z3) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (wJ()) {
            b(activity, i2, z2);
            if (z3) {
                return;
            }
            activity.findViewById(R.id.content).setPadding(0, com.kwad.sdk.c.a.a.getStatusBarHeight(activity), 0, 0);
        }
    }

    private static boolean a(@NonNull Activity activity, boolean z2) {
        try {
            Integer num = (Integer) ab.au("android.view.MiuiWindowManager$LayoutParams", "EXTRA_FLAG_STATUS_BAR_DARK_MODE");
            num.intValue();
            ab.callMethod(activity.getWindow(), "setExtraFlags", num, num);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}

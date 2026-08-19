package com.kwad.components.core.t;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import io.flutter.plugin.platform.PlatformPlugin;

/* loaded from: classes4.dex */
public final class v {
    public static void c(Window window) {
        int i2 = Build.VERSION.SDK_INT;
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (i2 >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        window.setAttributes(attributes);
        window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
    }

    public static void d(Window window) {
        View decorView = window.getDecorView();
        decorView.setPadding(0, 0, 0, 0);
        decorView.setBackgroundColor(0);
        window.setLayout(-1, -1);
    }
}

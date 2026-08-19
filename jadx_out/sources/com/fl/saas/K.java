package com.fl.saas;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.fl.saas.adx.util.LogcatUtil;
import io.flutter.plugin.platform.PlatformPlugin;

/* loaded from: classes3.dex */
public abstract class K {
    public static void a(Activity activity) {
        try {
            Window window = activity.getWindow();
            window.clearFlags(201327616);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public static void a(Activity activity, boolean z2) {
        try {
            View decorView = activity.getWindow().getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z2 ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }
}

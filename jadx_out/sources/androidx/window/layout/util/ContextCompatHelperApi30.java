package androidx.window.layout.util;

import android.content.Context;
import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.view.WindowInsetsCompat;
import androidx.window.layout.WindowMetrics;
import com.umeng.analytics.pro.g;
import kotlin.Metadata;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@RequiresApi(30)
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\f"}, d2 = {"Landroidx/window/layout/util/ContextCompatHelperApi30;", "", "()V", "currentWindowBounds", "Landroid/graphics/Rect;", g.f49337X, "Landroid/content/Context;", "currentWindowInsets", "Landroidx/core/view/WindowInsetsCompat;", "currentWindowMetrics", "Landroidx/window/layout/WindowMetrics;", "maximumWindowBounds", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ContextCompatHelperApi30 {

    @NotNull
    public static final ContextCompatHelperApi30 INSTANCE = new ContextCompatHelperApi30();

    private ContextCompatHelperApi30() {
    }

    @NotNull
    public final Rect currentWindowBounds(@NotNull Context context) {
        j.e(context, "context");
        Rect bounds = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics().getBounds();
        j.d(bounds, "wm.currentWindowMetrics.bounds");
        return bounds;
    }

    @DoNotInline
    @NotNull
    public final WindowInsetsCompat currentWindowInsets(@NotNull Context context) {
        j.e(context, "context");
        WindowInsets windowInsets = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics().getWindowInsets();
        j.d(windowInsets, "context.getSystemService…indowMetrics.windowInsets");
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets);
        j.d(windowInsetsCompat, "toWindowInsetsCompat(platformInsets)");
        return windowInsetsCompat;
    }

    @NotNull
    public final WindowMetrics currentWindowMetrics(@NotNull Context context) {
        j.e(context, "context");
        WindowManager windowManager = (WindowManager) context.getSystemService(WindowManager.class);
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowManager.getCurrentWindowMetrics().getWindowInsets());
        j.d(windowInsetsCompat, "toWindowInsetsCompat(wm.…ndowMetrics.windowInsets)");
        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
        j.d(bounds, "wm.currentWindowMetrics.bounds");
        return new WindowMetrics(bounds, windowInsetsCompat);
    }

    @NotNull
    public final Rect maximumWindowBounds(@NotNull Context context) {
        j.e(context, "context");
        Rect bounds = ((WindowManager) context.getSystemService(WindowManager.class)).getMaximumWindowMetrics().getBounds();
        j.d(bounds, "wm.maximumWindowMetrics.bounds");
        return bounds;
    }
}

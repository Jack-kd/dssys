package androidx.window.layout.util;

import android.graphics.Point;
import android.view.Display;
import androidx.annotation.RequiresApi;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@RequiresApi(17)
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/window/layout/util/DisplayCompatHelperApi17;", "", "<init>", "()V", "Landroid/view/Display;", "display", "Landroid/graphics/Point;", SQLiteMTAHelper.TABLE_POINT, "Lkotlin/j;", "getRealSize", "(Landroid/view/Display;Landroid/graphics/Point;)V", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DisplayCompatHelperApi17 {

    @NotNull
    public static final DisplayCompatHelperApi17 INSTANCE = new DisplayCompatHelperApi17();

    private DisplayCompatHelperApi17() {
    }

    public final void getRealSize(@NotNull Display display, @NotNull Point point) {
        j.e(display, "display");
        j.e(point, "point");
        display.getRealSize(point);
    }
}

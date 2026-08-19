package androidx.core.util;

import android.util.Size;
import android.util.SizeF;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0000\u001a\u00020\u0004*\u00020\u0005H\u0086\n\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0086\n\u001a\r\u0010\u0000\u001a\u00020\u0004*\u00020\u0006H\u0086\n\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0006H\u0086\n¨\u0006\u0007"}, d2 = {"component1", "", "Landroid/util/Size;", "component2", "", "Landroid/util/SizeF;", "Landroidx/core/util/SizeFCompat;", "core-ktx"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SizeKt {
    public static final int component1(@NotNull Size size) {
        return size.getWidth();
    }

    public static final int component2(@NotNull Size size) {
        return size.getHeight();
    }

    public static final float component1(@NotNull SizeF sizeF) {
        return sizeF.getWidth();
    }

    public static final float component2(@NotNull SizeF sizeF) {
        return sizeF.getHeight();
    }

    public static final float component1(@NotNull SizeFCompat sizeFCompat) {
        return sizeFCompat.getWidth();
    }

    public static final float component2(@NotNull SizeFCompat sizeFCompat) {
        return sizeFCompat.getHeight();
    }
}

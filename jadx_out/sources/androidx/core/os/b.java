package androidx.core.os;

import android.os.Build;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ int a() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 < 36 ? i2 * 100000 : Build.VERSION.SDK_INT_FULL;
    }
}

package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.util.DisplayMetrics;

/* loaded from: classes5.dex */
public final class pblm {
    private static int hp;

    public static String hp(Context context) {
        if (context != null) {
            try {
                new DisplayMetrics();
                hp = context.getResources().getDisplayMetrics().densityDpi;
            } catch (Throwable unused) {
            }
        }
        return "" + hp;
    }
}

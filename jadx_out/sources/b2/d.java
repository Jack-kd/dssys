package b2;

import android.content.Context;

/* loaded from: classes5.dex */
public abstract class d {
    public static boolean a(Context context) {
        if (b.p(context) == null) {
            return false;
        }
        return b.n();
    }

    public static String b(Context context) {
        b bVarP = b.p(context);
        if (bVarP == null) {
            return null;
        }
        return bVarP.u();
    }
}

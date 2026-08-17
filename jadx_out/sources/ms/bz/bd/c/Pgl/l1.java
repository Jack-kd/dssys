package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;

/* loaded from: classes5.dex */
public final class l1 {
    public static int hp;

    /* renamed from: l, reason: collision with root package name */
    public static int f51964l;

    public static String hp(Context context) {
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            hp = point.x;
            f51964l = point.y;
        } catch (Throwable unused) {
        }
        return hp + "*" + f51964l;
    }
}

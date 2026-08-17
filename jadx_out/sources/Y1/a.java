package Y1;

import X1.b;
import android.content.Context;

/* loaded from: classes5.dex */
public abstract class a {
    public static void a(Context context) {
        X1.a.f682b = b.C0012b.f689a.b(context.getApplicationContext());
        X1.a.f681a = true;
    }

    public static boolean b() {
        if (X1.a.f681a) {
            return X1.a.f682b;
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String c(Context context) {
        if (X1.a.f681a) {
            return b.C0012b.f689a.a(context.getApplicationContext(), "OUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }
}

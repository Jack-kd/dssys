package Z1;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static Method f735a;

    public static final boolean a() throws NoSuchMethodException, SecurityException {
        Context context = null;
        try {
            if (f735a == null) {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentApplication", null);
                f735a = method;
                method.setAccessible(true);
            }
            context = (Context) f735a.invoke(null, null);
        } catch (Exception e2) {
            Log.e("OpenIdHelper", "ActivityThread:currentApplication --> " + e2.toString());
        }
        if (context == null) {
            return false;
        }
        return f.b().g(context, false);
    }

    public static String b(Context context) {
        f fVarB = f.b();
        return fVarB.c(context.getApplicationContext(), fVarB.f743b);
    }
}

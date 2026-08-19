package a2;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static Object f751a;

    /* renamed from: b, reason: collision with root package name */
    public static Class f752b;

    /* renamed from: c, reason: collision with root package name */
    public static Method f753c;

    /* renamed from: d, reason: collision with root package name */
    public static Method f754d;

    /* renamed from: e, reason: collision with root package name */
    public static Method f755e;

    /* renamed from: f, reason: collision with root package name */
    public static Method f756f;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f752b = cls;
            f751a = cls.newInstance();
            f753c = f752b.getMethod("getUDID", Context.class);
            f754d = f752b.getMethod("getOAID", Context.class);
            f755e = f752b.getMethod("getVAID", Context.class);
            f756f = f752b.getMethod("getAAID", Context.class);
        } catch (Exception e2) {
            Log.e("IdentifierManager", "reflect exception!", e2);
        }
    }

    public static String a(Context context, Method method) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj = f751a;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(obj, context);
            if (objInvoke != null) {
                return (String) objInvoke;
            }
            return null;
        } catch (Exception e2) {
            Log.e("IdentifierManager", "invoke exception!", e2);
            return null;
        }
    }

    public static boolean b() {
        return (f752b == null || f751a == null) ? false : true;
    }

    public static String c(Context context) {
        return a(context, f754d);
    }
}

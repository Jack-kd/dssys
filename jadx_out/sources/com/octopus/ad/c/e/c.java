package com.octopus.ad.c.e;

import android.content.Context;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static Method f33807a;

    public static final boolean a() throws NoSuchMethodException, SecurityException {
        Context context = null;
        try {
            if (f33807a == null) {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentApplication", null);
                f33807a = method;
                method.setAccessible(true);
            }
            context = (Context) f33807a.invoke(null, null);
        } catch (Exception unused) {
        }
        if (context == null) {
            return false;
        }
        return d.a().a(context, false);
    }

    public static String a(Context context) {
        d dVarA = d.a();
        return dVarA.a(context.getApplicationContext(), dVarA.f33811b);
    }
}

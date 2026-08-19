package com.ubix.ssp.ad.e.a0.y;

import android.app.Activity;
import android.os.IBinder;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* loaded from: classes5.dex */
public class c {
    private static double a(a aVar, a aVar2) {
        if (aVar == null || aVar2 == null) {
            return -1.0d;
        }
        double d2 = aVar.d();
        double dE = aVar.e();
        double dB = aVar.b() + d2;
        double dC = aVar.c() + dE;
        double d3 = aVar2.d();
        double dE2 = aVar2.e();
        double dB2 = aVar2.b() + d3;
        double dC2 = aVar2.c() + dE2;
        if (d2 > dB2 || dB < d3 || dE > dC2 || dC < dE2) {
            return 0.0d;
        }
        return (Math.min(dB, dB2) - Math.max(d2, d3)) * (Math.min(dC, dC2) - Math.max(dE, dE2));
    }

    private static int a(View view, ViewGroup viewGroup) {
        int i2 = 0;
        while (i2 < viewGroup.getChildCount() && viewGroup.getChildAt(i2) != view) {
            i2++;
        }
        return i2;
    }

    public static boolean a(View view) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            IBinder windowToken = view.getWindowToken();
            Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
            Object objInvoke = cls.getMethod("getInstance", null).invoke(null, null);
            Field declaredField = cls.getDeclaredField("mViews");
            boolean z2 = true;
            declaredField.setAccessible(true);
            List list = (List) declaredField.get(objInvoke);
            int i2 = 1;
            while (z2) {
                View view2 = (View) list.get(list.size() - i2);
                if (view2.getWindowToken() == null) {
                    i2++;
                    if (i2 >= list.size()) {
                        break;
                    }
                } else if (view2.getContext() instanceof Activity) {
                    if (((Activity) view2.getContext()).getWindow().getDecorView().isShown() && (view2.getLayoutParams() == null || ((WindowManager.LayoutParams) view2.getLayoutParams()).type != 2005)) {
                        if (view2.getWindowToken() != windowToken) {
                            break;
                        }
                        z2 = false;
                    }
                    i2++;
                } else if (((WindowManager.LayoutParams) view2.getLayoutParams()).type == 2 || ((WindowManager.LayoutParams) view2.getLayoutParams()).type == 2005) {
                    try {
                        if (((WindowManager.LayoutParams) view2.getLayoutParams()).type == 2) {
                            if (view2.findViewById(876547) != null) {
                                break;
                            }
                            if (view2.getWindowToken() == windowToken) {
                                z2 = false;
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    i2++;
                } else {
                    if (view2.getWindowToken() != windowToken) {
                        break;
                    }
                    z2 = false;
                }
            }
            return z2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.view.View r30, float r31, boolean r32, java.util.List<java.lang.Integer> r33) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.a0.y.c.a(android.view.View, float, boolean, java.util.List):boolean");
    }

    public static boolean a(View view, boolean z2, boolean z3, List<Integer> list) {
        return a(view, 0.5f, z3, list);
    }
}

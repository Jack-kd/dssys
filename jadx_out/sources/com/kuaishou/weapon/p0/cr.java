package com.kuaishou.weapon.p0;

import android.os.Build;
import com.kuaishou.weapon.p0.jni.Engine;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public class cr {

    /* renamed from: a, reason: collision with root package name */
    private static int f31016a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f31017b;

    public cr() {
        b();
    }

    private int a(Method method) {
        try {
            int i2 = f31016a;
            if (i2 <= 1 || method == null) {
                return 0;
            }
            return Engine.mmo(method, i2, method.getModifiers());
        } catch (Exception unused) {
            return 0;
        }
    }

    private void b() {
        if (!Engine.loadSuccess || f31017b) {
            return;
        }
        boolean zB = cp.b();
        int i2 = Build.VERSION.SDK_INT;
        if (zB && i2 < 29) {
            f31016a = Engine.off();
        }
        f31017b = true;
    }

    private boolean c() {
        return f31017b && f31016a > 1;
    }

    public int a(Class cls, String str, Object... objArr) {
        try {
            if (c()) {
                return a(df.a(cls, str, objArr));
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public int a(int i2, Class cls, String str, Object... objArr) {
        Method methodA;
        try {
            if (!c() || (methodA = df.a(cls, str, objArr)) == null) {
                return 0;
            }
            return Engine.mqc(methodA, i2);
        } catch (Exception unused) {
            return 0;
        }
    }

    public int a() {
        if (!c()) {
            return -1;
        }
        long jA = co.f31005b.a();
        long jA2 = co.f31004a.a();
        if (f31016a == jA) {
            return (int) jA2;
        }
        return -1;
    }
}

package com.anythink.core.common.u;

import android.content.Context;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.by;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: b, reason: collision with root package name */
    private static volatile e f7846b;

    /* renamed from: a, reason: collision with root package name */
    protected Context f7847a;

    private e(Context context) {
        this.f7847a = context.getApplicationContext();
    }

    public static e a(Context context) {
        if (f7846b == null) {
            synchronized (e.class) {
                try {
                    if (f7846b == null) {
                        f7846b = new e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7846b;
    }

    public static void a(int i2, bx bxVar) {
        a(i2, bxVar, null, -1L);
    }

    public static void a(int i2, bx bxVar, by byVar) {
        a(i2, bxVar, byVar, -1L);
    }

    public static void a(int i2, bx bxVar, by byVar, long j2) {
        if (bxVar == null) {
            return;
        }
        synchronized (bxVar) {
            com.anythink.core.common.u.c.b.a(i2, byVar, true);
            com.anythink.core.common.u.c.b.a(i2, bxVar);
        }
        com.anythink.core.common.u.a.a.a().a(i2, bxVar, byVar, j2);
    }
}

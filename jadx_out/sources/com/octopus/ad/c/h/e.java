package com.octopus.ad.c.h;

import android.content.Context;
import com.octopus.ad.c.h.a;

/* loaded from: classes4.dex */
public class e {
    public static void a(Context context) {
        b.f33838b = a.C0723a.f33836a.a(context.getApplicationContext());
        b.f33837a = true;
    }

    public static String b(Context context) {
        if (b.f33837a) {
            return a.C0723a.f33836a.b(context.getApplicationContext(), "OUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static boolean a() {
        if (b.f33837a) {
            return b.f33838b;
        }
        throw new RuntimeException();
    }
}

package com.anythink.core.common.b;

import android.util.Pair;
import com.anythink.core.e.m;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f2310a = "e";

    public static int a(m mVar, int i2) {
        int iA;
        c cVarA = a(mVar);
        return (cVarA == null || (iA = cVarA.a()) <= 0) ? i2 : iA;
    }

    public static boolean b(m mVar, boolean z2) {
        c cVarA = a(mVar);
        if (cVarA == null || cVarA.c() != 2) {
            return z2;
        }
        return false;
    }

    public static boolean c(m mVar, boolean z2) {
        c cVarA = a(mVar);
        if (cVarA == null || cVarA.h() != 2) {
            return z2;
        }
        return false;
    }

    public static Pair<Boolean, Long> a(m mVar, boolean z2) {
        long jB;
        c cVarA = f.a().a(mVar);
        if (cVarA != null) {
            jB = cVarA.b();
            if (jB == -1) {
                z2 = false;
            }
        } else {
            jB = 0;
        }
        return new Pair<>(Boolean.valueOf(z2), Long.valueOf(jB));
    }

    public static h a(h hVar) {
        f.a();
        if (f.b()) {
            a aVarD = f.d();
            h hVarC = aVarD != null ? aVarD.c() : null;
            if (hVarC != null) {
                return hVarC;
            }
        }
        return hVar;
    }

    public static boolean a() {
        if (f.a().e()) {
            return true;
        }
        if (!f.b()) {
            return false;
        }
        a aVarD = f.d();
        return (aVarD != null ? aVarD.b() : 1) == 2;
    }

    private static c a(m mVar) {
        d dVarB;
        f fVarA = f.a();
        if (f.b() && (dVarB = fVarA.b(mVar)) != null) {
            return dVarB.b();
        }
        return null;
    }
}

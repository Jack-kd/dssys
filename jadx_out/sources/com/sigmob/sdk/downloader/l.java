package com.sigmob.sdk.downloader;

import com.sigmob.sdk.downloader.f;
import java.io.File;

/* loaded from: classes4.dex */
public class l {

    public enum a {
        PENDING,
        RUNNING,
        COMPLETED,
        IDLE,
        CANCELED,
        UNKNOWN
    }

    public static a a(String str, String str2, String str3) {
        return b(d(str, str2, str3));
    }

    public static a b(f fVar) {
        a aVarD = d(fVar);
        a aVar = a.COMPLETED;
        if (aVarD == aVar) {
            return aVar;
        }
        com.sigmob.sdk.downloader.core.dispatcher.b bVarA = g.j().a();
        return bVarA.f(fVar) ? a.PENDING : bVarA.d(fVar) ? a.RUNNING : bVarA.e(fVar) ? a.CANCELED : aVarD;
    }

    public static com.sigmob.sdk.downloader.core.breakpoint.c c(String str, String str2, String str3) {
        return e(d(str, str2, str3));
    }

    public static f d(String str, String str2, String str3) {
        return new f.a(str, str2, str3).a();
    }

    public static com.sigmob.sdk.downloader.core.breakpoint.c e(f fVar) {
        com.sigmob.sdk.downloader.core.breakpoint.g gVarC = g.j().c();
        com.sigmob.sdk.downloader.core.breakpoint.c cVarA = gVarC.a(gVarC.b(fVar));
        if (cVarA == null) {
            return null;
        }
        return cVarA.p();
    }

    public static boolean a(f fVar) {
        return g.j().a().c(fVar) != null;
    }

    public static boolean b(String str, String str2, String str3) {
        return c(d(str, str2, str3));
    }

    public static boolean c(f fVar) {
        return d(fVar) == a.COMPLETED;
    }

    public static a d(f fVar) {
        com.sigmob.sdk.downloader.core.breakpoint.g gVarC = g.j().c();
        com.sigmob.sdk.downloader.core.breakpoint.c cVarA = gVarC.a(fVar.c());
        String strD = fVar.d();
        File fileL = fVar.l();
        File fileN = fVar.n();
        if (cVarA != null) {
            if (!cVarA.b() && cVarA.j() <= 0) {
                return a.UNKNOWN;
            }
            if (fileN != null && fileN.equals(cVarA.o()) && fileN.exists() && cVarA.i() == cVarA.j()) {
                return a.COMPLETED;
            }
            if (strD == null && cVarA.o() != null && cVarA.o().exists()) {
                return a.IDLE;
            }
            if (fileN != null && fileN.equals(cVarA.o()) && fileN.exists()) {
                return a.IDLE;
            }
        } else {
            if (gVarC.a() || gVarC.c(fVar.c())) {
                return a.UNKNOWN;
            }
            if (fileN != null && fileN.exists()) {
                return a.COMPLETED;
            }
            String strA = gVarC.a(fVar.i());
            if (strA != null && new File(fileL, strA).exists()) {
                return a.COMPLETED;
            }
        }
        return a.UNKNOWN;
    }
}

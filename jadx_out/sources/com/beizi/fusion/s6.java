package com.beizi.fusion;

import android.os.Build;
import android.system.Os;
import android.system.StructStat;
import android.system.StructTimespec;

/* loaded from: classes2.dex */
public class s6 {
    public String a() {
        try {
            int i2 = Build.VERSION.SDK_INT;
            StructStat structStatStat = Os.stat("/data/data");
            if (structStatStat == null) {
                return "";
            }
            if (i2 < 27) {
                return structStatStat.st_atime + ".0";
            }
            StructTimespec structTimespec = structStatStat.st_atim;
            return structTimespec.tv_sec + com.anythink.core.common.d.i.f2495E + structTimespec.tv_nsec;
        } catch (Throwable unused) {
            return "";
        }
    }
}

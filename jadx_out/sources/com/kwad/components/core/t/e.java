package com.kwad.components.core.t;

import com.varbto.utils.api.UtilConst;
import java.util.Locale;

/* loaded from: classes4.dex */
public final class e {
    public static String a(long j2, boolean z2) {
        String[] strArr = {" B", " KB", " MB", " GB", " TB", " PB", " EB", " ZB", " YB"};
        if (j2 > 1) {
            double d2 = j2;
            int iLog = (int) (Math.log(d2) / Math.log(1024.0d));
            return String.format(Locale.ENGLISH, "%.1f%s", Double.valueOf(j2 > 1024 ? d2 / Math.pow(1024.0d, iLog) : d2 / 1024.0d), strArr[iLog]);
        }
        return j2 + UtilConst.CRASH_CAT_B;
    }
}

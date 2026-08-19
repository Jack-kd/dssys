package com.ubix.ssp.ad.e.b0.h.s;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.ubix.ssp.ad.e.b0.h.o;

/* loaded from: classes5.dex */
public class f implements c {
    private String b(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || iLastIndexOf <= str.lastIndexOf(47) || iLastIndexOf + 6 <= str.length()) ? "" : str.substring(iLastIndexOf + 1, str.length());
    }

    @Override // com.ubix.ssp.ad.e.b0.h.s.c
    public String a(String str) {
        String strB = b(str);
        String strA = o.a(str);
        if (TextUtils.isEmpty(strB)) {
            return strA;
        }
        return strA + i.f2495E + strB;
    }
}

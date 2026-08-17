package com.octopus.ad.internal.d.a;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.octopus.ad.internal.d.q;

/* loaded from: classes4.dex */
public class f implements c {
    private String b(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || iLastIndexOf <= str.lastIndexOf(47) || iLastIndexOf + 6 <= str.length()) ? "" : str.substring(iLastIndexOf + 1, str.length());
    }

    @Override // com.octopus.ad.internal.d.a.c
    public String a(String str) {
        String strB = b(str);
        String strD = q.d(str);
        if (TextUtils.isEmpty(strB)) {
            return strD;
        }
        return strD + i.f2495E + strB;
    }
}

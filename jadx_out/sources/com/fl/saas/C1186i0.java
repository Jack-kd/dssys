package com.fl.saas;

import android.text.TextUtils;

/* renamed from: com.fl.saas.i0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1186i0 implements N {
    private String b(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || iLastIndexOf <= str.lastIndexOf(47) || iLastIndexOf + 6 <= str.length()) ? "" : str.substring(iLastIndexOf + 1, str.length());
    }

    @Override // com.fl.saas.N
    public String a(String str) {
        String strB = b(str);
        String strA = A0.a(str);
        if (TextUtils.isEmpty(strB)) {
            return strA;
        }
        return strA + com.anythink.core.common.d.i.f2495E + strB;
    }
}

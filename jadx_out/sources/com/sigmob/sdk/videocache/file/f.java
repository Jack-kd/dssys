package com.sigmob.sdk.videocache.file;

import android.text.TextUtils;
import com.sigmob.sdk.videocache.q;

/* loaded from: classes4.dex */
public class f implements c {

    /* renamed from: a, reason: collision with root package name */
    private static final int f38902a = 4;

    private String b(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || iLastIndexOf <= str.lastIndexOf(47) || iLastIndexOf + 6 <= str.length()) ? "" : str.substring(iLastIndexOf + 1, str.length());
    }

    @Override // com.sigmob.sdk.videocache.file.c
    public String a(String str) {
        String strB = b(str);
        String strD = q.d(str);
        if (TextUtils.isEmpty(strB)) {
            return strD;
        }
        return strD + com.anythink.core.common.d.i.f2495E + strB;
    }
}

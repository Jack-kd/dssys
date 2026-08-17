package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public abstract class a2 {
    private static String a(Context context) {
        StringBuilder sb = new StringBuilder();
        String strB = b7.b();
        String strH = b7.h();
        String strE = b7.e();
        String strA = b7.a();
        long jD = b7.d();
        String strC = b7.c();
        sb.append(strB);
        sb.append(strH);
        sb.append(strE);
        sb.append(strA);
        sb.append(jD);
        sb.append(strC);
        sb.append(System.currentTimeMillis());
        String strA2 = th.a(sb.toString());
        t5.b(context, t5.a(), "scopeID", strA2);
        return strA2;
    }

    public static String b(Context context) {
        String strA = t5.a(context, t5.a(), "scopeID", (String) null);
        return TextUtils.isEmpty(strA) ? a(context) : strA;
    }
}

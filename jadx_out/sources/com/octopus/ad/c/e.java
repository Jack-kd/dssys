package com.octopus.ad.c;

import android.content.Context;

/* loaded from: classes4.dex */
public class e {
    public static void a(Context context, d dVar) {
        if (context == null) {
            if (dVar != null) {
                dVar.a("");
            }
        } else {
            String strB = f.b(context.getApplicationContext());
            if (dVar != null) {
                dVar.a(strB);
            }
        }
    }
}

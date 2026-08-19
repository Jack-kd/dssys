package com.ubix.ssp.ad.e.a0.d0;

import android.content.Context;

/* loaded from: classes5.dex */
public class a {
    public static String a(Context context) {
        if (context == null) {
            return "";
        }
        try {
            if (context.getFilesDir() != null) {
                return context.getFilesDir().getPath();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return "";
    }
}

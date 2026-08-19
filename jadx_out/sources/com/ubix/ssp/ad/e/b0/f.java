package com.ubix.ssp.ad.e.b0;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import com.ubix.ssp.ad.e.a0.u;

/* loaded from: classes5.dex */
public class f {
    public static long a(Context context, Object obj) {
        if (!e.f46640a) {
            return 0L;
        }
        return context.getSharedPreferences("UBIXVD_PROGRESS", 0).getLong("newVersion:" + obj.toString(), 0L);
    }

    public static Activity a(Context context) {
        if (context == null) {
            return null;
        }
        try {
        } catch (Exception e2) {
            u.d("catch error", e2.toString());
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void a(Context context, Object obj, long j2) {
        if (e.f46640a) {
            if (j2 < 5000) {
                j2 = 0;
            }
            context.getSharedPreferences("UBIXVD_PROGRESS", 0).edit().putLong("newVersion:" + obj.toString(), j2).apply();
        }
    }
}

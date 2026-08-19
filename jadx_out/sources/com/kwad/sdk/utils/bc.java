package com.kwad.sdk.utils;

import android.content.Context;
import android.content.res.Resources;
import com.kwad.sdk.service.ServiceProvider;

/* loaded from: classes4.dex */
public final class bc {
    public static int aD(Context context, String str) {
        Resources resourcesDN = dN(context);
        if (resourcesDN == null) {
            resourcesDN = context.getResources();
        }
        return resourcesDN.getIdentifier(str, "drawable", context.getPackageName());
    }

    public static Resources dN(Context context) {
        if (context == null) {
            return null;
        }
        return ServiceProvider.Ud().getResources();
    }

    public static int getAppIconId(Context context) {
        int i2;
        try {
            i2 = aa.getPackageInfo(context.getApplicationContext(), context.getPackageName(), 64).applicationInfo.icon;
        } catch (Throwable unused) {
            i2 = 0;
        }
        return i2 <= 0 ? aD(context, "ksad_notification_small_icon") : i2;
    }

    public static int getId(Context context, String str) {
        return getIdentifier(context, str, "id");
    }

    private static int getIdentifier(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, getPackageName(context));
    }

    private static String getPackageName(Context context) {
        return ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fu() ? "com.kwad.sdk" : context.getPackageName();
    }
}

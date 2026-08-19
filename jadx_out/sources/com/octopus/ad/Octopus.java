package com.octopus.ad;

import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.octopus.ad.d.b.g;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.utilities.IS2SManager;
import com.octopus.ad.model.UserProfile;

/* loaded from: classes4.dex */
public class Octopus {

    /* renamed from: a, reason: collision with root package name */
    private static OctopusAdSdkController f33219a = null;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f33220b = false;

    /* renamed from: c, reason: collision with root package name */
    private static UserProfile f33221c;

    public static OctopusAdSdkController getCustomController() {
        return f33219a;
    }

    public static String getOaid(Context context) {
        return g.a(context);
    }

    public static IS2SManager getS2SManger() {
        return q.a();
    }

    public static String getSdkVersion() {
        return "2.6.5.7";
    }

    public static UserProfile getUserProfile() {
        return f33221c;
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void init(Context context, String str) {
        q.a().a(context, str);
    }

    public static boolean isHttpsEnabled() {
        return q.a().f35016g;
    }

    public static boolean isLimitPersonalAds() {
        return f33220b;
    }

    public static void logTagInfo(String str, boolean z2) {
        q.a().a(str, z2);
    }

    public static void setAppMuted(boolean z2) {
        q.a().a(z2);
    }

    public static void setAppVolume(float f2) {
        q.a().a(f2);
    }

    public static void setCustomController(OctopusAdSdkController octopusAdSdkController) {
        f33219a = octopusAdSdkController;
    }

    public static void setIsDownloadDirect(boolean z2) {
        q.a().b(z2);
    }

    public static void setLimitPersonalAds(boolean z2) {
        f33220b = z2;
    }

    public static void setTimeout(int i2) {
        q.a().b(i2);
    }

    public static void setUserProfile(UserProfile userProfile) {
        f33221c = userProfile;
    }

    public static void useHttps(boolean z2) {
        q.a().f35016g = z2;
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void init(Context context, String str, OctopusAdSdkController octopusAdSdkController) {
        if (f33219a == null) {
            f33219a = octopusAdSdkController;
        }
        q.a().a(context, str);
        q.a().b(str);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void init(Context context, String str, OctopusAdSdkController octopusAdSdkController, String str2) {
        if (f33219a == null) {
            f33219a = octopusAdSdkController;
        }
        q.a().a(context, str);
        if ("OctopusGroup".equals(str2)) {
            q.a().a(str);
        } else {
            q.a().b(str);
        }
    }
}

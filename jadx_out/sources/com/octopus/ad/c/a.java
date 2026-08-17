package com.octopus.ad.c;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* loaded from: classes4.dex */
public class a {
    @SuppressLint({"SuspiciousIndentation"})
    public static c a() {
        String str = Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (b.b()) {
            return new com.octopus.ad.c.b.a();
        }
        if (b.c()) {
            return new com.octopus.ad.c.c.a();
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_XIAOMI) || str.equalsIgnoreCase("redmi") || str.equalsIgnoreCase("meitu") || str.equalsIgnoreCase("小米") || str.equalsIgnoreCase("blackshark")) {
            return new com.octopus.ad.c.f.b();
        }
        if (str.equalsIgnoreCase("vivo")) {
            return new com.octopus.ad.c.j.e();
        }
        if (str.equalsIgnoreCase("oppo") || str.equalsIgnoreCase("oneplus") || str.equalsIgnoreCase("realme")) {
            return new com.octopus.ad.c.h.f();
        }
        if (str.equalsIgnoreCase("lenovo") || str.equalsIgnoreCase("zuk")) {
            return new com.octopus.ad.c.d.b();
        }
        if (str.equalsIgnoreCase("nubia")) {
            return new com.octopus.ad.c.g.a();
        }
        if (str.equalsIgnoreCase("samsung")) {
            return new com.octopus.ad.c.i.b();
        }
        if (str.equalsIgnoreCase("meizu") || str.equalsIgnoreCase("mblu") || b.a()) {
            return new com.octopus.ad.c.e.a();
        }
        if (b.d()) {
            return new com.octopus.ad.c.a.a();
        }
        return null;
    }
}

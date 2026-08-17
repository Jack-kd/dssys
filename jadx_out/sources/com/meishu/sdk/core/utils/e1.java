package com.meishu.sdk.core.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.BaseAdSlot;
import java.net.URISyntaxException;

/* loaded from: classes4.dex */
public class e1 {

    /* renamed from: a, reason: collision with root package name */
    public static BaseAdSlot f31883a;

    public static boolean a(Context context, BaseAdSlot baseAdSlot) {
        BaseAdSlot baseAdSlot2;
        if (!b(context) || TextUtils.isEmpty(baseAdSlot.getReward_tmp_url()) || baseAdSlot.getRewardTmpId() <= 0 || baseAdSlot.getReward_tmp_type() <= 0 || !com.meishu.sdk.core.webview.o.a(baseAdSlot.getReward_tmp_url())) {
            return false;
        }
        f31883a = baseAdSlot;
        try {
            if (!TextUtils.isEmpty(((com.meishu.sdk.meishu_ad.nativ.f) baseAdSlot).title) || !TextUtils.isEmpty(f31883a.getDesc()) || !TextUtils.isEmpty(f31883a.getIcon())) {
                if (c(context)) {
                    return true;
                }
                if (a(context) && (baseAdSlot2 = f31883a) != null && !TextUtils.isEmpty(baseAdSlot2.getDeep_link())) {
                    return true;
                }
                try {
                    if (f31883a.getInteractionType() == 1 && f31883a.getDirect_market() == 1) {
                        if (!TextUtils.isEmpty(f31883a.getPackageName())) {
                            return true;
                        }
                    }
                } catch (Exception unused) {
                }
                if (f31883a.getInteractionType() != 1) {
                    if (f31883a.getdUrl() != null) {
                        return true;
                    }
                }
            }
        } catch (Exception unused2) {
        }
        return false;
    }

    public static boolean b(Context context) {
        try {
            return ((context.getResources().getConfiguration().orientation == 2) || Boolean.TRUE.equals(com.meishu.sdk.platform.ms.splash.k.a(context))) ? false : true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    public static boolean c(Context context) {
        if (!TextUtils.isEmpty(f31883a.getWx_username()) && !TextUtils.isEmpty(f31883a.getWx_appid())) {
            try {
                if (context.getPackageManager().getPackageInfo("com.tencent.mm", 256) != null) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean a(Context context) throws URISyntaxException {
        BaseAdSlot baseAdSlot = f31883a;
        if (baseAdSlot == null) {
            return false;
        }
        String packageName = baseAdSlot.getPackageName();
        try {
            if (!TextUtils.isEmpty(packageName) && !packageName.contains("://")) {
                if (context.getPackageManager().getPackageInfo(packageName, 256) != null) {
                    return true;
                }
            } else {
                Intent uri = Intent.parseUri(f31883a.getDeep_link(), 0);
                uri.addCategory("android.intent.category.BROWSABLE");
                uri.setComponent(null);
                uri.setSelector(null);
                if (uri.resolveActivity(AdSdk.getContext().getPackageManager()) != null) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}

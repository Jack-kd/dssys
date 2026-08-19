package com.meishu.sdk.core.utils;

import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.MiitHelper;

/* loaded from: classes4.dex */
public class k implements MiitHelper.a {
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        j.f31914a = str;
        try {
            try {
                String strC = g1.c(str);
                AdSdk.getSharedPreferences().edit().putString("oaid_e", strC).apply();
                r.a().b("oaid_e", strC);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            LogUtil.d("DeviceUtil", "Write oaid to cache, oaid=" + j.f31914a);
        } catch (Throwable th) {
            LogUtil.d("DeviceUtil", "Write oaid to cache failed");
            th.printStackTrace();
        }
    }
}

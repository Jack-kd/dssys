package com.meishu.sdk.core;

import com.meishu.sdk.core.utils.p;
import com.meishu.sdk.core.utils.y0;
import com.sigmob.sdk.base.n;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class MAdManager implements IAdManager {
    private static final String TAG = "MsAdManager";

    @Override // com.meishu.sdk.core.IAdManager
    public String getBuyerId(Map<String, Object> map) {
        try {
            if (AdSdk.getContext() == null) {
                return "";
            }
            HashMap map2 = new HashMap();
            if (map != null) {
                map2.put(n.f36450m, map);
            }
            map2.put("uuid", MSAdConfig.initUUID());
            map2.put("msec", String.valueOf(System.currentTimeMillis()));
            map2.put("code", Long.toString(2051300L));
            String str = y0.f32057a;
            map2.put("ver", "20251125");
            map2.put("rext", 1);
            return p.a(map2);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    @Override // com.meishu.sdk.core.IAdManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getSDKInfo(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.MAdManager.getSDKInfo(java.lang.String):java.lang.String");
    }
}

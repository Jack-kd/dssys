package com.meishu.sdk.core.utils;

import com.meishu.sdk.core.ad.BaseAdSlot;

/* loaded from: classes4.dex */
public class l1 {
    public static void a(BaseAdSlot baseAdSlot, int i2, boolean z2) {
        try {
            int i3 = 2;
            if (baseAdSlot.getAdPatternType() != 2) {
                i3 = 1;
            }
            p1.a(baseAdSlot.getEventUrl(), 24, 0, "{\"type\":" + i3 + ",\"source\":" + i2 + ",\"cache\":" + (z2 ? 1 : 0) + "}");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}

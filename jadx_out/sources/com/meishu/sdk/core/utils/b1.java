package com.meishu.sdk.core.utils;

import com.meishu.sdk.core.ad.BaseAdSlot;

/* loaded from: classes4.dex */
public class b1 {
    public static void a(BaseAdSlot baseAdSlot, int i2) {
        a(baseAdSlot, i2, 0, "");
    }

    public static void a(BaseAdSlot baseAdSlot, int i2, int i3, String str) {
        try {
            p1.a(baseAdSlot.getEventUrl(), i2, i3, (i2 == 17 || i2 == 31) ? a(3, 0, 0, str) : a(3, str));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String a(int i2, String str) {
        return "{\"rewardType\":" + i2 + ",\"msg\":\"" + str + "\"}";
    }

    public static String a(int i2, int i3, int i4, String str) {
        return "{\"rewardType\":" + i2 + ",\"rewardCompleteType\":" + i3 + ",\"rewardTempId\":" + i4 + ",\"web_temp_id\":" + i4 + ",\"msg\":\"" + str + "\"}";
    }
}

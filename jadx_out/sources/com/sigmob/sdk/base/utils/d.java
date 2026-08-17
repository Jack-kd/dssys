package com.sigmob.sdk.base.utils;

import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.SlotAdSetting;
import java.util.HashMap;
import java.util.Random;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap<String, a> f36579a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public static int f36580b = 0;

    /* renamed from: c, reason: collision with root package name */
    public static int f36581c = 1;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public Integer f36582a = 0;

        /* renamed from: b, reason: collision with root package name */
        public Integer f36583b = 0;

        public String toString() {
            return "CLickCallbackObj{clickLoseRate=" + this.f36582a + ", clickCbState=" + this.f36583b + '}';
        }
    }

    public static a a(String str, BaseAdUnit baseAdUnit) {
        SigmobLog.d(str + "#calResultWithAssign");
        a aVarB = b(str, baseAdUnit);
        a(str, baseAdUnit, aVarB);
        return aVarB;
    }

    public static a b(String str, BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return null;
        }
        String requestId = baseAdUnit.getRequestId();
        int ad_type = baseAdUnit.getAd_type();
        HashMap<String, a> map = f36579a;
        if (map.get(requestId) == null) {
            a(baseAdUnit);
        }
        a aVar = map.get(requestId);
        SigmobLog.d(str + "#getObj: requestId = " + requestId + ", adType = " + ad_type + ", obj = " + aVar);
        return aVar;
    }

    public static void a(BaseAdUnit baseAdUnit) {
        SlotAdSetting slotAdSetting;
        if (baseAdUnit == null || (slotAdSetting = baseAdUnit.getSlotAdSetting()) == null) {
            return;
        }
        String requestId = baseAdUnit.getRequestId();
        Integer num = slotAdSetting.click_lose_rate;
        if (num == null) {
            return;
        }
        a(requestId, num, Integer.valueOf(new Random().nextInt(100) + 1 > num.intValue() ? 0 : 1));
    }

    public static void a(String str, BaseAdUnit baseAdUnit, a aVar) {
        SigmobLog.d(str + "#assignValue: start");
        if (baseAdUnit == null) {
            return;
        }
        Integer numValueOf = Integer.valueOf(aVar == null ? 0 : aVar.f36582a.intValue());
        Integer numValueOf2 = Integer.valueOf(aVar == null ? f36580b : aVar.f36583b.intValue());
        ClickCommon clickCommon = baseAdUnit.getClickCommon();
        clickCommon.click_lose_rate = numValueOf;
        clickCommon.click_cb_state = numValueOf2;
        baseAdUnit.getMacroCommon().addMarcoKey(SigMacroCommon._ISNC_, String.valueOf(numValueOf2));
        SigmobLog.d(str + "#assignValue: end");
    }

    public static void a(String str, Integer num, Integer num2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        HashMap<String, a> map = f36579a;
        if (map.get(str) == null) {
            a aVar = new a();
            aVar.f36582a = num;
            aVar.f36583b = num2;
            map.put(str, aVar);
        }
    }

    public static boolean a(a aVar) {
        Integer num;
        return aVar == null || (num = aVar.f36583b) == null || num.intValue() == f36580b;
    }
}

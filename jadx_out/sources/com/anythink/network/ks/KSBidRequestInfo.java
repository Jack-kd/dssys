package com.anythink.network.ks;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.common.k;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.NativeAdExtraData;
import com.kwad.sdk.api.model.SplashAdExtraData;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class KSBidRequestInfo extends ATBidRequestInfo {

    /* renamed from: a, reason: collision with root package name */
    String f9923a;

    /* renamed from: b, reason: collision with root package name */
    JSONObject f9924b = new JSONObject();

    /* renamed from: c, reason: collision with root package name */
    int f9925c;

    /* renamed from: d, reason: collision with root package name */
    String f9926d;

    /* renamed from: e, reason: collision with root package name */
    String f9927e;

    public KSBidRequestInfo(Map<String, Object> map, Map<String, Object> map2, int i2) {
        try {
            String str = (String) map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ACCOUNT_ID);
            String str2 = (String) map.get("position_id");
            if (map.containsKey("orientation")) {
                this.f9925c = Integer.parseInt(map.get("orientation").toString());
            }
            if (map2 != null) {
                this.f9926d = map2.get("user_id") != null ? map2.get("user_id").toString() : "";
                this.f9927e = map2.get(ATAdConst.KEY.USER_CUSTOM_DATA) != null ? map2.get(ATAdConst.KEY.USER_CUSTOM_DATA).toString() : "";
            }
            if (!TextUtils.isEmpty(this.f9927e) && this.f9927e.contains(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME)) {
                this.f9927e = this.f9927e.replace(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME, str2 + "");
            }
            HashMap map3 = new HashMap();
            if (!TextUtils.isEmpty(this.f9926d)) {
                map3.put("thirdUserId", this.f9926d);
            }
            if (!TextUtils.isEmpty(this.f9927e)) {
                map3.put("extraData", this.f9927e);
            }
            boolean z2 = true;
            KsScene.Builder builderAdNum = new KsScene.Builder(Long.parseLong(str2)).adNum(1);
            int i3 = 2;
            if (this.f9925c != 2) {
                i3 = 1;
            }
            KsScene.Builder builderScreenOrientation = builderAdNum.screenOrientation(i3);
            builderScreenOrientation = map3.isEmpty() ? builderScreenOrientation : builderScreenOrientation.rewardCallbackExtraData(map3);
            Object obj = map2.containsKey(ATAdConst.KEY.AD_WIDTH) ? map2.get(ATAdConst.KEY.AD_WIDTH) : null;
            Object obj2 = map2.containsKey(ATAdConst.KEY.AD_HEIGHT) ? map2.get(ATAdConst.KEY.AD_HEIGHT) : null;
            if (obj != null) {
                try {
                    int i4 = (int) Double.parseDouble(obj.toString());
                    if (i4 > 0) {
                        builderScreenOrientation.width(i4);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            if (obj2 != null) {
                try {
                    int i5 = (int) Double.parseDouble(obj2.toString());
                    if (i5 > 0) {
                        builderScreenOrientation.height(i5);
                    }
                } catch (Throwable unused) {
                }
            }
            try {
                Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(28);
                if (i2 == 4) {
                    SplashAdExtraData splashAdExtraData = new SplashAdExtraData();
                    splashAdExtraData.setDisableRotateStatus(!boolIsShakeEnabled.booleanValue());
                    splashAdExtraData.setDisableShakeStatus(!boolIsShakeEnabled.booleanValue());
                    splashAdExtraData.setDisableSlideStatus(!boolIsShakeEnabled.booleanValue());
                    builderScreenOrientation.setSplashExtraData(splashAdExtraData);
                } else if (i2 == 0) {
                    NativeAdExtraData nativeAdExtraData = new NativeAdExtraData();
                    if (boolIsShakeEnabled != null) {
                        nativeAdExtraData.setEnableShake(boolIsShakeEnabled.booleanValue());
                        nativeAdExtraData.setEnableRotate(boolIsShakeEnabled.booleanValue());
                    } else {
                        nativeAdExtraData.setEnableShake(ATInitMediation.getIntFromMap(map, k.aH) == 1);
                        if (ATInitMediation.getIntFromMap(map, "rotate_type") != 1) {
                            z2 = false;
                        }
                        nativeAdExtraData.setEnableRotate(z2);
                    }
                    builderScreenOrientation.setNativeAdExtraData(nativeAdExtraData);
                }
            } catch (Throwable unused2) {
            }
            this.f9923a = KsAdSDK.getLoadManager().getBidRequestTokenV2(builderScreenOrientation.build());
            this.f9924b.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ACCOUNT_ID, str);
            this.f9924b.put("unit_id", str2);
            this.f9924b.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BID_TOKEN, this.f9923a);
        } catch (Throwable unused3) {
        }
    }

    public boolean isValid() {
        return !TextUtils.isEmpty(this.f9923a);
    }

    @Override // com.anythink.core.api.ATBidRequestInfo
    public JSONObject toRequestJSONObject() {
        return this.f9924b;
    }
}

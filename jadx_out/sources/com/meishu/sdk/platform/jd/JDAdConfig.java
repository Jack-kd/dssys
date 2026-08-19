package com.meishu.sdk.platform.jd;

import android.app.Application;
import android.content.Context;
import com.jd.ad.sdk.bl.initsdk.JADPrivateController;
import com.jd.ad.sdk.bl.initsdk.JADYunSdk;
import com.jd.ad.sdk.bl.initsdk.JADYunSdkConfig;
import com.jd.ad.sdk.dl.baseinfo.JADLocation;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.b;

/* loaded from: classes4.dex */
public class JDAdConfig extends b {
    @Override // com.meishu.sdk.core.b
    public void onInit(Context context, String str, String str2) {
        if (context.getApplicationContext() instanceof Application) {
            JADYunSdk.init((Application) context.getApplicationContext(), new JADYunSdkConfig.Builder().setAppId(str).setEnableLog(true).setPrivateController(new JADPrivateController() { // from class: com.meishu.sdk.platform.jd.JDAdConfig.1
                public String getImei() {
                    return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().getDevImei() : super.getImei();
                }

                public JADLocation getLocation() {
                    return super.getLocation();
                }

                public String getOaid() {
                    return AdSdk.getLocalOaid();
                }

                public boolean isCanUseIP() {
                    return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().isCanUsePhoneState() : super.isCanUseIP();
                }

                public boolean isCanUseLocation() {
                    return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().isCanUseLocation() : super.isCanUseLocation();
                }

                public boolean isCanUsePhoneState() {
                    return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().isCanUsePhoneState() : super.isCanUsePhoneState();
                }
            }).build());
        }
    }
}

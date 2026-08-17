package com.ubix.ssp.open.manager;

import com.ubix.ssp.open.AdLoadCallbackListener;
import com.ubix.ssp.open.UBiXAdSetting;

/* loaded from: classes5.dex */
public interface InitManager {
    String getSdkVersion();

    void launchSDK(String str);

    void launchSDK(String str, UBiXAdSetting uBiXAdSetting);

    void launchSDK(String str, UBiXAdSetting uBiXAdSetting, AdLoadCallbackListener adLoadCallbackListener);

    void setDebugLog(boolean z2);
}

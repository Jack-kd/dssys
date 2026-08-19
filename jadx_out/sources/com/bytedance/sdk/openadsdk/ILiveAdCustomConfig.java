package com.bytedance.sdk.openadsdk;

import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface ILiveAdCustomConfig {
    String convertToEnterFromMerge(int i2);

    String convertToEnterMethod(int i2, boolean z2);

    Object invoke(int i2, Bundle bundle);

    void onEventV3(String str, JSONObject jSONObject);

    int openLR(String str);
}

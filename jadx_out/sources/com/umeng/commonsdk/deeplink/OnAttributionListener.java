package com.umeng.commonsdk.deeplink;

import org.json.JSONObject;

/* loaded from: classes5.dex */
public interface OnAttributionListener {
    void onAttributionFail(int i2);

    void onAttributionSuccess(JSONObject jSONObject);
}

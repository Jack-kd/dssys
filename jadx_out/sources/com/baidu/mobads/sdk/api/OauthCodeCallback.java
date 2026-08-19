package com.baidu.mobads.sdk.api;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public interface OauthCodeCallback {
    void onFailure(int i2, String str, JSONObject jSONObject);

    void onSuccess(String str, JSONObject jSONObject);
}

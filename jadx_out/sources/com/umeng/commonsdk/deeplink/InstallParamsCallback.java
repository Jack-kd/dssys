package com.umeng.commonsdk.deeplink;

import java.util.Map;

/* loaded from: classes5.dex */
public interface InstallParamsCallback {
    void onFailure(int i2, String str);

    void onSuccess(Map<String, Object> map);
}

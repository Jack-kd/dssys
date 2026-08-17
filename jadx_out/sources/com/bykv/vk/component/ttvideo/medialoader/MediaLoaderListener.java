package com.bykv.vk.component.ttvideo.medialoader;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface MediaLoaderListener {
    long getInt64Value(int i2, long j2);

    void onDataLoaderError(int i2, String str);

    void onLogInfo(int i2, String str, JSONObject jSONObject);

    void onNotify(int i2, long j2, long j3, String str);

    void onSwitchLoaderType(int i2, String str);
}

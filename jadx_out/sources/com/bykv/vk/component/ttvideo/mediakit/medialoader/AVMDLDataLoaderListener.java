package com.bykv.vk.component.ttvideo.mediakit.medialoader;

/* loaded from: classes3.dex */
public interface AVMDLDataLoaderListener {
    String getCheckSumInfo(String str);

    long getInt64Value(int i2, long j2);

    String getStringValue(int i2, long j2, String str);

    void onNotify(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);
}

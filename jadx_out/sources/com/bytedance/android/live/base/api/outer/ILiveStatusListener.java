package com.bytedance.android.live.base.api.outer;

/* loaded from: classes3.dex */
public interface ILiveStatusListener {
    void onError(String str);

    void onFirstFrame();

    void onLiveStatusChange(boolean z2);

    void onPrepare();

    void onRoomInvalid();

    void onVideoSizeChanged(int i2, int i3);
}

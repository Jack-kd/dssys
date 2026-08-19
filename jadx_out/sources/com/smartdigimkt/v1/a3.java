package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;

/* loaded from: classes5.dex */
public interface a3 {
    void destroyPlayerView(int i2);

    long getVideoCurrentPosition();

    void initPlayerView(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.c2.c cVar2, com.smartdigimkt.u1.c cVar3);

    void pauseVideo();

    void resumeVideo();

    void setATImproveClickViewController(com.smartdigimkt.k2.c cVar);

    void setAutoPlay(String str);

    void setIsMuted(boolean z2);

    void setPlayerOnClickListener(View.OnClickListener onClickListener);

    void setVideoListener(SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener);
}

package com.ubix.ssp.open.nativee;

import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface UBiXVideoInteractionListener {
    void onVideoCached();

    void onVideoClicked();

    void onVideoComplete();

    void onVideoError(AdError adError);

    void onVideoLoading();

    void onVideoPause();

    void onVideoProgressUpdate(long j2, long j3);

    void onVideoResume();

    void onVideoStart();
}

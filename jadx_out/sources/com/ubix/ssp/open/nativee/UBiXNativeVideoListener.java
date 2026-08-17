package com.ubix.ssp.open.nativee;

import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface UBiXNativeVideoListener {
    void onVideoComplete();

    void onVideoError(AdError adError);

    void onVideoPause();

    void onVideoProgressUpdate(long j2, long j3);

    void onVideoResume();

    void onVideoStart();
}

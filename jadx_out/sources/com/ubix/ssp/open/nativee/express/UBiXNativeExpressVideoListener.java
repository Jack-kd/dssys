package com.ubix.ssp.open.nativee.express;

import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface UBiXNativeExpressVideoListener {
    void onVideoComplete();

    void onVideoError(AdError adError);

    void onVideoPause();

    void onVideoProgressUpdate(long j2, long j3);

    void onVideoResume();

    void onVideoStart();
}

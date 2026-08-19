package com.octopus.ad.internal.video;

import com.octopus.ad.d.b.f;

/* loaded from: classes4.dex */
public abstract class VideoStateListener {
    public void onVideoCompleted() {
        f.b("VideoStateListener", "onVideoCompleted");
    }

    public void onVideoError(int i2, int i3) {
        f.b("VideoStateListener", "onVideoError");
    }

    public void onVideoPause() {
        f.b("VideoStateListener", "onVideoPause");
    }

    public void onVideoReady() {
        f.b("VideoStateListener", "onVideoReady");
    }

    public void onVideoResume() {
        f.b("VideoStateListener", "onVideoResume");
    }

    public void onVideoStart() {
        f.b("VideoStateListener", "onVideoStart");
    }
}

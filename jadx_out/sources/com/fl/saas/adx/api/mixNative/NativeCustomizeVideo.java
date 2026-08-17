package com.fl.saas.adx.api.mixNative;

import com.fl.saas.adx.base.interfaces.CustomizeVideo;

/* loaded from: classes3.dex */
public interface NativeCustomizeVideo extends CustomizeVideo {
    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    String getVideoUrl();

    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    void reportVideoAutoStart();

    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    void reportVideoBreak(long j2);

    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    void reportVideoContinue(long j2);

    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    void reportVideoError(long j2, int i2, int i3);

    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    void reportVideoFinish();

    void reportVideoFirst();

    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    void reportVideoPause(long j2);

    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    void reportVideoStart();

    void reportVideoStart(long j2);

    @Override // com.fl.saas.adx.base.interfaces.CustomizeVideo
    void reportVideoStartError(int i2, int i3);

    void reportVideoThird();

    void reportVideomMidpoint();
}

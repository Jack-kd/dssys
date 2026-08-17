package com.fl.saas.adx.base.interfaces;

/* loaded from: classes3.dex */
public interface CustomizeVideo {
    String getVideoUrl();

    void reportVideoAutoStart();

    void reportVideoBreak(long j2);

    void reportVideoContinue(long j2);

    void reportVideoError(long j2, int i2, int i3);

    void reportVideoFinish();

    void reportVideoPause(long j2);

    void reportVideoStart();

    void reportVideoStartError(int i2, int i3);
}

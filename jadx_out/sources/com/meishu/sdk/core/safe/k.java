package com.meishu.sdk.core.safe;

import android.media.MediaPlayer;

/* loaded from: classes4.dex */
public class k implements MediaPlayer.OnVideoSizeChangedListener {
    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
        try {
            safeOnVideoSizeChanged(mediaPlayer, i2, i3);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    public void safeOnVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
    }
}

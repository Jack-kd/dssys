package com.meishu.sdk.core.safe;

import android.media.MediaPlayer;

/* loaded from: classes4.dex */
public class d implements MediaPlayer.OnBufferingUpdateListener {
    public void a(MediaPlayer mediaPlayer, int i2) {
        throw null;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
        try {
            a(mediaPlayer, i2);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }
}

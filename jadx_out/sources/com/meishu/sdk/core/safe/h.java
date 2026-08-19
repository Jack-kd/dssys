package com.meishu.sdk.core.safe;

import android.media.MediaPlayer;

/* loaded from: classes4.dex */
public class h implements MediaPlayer.OnPreparedListener {
    public void a(MediaPlayer mediaPlayer) {
        throw null;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        try {
            a(mediaPlayer);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }
}

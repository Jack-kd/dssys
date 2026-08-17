package com.meishu.sdk.core.safe;

import android.media.MediaPlayer;

/* loaded from: classes4.dex */
public class e implements MediaPlayer.OnCompletionListener {
    public void a(MediaPlayer mediaPlayer) {
        throw null;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        try {
            a(mediaPlayer);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }
}

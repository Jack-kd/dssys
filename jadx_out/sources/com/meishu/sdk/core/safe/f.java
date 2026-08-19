package com.meishu.sdk.core.safe;

import android.media.MediaPlayer;

/* loaded from: classes4.dex */
public class f implements MediaPlayer.OnErrorListener {
    public boolean a(MediaPlayer mediaPlayer, int i2, int i3) {
        throw null;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        try {
            return a(mediaPlayer, i2, i3);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
            return false;
        }
    }
}

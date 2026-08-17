package com.meishu.sdk.core.safe;

import android.media.MediaPlayer;

/* loaded from: classes4.dex */
public class g implements MediaPlayer.OnInfoListener {
    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3) {
        try {
            return safeOnInfo(mediaPlayer, i2, i3);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
            return false;
        }
    }

    public boolean safeOnInfo(MediaPlayer mediaPlayer, int i2, int i3) {
        return false;
    }
}

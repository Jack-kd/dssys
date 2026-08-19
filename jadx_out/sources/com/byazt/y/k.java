package com.byazt.y;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 42})
/* loaded from: classes3.dex */
public class k extends Handler {
    public WeakReference<hp> hp;

    public interface hp {
        void hp(Message message);
    }

    public k(Looper looper, hp hpVar) {
        super(looper);
        this.hp = new WeakReference<>(hpVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        hp hpVar = this.hp.get();
        if (hpVar == null || message == null) {
            return;
        }
        hpVar.hp(message);
    }
}

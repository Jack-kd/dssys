package com.byazt.ez;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 1109, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends Handler {
    public final WeakReference<hp> hp;

    public interface hp {
        void hp(Message message);
    }

    public s(Looper looper, hp hpVar) {
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

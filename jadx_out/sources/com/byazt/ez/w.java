package com.byazt.ez;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1109, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public final class w implements Handler.Callback {
    public volatile Handler hp = new Handler(hp.hp, this);

    @com.byazt.kj.hp(hp = {0, 1, 1109, 8})
    public static class hp {
        public static final Looper hp;

        static {
            HandlerThread handlerThread = new HandlerThread("DownloadWatchDog");
            handlerThread.start();
            hp = handlerThread.getLooper();
        }
    }

    public interface l {
        long hp();
    }

    public static Looper hp() {
        return hp.hp;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        if (message.what != 0) {
            return true;
        }
        try {
            l lVar = (l) message.obj;
            long jHp = lVar.hp();
            if (jHp <= 0) {
                return true;
            }
            hp(lVar, jHp);
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    public void l() {
        Handler handler = this.hp;
        if (handler == null) {
            return;
        }
        this.hp = null;
        handler.removeCallbacksAndMessages(null);
    }

    public void hp(l lVar, long j2) {
        Handler handler = this.hp;
        if (handler == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 0;
        messageObtain.obj = lVar;
        handler.sendMessageDelayed(messageObtain, j2);
    }
}

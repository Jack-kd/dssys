package com.byazt.lo;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, 34})
/* loaded from: classes3.dex */
public class l extends Handler implements jx {
    public WeakReference<r.hp> hp;

    /* renamed from: l, reason: collision with root package name */
    public Looper f22671l;

    public l(Looper looper, r.hp hpVar) {
        super(looper);
        this.f22671l = looper;
        if (hpVar != null) {
            this.hp = new WeakReference<>(hpVar);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        r.hp hpVar;
        WeakReference<r.hp> weakReference = this.hp;
        if (weakReference == null || (hpVar = weakReference.get()) == null || message == null) {
            return;
        }
        hpVar.handleMsg(message);
    }

    @Override // com.byazt.lo.jx
    public void hp() {
        removeCallbacksAndMessages(null);
        WeakReference<r.hp> weakReference = this.hp;
        if (weakReference != null) {
            weakReference.clear();
            this.hp = null;
        }
    }

    public void l() {
        Looper looper = this.f22671l;
        if (looper != null) {
            looper.quit();
            this.f22671l = null;
        }
    }

    public void hp(r.hp hpVar) {
        this.hp = new WeakReference<>(hpVar);
    }
}

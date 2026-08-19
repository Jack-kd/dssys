package com.byazt.lo;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static final hp hp = new hp();

    /* renamed from: l, reason: collision with root package name */
    public volatile j<l> f22668l = j.hp(2);

    public static hp hp() {
        return hp;
    }

    private l l(r.hp hpVar, String str) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        return new l(handlerThread.getLooper(), hpVar);
    }

    public l hp(r.hp hpVar, final String str) {
        l lVar = this.f22668l != null ? (l) this.f22668l.hp() : null;
        if (lVar == null) {
            return l(hpVar, str);
        }
        lVar.hp(hpVar);
        lVar.post(new Runnable() { // from class: com.byazt.lo.hp.1
            @Override // java.lang.Runnable
            public void run() {
                Thread.currentThread().setName(str);
            }
        });
        return lVar;
    }

    public void l() {
        hp(0);
        this.f22668l = null;
    }

    public Handler hp(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "csj-handler";
        }
        return hp(null, str);
    }

    public boolean hp(Handler handler) {
        if (this.f22668l == null) {
            if (handler != null) {
                handler.getLooper().quit();
            }
            return false;
        }
        if (!(handler instanceof l)) {
            return false;
        }
        l lVar = (l) handler;
        if (this.f22668l.hp((j<l>) lVar)) {
            return true;
        }
        lVar.l();
        return true;
    }

    private void hp(int i2) {
        l lVar;
        while (this.f22668l.l() > i2 && (lVar = (l) this.f22668l.hp()) != null) {
            lVar.l();
        }
    }
}

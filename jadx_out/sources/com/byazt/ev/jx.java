package com.byazt.ev;

import android.content.Context;
import com.byazt.hc.w;
import com.byazt.kw.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_OPENED_TIME, 30})
/* loaded from: classes2.dex */
public class jx implements l {
    public Context hp;

    public jx(Context context) {
        this.hp = context;
    }

    @Override // com.byazt.ev.l
    public boolean hp(Throwable th) {
        return true;
    }

    @Override // com.byazt.ev.l
    public void hp(long j2, Thread thread, Throwable th) throws Throwable {
        com.byazt.rw.hp hpVarHp = com.byazt.rw.hp.hp(j2, this.hp, thread, th);
        Context context = this.hp;
        com.byazt.aj.jx jxVar = com.byazt.aj.jx.JAVA;
        j.hp(context, jxVar.hp(), Thread.currentThread().getName());
        com.byazt.ms.hp.hp().hp(w.hp().hp(jxVar, hpVarHp).hp());
    }
}

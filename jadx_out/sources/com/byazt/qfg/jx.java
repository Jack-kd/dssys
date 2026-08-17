package com.byazt.qfg;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.qfg.q;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 30})
/* loaded from: classes3.dex */
public abstract class jx {
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public q.hp f24678j;
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    public ViewGroup f24679l;

    public abstract String hp();

    public abstract void hp(com.byazt.go.hp hpVar);

    public void hp(boolean z2) {
    }

    public void l() {
        q.hp hpVar = this.f24678j;
        if (hpVar != null) {
            hpVar.l();
        }
    }

    public void hp(Context context, ViewGroup viewGroup, mp mpVar) {
        this.hp = context;
        this.f24679l = viewGroup;
        this.jx = mpVar;
    }

    public void hp(com.byazt.oh.j jVar, q.hp hpVar) {
        com.byazt.jdb.j.jx(this.jx, "splash_ad", hp());
        this.f24679l.setVisibility(0);
        this.f24678j = hpVar;
    }
}

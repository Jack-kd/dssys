package com.byazt.ud;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 591, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public abstract class xs implements com.byazt.ii.hp {
    public com.byazt.ii.hp hp;
    public com.byazt.ki.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ii.hp f26143l;

    public xs(com.byazt.ki.jx jxVar) {
        this.jx = jxVar;
    }

    public void hp(com.byazt.ii.hp hpVar) {
        this.hp = hpVar;
    }

    public void l(com.byazt.ii.hp hpVar) {
        this.f26143l = hpVar;
    }

    public String toString() {
        return l();
    }

    @Override // com.byazt.ii.hp
    public com.byazt.ki.w hp() {
        return com.byazt.ki.a.OPERATOR_RESULT;
    }

    @Override // com.byazt.ii.hp
    public String l() {
        return this.hp.l() + this.jx.hp() + this.f26143l.l();
    }
}

package com.byazt.dt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1622, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes2.dex */
public class xs<K, A> extends hp<K, A> {

    /* renamed from: j, reason: collision with root package name */
    public final A f19294j;

    @Override // com.byazt.dt.hp
    public float a() {
        return 1.0f;
    }

    @Override // com.byazt.dt.hp
    public A eb() {
        com.byazt.ch.jx<A> jxVar = this.jx;
        A a3 = this.f19294j;
        return jxVar.hp(0.0f, 0.0f, a3, a3, s(), s(), s());
    }

    @Override // com.byazt.dt.hp
    public void hp(float f2) {
        this.f19267l = f2;
    }

    @Override // com.byazt.dt.hp
    public void l() {
        if (this.jx != null) {
            super.l();
        }
    }

    @Override // com.byazt.dt.hp
    public A hp(com.byazt.ch.hp<K> hpVar, float f2) {
        return eb();
    }
}

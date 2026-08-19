package com.byazt.mo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 19})
/* loaded from: classes3.dex */
public class jl implements jx {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ha.jl f23113j;
    public final com.byazt.ha.l jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ha.l f23114l;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f23115w;

    public jl(String str, com.byazt.ha.l lVar, com.byazt.ha.l lVar2, com.byazt.ha.jl jlVar, boolean z2) {
        this.hp = str;
        this.f23114l = lVar;
        this.jx = lVar2;
        this.f23113j = jlVar;
        this.f23115w = z2;
    }

    public String hp() {
        return this.hp;
    }

    public com.byazt.ha.jl j() {
        return this.f23113j;
    }

    public com.byazt.ha.l jx() {
        return this.jx;
    }

    public com.byazt.ha.l l() {
        return this.f23114l;
    }

    public boolean w() {
        return this.f23115w;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.u(sVar, jxVar, this);
    }
}

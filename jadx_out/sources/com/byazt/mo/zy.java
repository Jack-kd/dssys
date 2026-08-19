package com.byazt.mo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 302})
/* loaded from: classes3.dex */
public class zy implements jx {
    public final String hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ha.zy<Float, Float> f23156l;

    public zy(String str, com.byazt.ha.zy<Float, Float> zyVar) {
        this.hp = str;
        this.f23156l = zyVar;
    }

    public String hp() {
        return this.hp;
    }

    public com.byazt.ha.zy<Float, Float> l() {
        return this.f23156l;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.xs(sVar, jxVar, this);
    }
}

package com.byazt.mo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs implements jx {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f23154j;
    public final com.byazt.ha.s jx;

    /* renamed from: l, reason: collision with root package name */
    public final int f23155l;

    public xs(String str, int i2, com.byazt.ha.s sVar, boolean z2) {
        this.hp = str;
        this.f23155l = i2;
        this.jx = sVar;
        this.f23154j = z2;
    }

    public String hp() {
        return this.hp;
    }

    public boolean jx() {
        return this.f23154j;
    }

    public com.byazt.ha.s l() {
        return this.jx;
    }

    public String toString() {
        return "ShapePath{name=" + this.hp + ", index=" + this.f23155l + '}';
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.vv(sVar, jxVar, this);
    }
}

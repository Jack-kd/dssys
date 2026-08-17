package com.byazt.mo;

import android.graphics.PointF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 34})
/* loaded from: classes3.dex */
public class l implements jx {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f23117j;
    public final com.byazt.ha.a jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ha.zy<PointF, PointF> f23118l;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f23119w;

    public l(String str, com.byazt.ha.zy<PointF, PointF> zyVar, com.byazt.ha.a aVar, boolean z2, boolean z3) {
        this.hp = str;
        this.f23118l = zyVar;
        this.jx = aVar;
        this.f23117j = z2;
        this.f23119w = z3;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.a(sVar, jxVar, this);
    }

    public boolean j() {
        return this.f23117j;
    }

    public com.byazt.ha.a jx() {
        return this.jx;
    }

    public com.byazt.ha.zy<PointF, PointF> l() {
        return this.f23118l;
    }

    public boolean w() {
        return this.f23119w;
    }

    public String hp() {
        return this.hp;
    }
}

package com.byazt.mo;

import android.graphics.PointF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu implements jx {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ha.l f23109j;
    public final com.byazt.ha.zy<PointF, PointF> jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ha.zy<PointF, PointF> f23110l;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f23111w;

    public gu(String str, com.byazt.ha.zy<PointF, PointF> zyVar, com.byazt.ha.zy<PointF, PointF> zyVar2, com.byazt.ha.l lVar, boolean z2) {
        this.hp = str;
        this.f23110l = zyVar;
        this.jx = zyVar2;
        this.f23109j = lVar;
        this.f23111w = z2;
    }

    public String hp() {
        return this.hp;
    }

    public com.byazt.ha.zy<PointF, PointF> j() {
        return this.f23110l;
    }

    public com.byazt.ha.zy<PointF, PointF> jx() {
        return this.jx;
    }

    public com.byazt.ha.l l() {
        return this.f23109j;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f23110l + ", size=" + this.jx + '}';
    }

    public boolean w() {
        return this.f23111w;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.v(sVar, jxVar, this);
    }
}

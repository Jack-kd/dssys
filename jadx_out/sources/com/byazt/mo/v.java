package com.byazt.mo;

import android.graphics.Path;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v implements jx {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f23131a;
    public final boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ha.hp f23132j;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final Path.FillType f23133l;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.ha.j f23134w;

    public v(String str, boolean z2, Path.FillType fillType, com.byazt.ha.hp hpVar, com.byazt.ha.j jVar, boolean z3) {
        this.jx = str;
        this.hp = z2;
        this.f23133l = fillType;
        this.f23132j = hpVar;
        this.f23134w = jVar;
        this.f23131a = z3;
    }

    public String hp() {
        return this.jx;
    }

    public Path.FillType j() {
        return this.f23133l;
    }

    public com.byazt.ha.j jx() {
        return this.f23134w;
    }

    public com.byazt.ha.hp l() {
        return this.f23132j;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.hp + '}';
    }

    public boolean w() {
        return this.f23131a;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.eb(sVar, jxVar, this);
    }
}

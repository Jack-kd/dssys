package com.byazt.fj;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes2.dex */
public class sz extends hp {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19858a;
    public final com.byazt.dt.hp<Integer, Integer> eb;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.at.jx f19859j;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.dt.hp<ColorFilter, ColorFilter> f19860s;

    /* renamed from: w, reason: collision with root package name */
    public final String f19861w;

    public sz(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.vv vvVar) {
        super(sVar, jxVar, vvVar.eb().hp(), vvVar.s().hp(), vvVar.q(), vvVar.jx(), vvVar.j(), vvVar.w(), vvVar.a());
        this.f19859j = jxVar;
        this.f19861w = vvVar.hp();
        this.f19858a = vvVar.e();
        com.byazt.dt.hp<Integer, Integer> hpVarHp = vvVar.l().hp();
        this.eb = hpVarHp;
        hpVarHp.hp(this);
        jxVar.hp(hpVarHp);
    }

    @Override // com.byazt.fj.hp, com.byazt.fj.w
    public void hp(Canvas canvas, Matrix matrix, int i2) {
        if (this.f19858a) {
            return;
        }
        this.f19809l.setColor(((com.byazt.dt.l) this.eb).q());
        com.byazt.dt.hp<ColorFilter, ColorFilter> hpVar = this.f19860s;
        if (hpVar != null) {
            this.f19809l.setColorFilter(hpVar.eb());
        }
        super.hp(canvas, matrix, i2);
    }
}

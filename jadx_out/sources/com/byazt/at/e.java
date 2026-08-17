package com.byazt.at;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.byazt.mo.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 45})
/* loaded from: classes2.dex */
public class e extends jx {
    public final com.byazt.fj.j eb;

    /* renamed from: s, reason: collision with root package name */
    public final j f18187s;

    public e(com.byazt.na.s sVar, s sVar2, j jVar, com.byazt.na.a aVar) {
        super(sVar, sVar2);
        this.f18187s = jVar;
        com.byazt.fj.j jVar2 = new com.byazt.fj.j(sVar, this, new u("__container", sVar2.k(), false), aVar);
        this.eb = jVar2;
        List<com.byazt.fj.jx> list = Collections.EMPTY_LIST;
        jVar2.hp(list, list);
    }

    @Override // com.byazt.at.jx, com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        super.hp(rectF, matrix, z2);
        this.eb.hp(rectF, this.hp, z2);
    }

    @Override // com.byazt.at.jx
    public com.byazt.mo.hp jl() {
        com.byazt.mo.hp hpVarJl = super.jl();
        return hpVarJl != null ? hpVarJl : this.f18187s.jl();
    }

    @Override // com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        super.l(canvas, matrix, i2);
        this.eb.hp(canvas, matrix, i2);
    }

    @Override // com.byazt.at.jx
    public com.byazt.av.e zy() {
        com.byazt.av.e eVarZy = super.zy();
        return eVarZy != null ? eVarZy : this.f18187s.zy();
    }
}

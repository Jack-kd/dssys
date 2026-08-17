package com.byazt.at;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends jx {

    /* renamed from: e, reason: collision with root package name */
    public final Path f18191e;
    public final RectF eb;
    public final s gu;
    public com.byazt.dt.hp<ColorFilter, ColorFilter> jl;

    /* renamed from: q, reason: collision with root package name */
    public final float[] f18192q;

    /* renamed from: s, reason: collision with root package name */
    public final Paint f18193s;

    public gu(com.byazt.na.s sVar, s sVar2) {
        super(sVar, sVar2);
        this.eb = new RectF();
        com.byazt.nv.hp hpVar = new com.byazt.nv.hp();
        this.f18193s = hpVar;
        this.f18192q = new float[8];
        this.f18191e = new Path();
        this.gu = sVar2;
        hpVar.setAlpha(0);
        hpVar.setStyle(Paint.Style.FILL);
        hpVar.setColor(sVar2.u());
    }

    @Override // com.byazt.at.jx, com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        super.hp(rectF, matrix, z2);
        this.eb.set(0.0f, 0.0f, this.gu.vv(), this.gu.xs());
        this.hp.mapRect(this.eb);
        rectF.set(this.eb);
    }

    @Override // com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        super.l(canvas, matrix, i2);
        int iAlpha = Color.alpha(this.gu.u());
        if (iAlpha == 0) {
            return;
        }
        int iIntValue = (int) ((i2 / 255.0f) * (((iAlpha / 255.0f) * (this.f18216j.hp() == null ? 100 : this.f18216j.hp().eb().intValue())) / 100.0f) * 255.0f);
        this.f18193s.setAlpha(iIntValue);
        com.byazt.dt.hp<ColorFilter, ColorFilter> hpVar = this.jl;
        if (hpVar != null) {
            this.f18193s.setColorFilter(hpVar.eb());
        }
        if (iIntValue > 0) {
            float[] fArr = this.f18192q;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.gu.vv();
            float[] fArr2 = this.f18192q;
            fArr2[3] = 0.0f;
            fArr2[4] = this.gu.vv();
            this.f18192q[5] = this.gu.xs();
            float[] fArr3 = this.f18192q;
            fArr3[6] = 0.0f;
            fArr3[7] = this.gu.xs();
            matrix.mapPoints(this.f18192q);
            this.f18191e.reset();
            Path path = this.f18191e;
            float[] fArr4 = this.f18192q;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.f18191e;
            float[] fArr5 = this.f18192q;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.f18191e;
            float[] fArr6 = this.f18192q;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.f18191e;
            float[] fArr7 = this.f18192q;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.f18191e;
            float[] fArr8 = this.f18192q;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.f18191e.close();
            canvas.drawPath(this.f18191e, this.f18193s);
        }
    }
}

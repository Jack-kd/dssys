package com.byazt.at;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.byazt.na.n;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 42})
/* loaded from: classes2.dex */
public class k extends eb {

    /* renamed from: e, reason: collision with root package name */
    public int f18227e;

    /* renamed from: q, reason: collision with root package name */
    public int f18228q;

    /* renamed from: s, reason: collision with root package name */
    public Path f18229s;

    public k(com.byazt.na.s sVar, s sVar2, Context context) {
        super(sVar, sVar2);
        this.f18229s = null;
        this.f18228q = -1;
        this.f18227e = -1;
        if (((eb) this).eb != null) {
            float fHp = com.byazt.ze.e.hp();
            this.f18228q = (int) (((eb) this).eb.hp() * fHp);
            this.f18227e = (int) (((eb) this).eb.l() * fHp);
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, this.f18228q, this.f18227e);
            Path path = new Path();
            this.f18229s = path;
            float f2 = fHp * 40.0f;
            path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        }
    }

    private static void hp(View view, int i2, int i3) {
        view.layout(0, 0, i2, i3);
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // com.byazt.at.eb, com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        n nVarHp = this.f18218l.hp();
        View viewHp = nVarHp != null ? nVarHp.hp("videoview:", null) : null;
        if (this.f18228q <= 0 || viewHp == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        hp(i2);
        float fS = s();
        hp(viewHp, this.f18228q, this.f18227e);
        viewHp.setAlpha(fS);
        canvas.clipPath(this.f18229s);
        viewHp.draw(canvas);
        canvas.restore();
    }
}

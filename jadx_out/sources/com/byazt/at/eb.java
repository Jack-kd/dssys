package com.byazt.at;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 94})
/* loaded from: classes2.dex */
public class eb extends jx {

    /* renamed from: e, reason: collision with root package name */
    public final Rect f18188e;
    public final com.byazt.na.q eb;
    public com.byazt.dt.hp<ColorFilter, ColorFilter> gu;
    public com.byazt.dt.hp<Bitmap, Bitmap> jl;

    /* renamed from: q, reason: collision with root package name */
    public final Rect f18189q;

    /* renamed from: s, reason: collision with root package name */
    public final Paint f18190s;

    public eb(com.byazt.na.s sVar, s sVar2) {
        super(sVar, sVar2);
        this.f18190s = new com.byazt.nv.hp(3);
        this.f18189q = new Rect();
        this.f18188e = new Rect();
        this.eb = sVar.a(sVar2.eb());
    }

    @Override // com.byazt.at.jx, com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        super.hp(rectF, matrix, z2);
        if (this.eb != null) {
            float fHp = com.byazt.ze.e.hp();
            rectF.set(0.0f, 0.0f, this.eb.hp() * fHp, this.eb.l() * fHp);
            this.hp.mapRect(rectF);
        }
    }

    public Bitmap k() {
        Bitmap bitmapEb;
        com.byazt.dt.hp<Bitmap, Bitmap> hpVar = this.jl;
        if (hpVar != null && (bitmapEb = hpVar.eb()) != null) {
            return bitmapEb;
        }
        Bitmap bitmapW = this.f18218l.w(this.jx.eb());
        if (bitmapW != null) {
            return bitmapW;
        }
        com.byazt.na.q qVar = this.eb;
        if (qVar != null) {
            return qVar.v();
        }
        return null;
    }

    @Override // com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        super.l(canvas, matrix, i2);
        Bitmap bitmapK = k();
        if (bitmapK == null || bitmapK.isRecycled() || this.eb == null) {
            return;
        }
        float fHp = com.byazt.ze.e.hp();
        this.f18190s.setAlpha(i2);
        com.byazt.dt.hp<ColorFilter, ColorFilter> hpVar = this.gu;
        if (hpVar != null) {
            this.f18190s.setColorFilter(hpVar.eb());
        }
        canvas.save();
        canvas.concat(matrix);
        this.f18189q.set(0, 0, bitmapK.getWidth(), bitmapK.getHeight());
        if (this.f18218l.a()) {
            this.f18188e.set(0, 0, (int) (this.eb.hp() * fHp), (int) (this.eb.l() * fHp));
        } else {
            this.f18188e.set(0, 0, (int) (bitmapK.getWidth() * fHp), (int) (bitmapK.getHeight() * fHp));
        }
        canvas.drawBitmap(bitmapK, this.f18189q, this.f18188e, this.f18190s);
        canvas.restore();
    }
}

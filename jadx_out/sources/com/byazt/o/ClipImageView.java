package com.byazt.o;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE, 1688})
/* loaded from: classes3.dex */
public class ClipImageView extends ImageView {
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public Paint f23867j;
    public RectF jx;

    /* renamed from: l, reason: collision with root package name */
    public Path f23868l;

    /* renamed from: w, reason: collision with root package name */
    public float[] f23869w;

    public ClipImageView(Context context) {
        super(context);
        this.hp = true;
        hp(context);
    }

    public void hp(Context context) {
        this.f23868l = new Path();
        this.jx = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.hp) {
            this.f23868l.reset();
            this.jx.set(0.0f, 0.0f, getWidth(), getHeight());
            float[] fArr = this.f23869w;
            if (fArr != null) {
                this.f23868l.addRoundRect(this.jx, fArr, Path.Direction.CW);
            }
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            canvas.clipPath(this.f23868l);
            Paint paint = this.f23867j;
            if (paint != null) {
                canvas.drawPath(this.f23868l, paint);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        Paint paint = new Paint(1);
        this.f23867j = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f23867j.setColor(i2);
    }

    public void setClip(boolean z2) {
        this.hp = z2;
    }

    public void setRadius(float[] fArr) {
        if (fArr == null || fArr.length != 8) {
            return;
        }
        this.f23869w = fArr;
    }

    public void setRoundRadius(int i2) {
        if (i2 > 0) {
            float f2 = i2;
            setRadius(new float[]{f2, f2, f2, f2, f2, f2, f2, f2});
        }
    }
}

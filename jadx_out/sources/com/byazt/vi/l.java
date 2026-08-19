package com.byazt.vi;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DROP_AUDIO_PTS, 34})
/* loaded from: classes3.dex */
public class l extends Drawable {
    public Paint hp;

    /* renamed from: l, reason: collision with root package name */
    public int f26573l;

    public l(int i2) {
        this.f26573l = i2;
        Paint paint = new Paint();
        this.hp = paint;
        paint.setAntiAlias(true);
        this.hp.setFilterBitmap(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), this.f26573l / 2.0f, this.hp);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (this.f26573l * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (this.f26573l * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.hp.getAlpha();
    }

    public void hp(int i2) {
        this.hp.setColor(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.hp.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.hp.setColorFilter(colorFilter);
    }

    public void hp(float f2) {
        this.hp.setStrokeWidth(f2);
    }
}

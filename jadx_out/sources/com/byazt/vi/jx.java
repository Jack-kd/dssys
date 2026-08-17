package com.byazt.vi;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DROP_AUDIO_PTS, 30})
/* loaded from: classes3.dex */
public class jx extends Drawable {
    public Paint hp;

    /* renamed from: l, reason: collision with root package name */
    public int f26572l;

    public jx(int i2) {
        this.f26572l = i2;
        Paint paint = new Paint();
        this.hp = paint;
        paint.setAntiAlias(true);
        this.hp.setFilterBitmap(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float fCenterX = getBounds().centerX();
        float fCenterY = getBounds().centerY();
        float f2 = ((this.f26572l / 2.0f) * 3.0f) / 4.0f;
        float f3 = fCenterX - f2;
        float f4 = fCenterY - f2;
        float f5 = fCenterX + f2;
        float f6 = fCenterY + f2;
        canvas.drawLine(f3, f4, f5, f6, this.hp);
        canvas.drawLine(f5, f4, f3, f6, this.hp);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (this.f26572l * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (this.f26572l * 1.3d);
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

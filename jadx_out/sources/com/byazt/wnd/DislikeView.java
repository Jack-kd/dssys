package com.byazt.wnd;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1771})
/* loaded from: classes3.dex */
public class DislikeView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f26971a;
    public Paint eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public Paint f26972j;
    public final RectF jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26973l;

    /* renamed from: s, reason: collision with root package name */
    public int f26974s;

    /* renamed from: w, reason: collision with root package name */
    public Paint f26975w;

    public DislikeView(Context context) {
        super(context);
        this.jx = new RectF();
        hp();
    }

    private void hp() {
        Paint paint = new Paint();
        this.f26972j = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.eb = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f26975w = paint3;
        paint3.setAntiAlias(true);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.jx;
        int i2 = this.f26971a;
        canvas.drawRoundRect(rectF, i2, i2, this.f26975w);
        RectF rectF2 = this.jx;
        int i3 = this.f26971a;
        canvas.drawRoundRect(rectF2, i3, i3, this.f26972j);
        int i4 = this.hp;
        int i5 = this.f26973l;
        canvas.drawLine(i4 * 0.3f, i5 * 0.3f, i4 * 0.7f, i5 * 0.7f, this.eb);
        int i6 = this.hp;
        int i7 = this.f26973l;
        canvas.drawLine(i6 * 0.7f, i7 * 0.3f, i6 * 0.3f, i7 * 0.7f, this.eb);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.hp = i2;
        this.f26973l = i3;
        RectF rectF = this.jx;
        int i6 = this.f26974s;
        rectF.set(i6, i6, i2 - i6, i3 - i6);
    }

    public void setBgColor(int i2) {
        this.f26975w.setStyle(Paint.Style.FILL);
        this.f26975w.setColor(i2);
    }

    public void setDislikeColor(int i2) {
        this.eb.setColor(i2);
    }

    public void setDislikeWidth(int i2) {
        this.eb.setStrokeWidth(i2);
    }

    public void setRadius(int i2) {
        this.f26971a = i2;
    }

    public void setStrokeColor(int i2) {
        this.f26972j.setStyle(Paint.Style.STROKE);
        this.f26972j.setColor(i2);
    }

    public void setStrokeWidth(int i2) {
        this.f26972j.setStrokeWidth(i2);
        this.f26974s = i2;
    }
}

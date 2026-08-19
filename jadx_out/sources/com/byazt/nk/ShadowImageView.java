package com.byazt.nk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.ImageView;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 2274})
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class ShadowImageView extends ImageView {
    public Paint hp;

    /* renamed from: l, reason: collision with root package name */
    public RectF f23652l;

    public ShadowImageView(Context context) {
        super(context);
        hp();
    }

    private void hp() {
        Paint paint = new Paint();
        this.hp = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.hp.setColor(Color.parseColor("#99333333"));
        this.hp.setAntiAlias(true);
        this.hp.setStrokeWidth(0.0f);
        this.f23652l = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.f23652l;
        canvas.drawRoundRect(rectF, rectF.right / 2.0f, rectF.bottom / 2.0f, this.hp);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f23652l.right == getMeasuredWidth() && this.f23652l.bottom == getMeasuredHeight()) {
            return;
        }
        this.f23652l.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
    }
}

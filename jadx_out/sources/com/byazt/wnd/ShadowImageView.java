package com.byazt.wnd;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2274})
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class ShadowImageView extends ImageView {
    public Paint hp;

    /* renamed from: l, reason: collision with root package name */
    public RectF f27042l;

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.f27042l;
        canvas.drawRoundRect(rectF, rectF.right / 2.0f, rectF.bottom / 2.0f, this.hp);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f27042l.right == getMeasuredWidth() && this.f27042l.bottom == getMeasuredHeight()) {
            return;
        }
        this.f27042l.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
    }
}

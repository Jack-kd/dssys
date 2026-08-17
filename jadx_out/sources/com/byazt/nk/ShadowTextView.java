package com.byazt.nk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.TextView;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.archives.tar.e;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 1901})
/* loaded from: classes3.dex */
public class ShadowTextView extends TextView {
    public Paint hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public RectF f23653l;

    public ShadowTextView(Context context) {
        this(context, null);
    }

    private void hp() {
        setTextColor(-1);
        Paint paint = new Paint();
        this.hp = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.hp.setColor(Color.parseColor("#99333333"));
        this.hp.setAntiAlias(true);
        this.hp.setStrokeWidth(0.0f);
        this.f23653l = new RectF();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.f23653l;
        float f2 = rectF.bottom;
        canvas.drawRoundRect(rectF, f2 / 2.0f, f2 / 2.0f, this.hp);
        canvas.translate((this.f23653l.right / 2.0f) - (getPaint().measureText(getText().toString()) / 2.0f), 0.0f);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 || measuredHeight <= 0) {
            this.f23653l.set(0.0f, 0.0f, 0.0f, 0.0f);
            return;
        }
        int iMeasureText = (int) getPaint().measureText(e.f35456V);
        this.jx = iMeasureText;
        if (measuredWidth < iMeasureText) {
            measuredWidth = iMeasureText;
        }
        int i4 = measuredWidth + ((measuredHeight / 2) * 2);
        setMeasuredDimension(i4, measuredHeight);
        this.f23653l.set(0.0f, 0.0f, i4, measuredHeight);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.jx = 0;
        hp();
    }
}

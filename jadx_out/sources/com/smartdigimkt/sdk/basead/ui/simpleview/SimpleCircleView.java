package com.smartdigimkt.sdk.basead.ui.simpleview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.smartdigimkt.p2.b;

/* loaded from: classes5.dex */
public class SimpleCircleView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f44001a;

    /* renamed from: b, reason: collision with root package name */
    public ValueAnimator f44002b;

    public SimpleCircleView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f44002b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        canvas.drawCircle(width, height, Math.min(width, height), this.f44001a);
    }

    public SimpleCircleView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimpleCircleView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Paint paint = new Paint();
        this.f44001a = paint;
        paint.setColor(1711276032);
        paint.setAntiAlias(true);
        post(new b(this));
    }
}

package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.fl.saas.adx.util.DeviceUtil;

/* loaded from: classes3.dex */
public class RoundProgressView extends View {
    private float mCurrentProgress;
    private float mMaxProgress;
    private int mProgressColor;
    private int mStrokeWidth;

    public RoundProgressView(Context context) {
        this(context, null);
        this.mStrokeWidth = DeviceUtil.dip2px(2.0f);
        this.mProgressColor = Color.parseColor("#CD853F");
        this.mMaxProgress = 100.0f;
        this.mCurrentProgress = 0.0f;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f2;
        float f3;
        if (this.mCurrentProgress == 0.0f) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float f4 = this.mStrokeWidth / 2.0f;
        float f5 = height;
        float f6 = f5 - f4;
        RectF rectF = new RectF(f4, f4, f6, f6);
        float f7 = this.mStrokeWidth;
        float f8 = (width - height) - (1.5f * f7);
        float f9 = f7 / 2.0f;
        float f10 = width;
        RectF rectF2 = new RectF(f8, f9, f10 - f9, f5 - f9);
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.mStrokeWidth);
        paint.setColor(this.mProgressColor);
        paint.setAntiAlias(true);
        paint.setStrokeCap(Paint.Cap.ROUND);
        int i2 = (int) ((this.mCurrentProgress * 100.0f) / this.mMaxProgress);
        Path path = new Path();
        if (i2 > 18) {
            if (i2 <= 32) {
                path.moveTo(f10 / 2.0f, f5 - (this.mStrokeWidth / 2.0f));
                path.lineTo(f5 / 2.0f, f5 - (this.mStrokeWidth / 2.0f));
                path.arcTo(rectF, 90.0f, ((i2 - 18) * 180) / 14.0f);
            } else if (i2 <= 68) {
                path.moveTo(f10 / 2.0f, f5 - (this.mStrokeWidth / 2.0f));
                float f11 = f5 / 2.0f;
                path.lineTo(f11, f5 - (this.mStrokeWidth / 2.0f));
                path.arcTo(rectF, 90.0f, 180.0f);
                path.lineTo(f11 + ((r2 * (i2 - 32)) / 36.0f), this.mStrokeWidth / 2.0f);
            } else if (i2 <= 82) {
                path.moveTo(f10 / 2.0f, f5 - (this.mStrokeWidth / 2.0f));
                float f12 = f5 / 2.0f;
                path.lineTo(f12, f5 - (this.mStrokeWidth / 2.0f));
                path.arcTo(rectF, 90.0f, 180.0f);
                path.lineTo(f10 - f12, this.mStrokeWidth / 2.0f);
                path.arcTo(rectF2, -90.0f, ((i2 - 68) * 180) / 14.0f);
            } else {
                path.moveTo(f10 / 2.0f, f5 - (this.mStrokeWidth / 2.0f));
                float f13 = f5 / 2.0f;
                path.lineTo(f13, f5 - (this.mStrokeWidth / 2.0f));
                path.arcTo(rectF, 90.0f, 180.0f);
                float f14 = f10 - f13;
                path.lineTo(f14, this.mStrokeWidth / 2.0f);
                path.arcTo(rectF2, -90.0f, 180.0f);
                f2 = f14 - ((r2 * (i2 - 82)) / 36.0f);
                f3 = this.mStrokeWidth / 2.0f;
            }
            canvas.drawPath(path, paint);
        }
        float f15 = f10 / 2.0f;
        path.moveTo(f15, f5 - (this.mStrokeWidth / 2.0f));
        f2 = f15 - ((r2 * i2) / 36.0f);
        f3 = this.mStrokeWidth / 2.0f;
        path.lineTo(f2, f5 - f3);
        canvas.drawPath(path, paint);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    public void setMaxProgress(float f2) {
        this.mMaxProgress = f2;
    }

    public void setProgress(float f2) {
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        float f3 = this.mMaxProgress;
        if (f2 > f3) {
            f2 = f3;
        }
        this.mCurrentProgress = f2;
        invalidate();
    }

    public RoundProgressView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

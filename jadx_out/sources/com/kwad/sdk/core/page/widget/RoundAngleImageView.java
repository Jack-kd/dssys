package com.kwad.sdk.core.page.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes4.dex */
public class RoundAngleImageView extends ImageView {
    private float[] aUS;
    private Path mPath;
    private RectF mRectF;

    public RoundAngleImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        float[] fArr = this.aUS;
        if (fArr == null || fArr.length != 8) {
            super.onDraw(canvas);
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float[] fArr2 = this.aUS;
        float f2 = fArr2[0] + fArr2[3];
        float f3 = fArr2[1] + fArr2[7];
        this.mPath.rewind();
        float f4 = measuredWidth;
        if (f4 >= f2) {
            float f5 = measuredHeight;
            if (f5 > f3) {
                this.mRectF.set(0.0f, 0.0f, f4, f5);
                this.mPath.addRoundRect(this.mRectF, this.aUS, Path.Direction.CW);
                canvas.clipPath(this.mPath);
            }
        }
        super.onDraw(canvas);
    }

    public void setRadius(float f2) {
        this.aUS = new float[8];
        int i2 = 0;
        while (true) {
            float[] fArr = this.aUS;
            if (i2 >= fArr.length) {
                return;
            }
            fArr[i2] = f2;
            i2++;
        }
    }

    public RoundAngleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundAngleImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mPath = new Path();
        this.mRectF = new RectF();
    }

    public void setRadius(float[] fArr) {
        this.aUS = new float[8];
        int i2 = 0;
        while (true) {
            float[] fArr2 = this.aUS;
            if (i2 >= fArr2.length) {
                return;
            }
            fArr2[i2] = fArr[i2];
            i2++;
        }
    }
}

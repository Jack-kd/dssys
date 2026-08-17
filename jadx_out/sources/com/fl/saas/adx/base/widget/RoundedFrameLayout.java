package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.fl.saas.R;

/* loaded from: classes3.dex */
public class RoundedFrameLayout extends FrameLayout {
    private int borderColor;
    private final Paint borderPaint;
    private float borderWidth;
    private final Path path;
    private float[] radii;
    private final RectF rectF;

    public RoundedFrameLayout(@NonNull Context context) {
        super(context);
        this.path = new Path();
        this.borderPaint = new Paint(1);
        this.rectF = new RectF();
        this.radii = new float[8];
        this.borderColor = 0;
        this.borderWidth = 0.0f;
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setWillNotDraw(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FLRoundedFrameLayout);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.FLRoundedFrameLayout_fl_radius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R.styleable.FLRoundedFrameLayout_fl_topLeftRadius, dimension);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R.styleable.FLRoundedFrameLayout_fl_topRightRadius, dimension);
        float dimension4 = typedArrayObtainStyledAttributes.getDimension(R.styleable.FLRoundedFrameLayout_fl_bottomRightRadius, dimension);
        float dimension5 = typedArrayObtainStyledAttributes.getDimension(R.styleable.FLRoundedFrameLayout_fl_bottomLeftRadius, dimension);
        this.borderColor = typedArrayObtainStyledAttributes.getColor(R.styleable.FLRoundedFrameLayout_fl_borderColor, 0);
        this.borderWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.FLRoundedFrameLayout_fl_borderWidth, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        setRadii(dimension2, dimension3, dimension4, dimension5);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setColor(this.borderColor);
        this.borderPaint.setStrokeWidth(this.borderWidth);
    }

    private void setRadii(float f2, float f3, float f4, float f5) {
        float[] fArr = this.radii;
        fArr[1] = f2;
        fArr[0] = f2;
        fArr[3] = f3;
        fArr[2] = f3;
        fArr[5] = f4;
        fArr[4] = f4;
        fArr[7] = f5;
        fArr[6] = f5;
        updatePath();
    }

    private void updatePath() {
        this.path.reset();
        this.path.addRoundRect(this.rectF, this.radii, Path.Direction.CW);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.path);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f2 = this.borderWidth;
        if (f2 > 0.0f) {
            float f3 = f2 / 2.0f;
            RectF rectF = new RectF(f3, f3, getWidth() - f3, getHeight() - f3);
            Path path = new Path();
            path.addRoundRect(rectF, this.radii, Path.Direction.CW);
            canvas.drawPath(path, this.borderPaint);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.rectF.set(0.0f, 0.0f, i2, i3);
        updatePath();
    }

    public void setBorderColor(int i2) {
        this.borderColor = i2;
        this.borderPaint.setColor(i2);
        invalidate();
    }

    public void setBorderWidth(float f2) {
        this.borderWidth = f2;
        this.borderPaint.setStrokeWidth(f2);
        invalidate();
    }

    public void setBottomLeftRadius(float f2) {
        float[] fArr = this.radii;
        fArr[6] = f2;
        fArr[7] = f2;
        updatePath();
    }

    public void setBottomRightRadius(float f2) {
        float[] fArr = this.radii;
        fArr[4] = f2;
        fArr[5] = f2;
        updatePath();
    }

    public void setTopLeftRadius(float f2) {
        float[] fArr = this.radii;
        fArr[0] = f2;
        fArr[1] = f2;
        updatePath();
    }

    public void setTopRightRadius(float f2) {
        float[] fArr = this.radii;
        fArr[2] = f2;
        fArr[3] = f2;
        updatePath();
    }

    public RoundedFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.path = new Path();
        this.borderPaint = new Paint(1);
        this.rectF = new RectF();
        this.radii = new float[8];
        this.borderColor = 0;
        this.borderWidth = 0.0f;
        init(context, attributeSet);
    }

    public RoundedFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.path = new Path();
        this.borderPaint = new Paint(1);
        this.rectF = new RectF();
        this.radii = new float[8];
        this.borderColor = 0;
        this.borderWidth = 0.0f;
        init(context, attributeSet);
    }
}

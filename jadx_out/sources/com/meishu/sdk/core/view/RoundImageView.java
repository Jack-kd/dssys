package com.meishu.sdk.core.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import com.meishu.sdk.R;
import com.meishu.sdk.core.utils.m;
import com.meishu.sdk.core.view.gif.GifImageView;

/* loaded from: classes4.dex */
public class RoundImageView extends GifImageView {
    private int borderColor;
    private float[] borderRadii;
    private RectF borderRectF;
    private int borderWidth;
    private Context context;
    private int cornerBottomLeftRadius;
    private int cornerBottomRightRadius;
    private int cornerRadius;
    private int cornerTopLeftRadius;
    private int cornerTopRightRadius;
    private int height;
    private int innerBorderColor;
    private int innerBorderWidth;
    private boolean isCircle;
    private boolean isCoverSrc;
    private int maskColor;
    private Paint paint;
    private Path path;
    private float radius;
    private Path srcPath;
    private float[] srcRadii;
    private RectF srcRectF;
    private int width;
    private Xfermode xfermode;

    public RoundImageView(Context context) {
        this(context, null);
    }

    private void calculateRadii() {
        if (this.isCircle) {
            return;
        }
        int i2 = 0;
        if (this.cornerRadius <= 0) {
            float[] fArr = this.borderRadii;
            float f2 = this.cornerTopLeftRadius;
            fArr[1] = f2;
            fArr[0] = f2;
            float f3 = this.cornerTopRightRadius;
            fArr[3] = f3;
            fArr[2] = f3;
            float f4 = this.cornerBottomRightRadius;
            fArr[5] = f4;
            fArr[4] = f4;
            float f5 = this.cornerBottomLeftRadius;
            fArr[7] = f5;
            fArr[6] = f5;
            float[] fArr2 = this.srcRadii;
            float f6 = this.borderWidth / 2.0f;
            float f7 = f2 - f6;
            fArr2[1] = f7;
            fArr2[0] = f7;
            float f8 = f3 - f6;
            fArr2[3] = f8;
            fArr2[2] = f8;
            float f9 = f4 - f6;
            fArr2[5] = f9;
            fArr2[4] = f9;
            float f10 = f5 - f6;
            fArr2[7] = f10;
            fArr2[6] = f10;
            return;
        }
        while (true) {
            float[] fArr3 = this.borderRadii;
            if (i2 >= fArr3.length) {
                return;
            }
            float f11 = this.cornerRadius;
            fArr3[i2] = f11;
            this.srcRadii[i2] = f11 - (this.borderWidth / 2.0f);
            i2++;
        }
    }

    private void calculateRadiiAndRectF(boolean z2) {
        if (z2) {
            this.cornerRadius = 0;
        }
        calculateRadii();
        initBorderRectF();
        invalidate();
    }

    private void clearInnerBorderWidth() {
        if (this.isCircle) {
            return;
        }
        this.innerBorderWidth = 0;
    }

    private void drawBorders(Canvas canvas) {
        if (!this.isCircle) {
            int i2 = this.borderWidth;
            if (i2 > 0) {
                drawRectFBorder(canvas, i2, this.borderColor, this.borderRectF, this.borderRadii);
                return;
            }
            return;
        }
        int i3 = this.borderWidth;
        if (i3 > 0) {
            drawCircleBorder(canvas, i3, this.borderColor, this.radius - (i3 / 2.0f));
        }
        int i4 = this.innerBorderWidth;
        if (i4 > 0) {
            drawCircleBorder(canvas, i4, this.innerBorderColor, (this.radius - this.borderWidth) - (i4 / 2.0f));
        }
    }

    private void drawCircleBorder(Canvas canvas, int i2, int i3, float f2) {
        initBorderPaint(i2, i3);
        this.path.addCircle(this.width / 2.0f, this.height / 2.0f, f2, Path.Direction.CCW);
        canvas.drawPath(this.path, this.paint);
    }

    private void drawRectFBorder(Canvas canvas, int i2, int i3, RectF rectF, float[] fArr) {
        initBorderPaint(i2, i3);
        this.path.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.path, this.paint);
    }

    private void initBorderPaint(int i2, int i3) {
        this.path.reset();
        this.paint.setStrokeWidth(i2);
        this.paint.setColor(i3);
        this.paint.setStyle(Paint.Style.STROKE);
    }

    private void initBorderRectF() {
        if (this.isCircle) {
            return;
        }
        float f2 = this.borderWidth / 2.0f;
        this.borderRectF.set(f2, f2, this.width - f2, this.height - f2);
    }

    private void initSrcRectF() {
        if (!this.isCircle) {
            this.srcRectF.set(0.0f, 0.0f, this.width, this.height);
            if (this.isCoverSrc) {
                this.srcRectF = this.borderRectF;
                return;
            }
            return;
        }
        float fMin = Math.min(this.width, this.height) / 2.0f;
        this.radius = fMin;
        float f2 = this.width / 2.0f;
        float f3 = this.height / 2.0f;
        this.srcRectF.set(f2 - fMin, f3 - fMin, f2 + fMin, f3 + fMin);
    }

    public void isCircle(boolean z2) {
        this.isCircle = z2;
        clearInnerBorderWidth();
        initSrcRectF();
        invalidate();
    }

    public void isCoverSrc(boolean z2) {
        this.isCoverSrc = z2;
        initSrcRectF();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.saveLayer(this.srcRectF, null, 31);
        if (!this.isCoverSrc) {
            int i2 = this.width;
            int i3 = this.borderWidth * 2;
            int i4 = this.innerBorderWidth * 2;
            float f2 = ((i2 - i3) - i4) * 1.0f;
            float f3 = i2;
            float f4 = ((r7 - i3) - i4) * 1.0f;
            float f5 = this.height;
            canvas.scale(f2 / f3, f4 / f5, f3 / 2.0f, f5 / 2.0f);
        }
        super.onDraw(canvas);
        this.paint.reset();
        this.path.reset();
        if (this.isCircle) {
            this.path.addCircle(this.width / 2.0f, this.height / 2.0f, this.radius, Path.Direction.CCW);
        } else {
            this.path.addRoundRect(this.srcRectF, this.srcRadii, Path.Direction.CCW);
        }
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setXfermode(this.xfermode);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.path, this.paint);
        } else {
            this.srcPath.addRect(this.srcRectF, Path.Direction.CCW);
            this.srcPath.op(this.path, Path.Op.DIFFERENCE);
            canvas.drawPath(this.srcPath, this.paint);
            this.srcPath.reset();
        }
        this.paint.setXfermode(null);
        int i5 = this.maskColor;
        if (i5 != 0) {
            this.paint.setColor(i5);
            canvas.drawPath(this.path, this.paint);
        }
        canvas.restore();
        drawBorders(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.width = i2;
        this.height = i3;
        initBorderRectF();
        initSrcRectF();
    }

    public void setBorderColor(@ColorInt int i2) {
        this.borderColor = i2;
        invalidate();
    }

    public void setBorderWidth(int i2) {
        this.borderWidth = (int) m.a(this.context, i2);
        calculateRadiiAndRectF(false);
    }

    public void setCornerBottomLeftRadius(int i2) {
        this.cornerBottomLeftRadius = (int) m.a(this.context, i2);
        calculateRadiiAndRectF(true);
    }

    public void setCornerBottomRightRadius(int i2) {
        this.cornerBottomRightRadius = (int) m.a(this.context, i2);
        calculateRadiiAndRectF(true);
    }

    public void setCornerRadius(int i2) {
        this.cornerRadius = (int) m.a(this.context, i2);
        calculateRadiiAndRectF(false);
    }

    public void setCornerTopLeftRadius(int i2) {
        this.cornerTopLeftRadius = (int) m.a(this.context, i2);
        calculateRadiiAndRectF(true);
    }

    public void setCornerTopRightRadius(int i2) {
        this.cornerTopRightRadius = (int) m.a(this.context, i2);
        calculateRadiiAndRectF(true);
    }

    public void setInnerBorderColor(@ColorInt int i2) {
        this.innerBorderColor = i2;
        invalidate();
    }

    public void setInnerBorderWidth(int i2) {
        this.innerBorderWidth = (int) m.a(this.context, i2);
        clearInnerBorderWidth();
        invalidate();
    }

    public void setMaskColor(@ColorInt int i2) {
        this.maskColor = i2;
        invalidate();
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        this.borderColor = -1;
        this.innerBorderColor = -1;
        this.context = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ms_RoundImageView, 0, 0);
        for (int i3 = 0; i3 < typedArrayObtainStyledAttributes.getIndexCount(); i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            if (index == R.styleable.ms_RoundImageView_ms_is_cover_src) {
                this.isCoverSrc = typedArrayObtainStyledAttributes.getBoolean(index, this.isCoverSrc);
            } else if (index == R.styleable.ms_RoundImageView_ms_is_circle) {
                this.isCircle = typedArrayObtainStyledAttributes.getBoolean(index, this.isCircle);
            } else if (index == R.styleable.ms_RoundImageView_ms_border_width) {
                this.borderWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.borderWidth);
            } else if (index == R.styleable.ms_RoundImageView_ms_border_color) {
                this.borderColor = typedArrayObtainStyledAttributes.getColor(index, this.borderColor);
            } else if (index == R.styleable.ms_RoundImageView_ms_inner_border_width) {
                this.innerBorderWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.innerBorderWidth);
            } else if (index == R.styleable.ms_RoundImageView_ms_inner_border_color) {
                this.innerBorderColor = typedArrayObtainStyledAttributes.getColor(index, this.innerBorderColor);
            } else if (index == R.styleable.ms_RoundImageView_ms_corner_radius) {
                this.cornerRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerRadius);
            } else if (index == R.styleable.ms_RoundImageView_ms_corner_top_left_radius) {
                this.cornerTopLeftRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerTopLeftRadius);
            } else if (index == R.styleable.ms_RoundImageView_ms_corner_top_right_radius) {
                this.cornerTopRightRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerTopRightRadius);
            } else if (index == R.styleable.ms_RoundImageView_ms_corner_bottom_left_radius) {
                this.cornerBottomLeftRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerBottomLeftRadius);
            } else if (index == R.styleable.ms_RoundImageView_ms_corner_bottom_right_radius) {
                this.cornerBottomRightRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerBottomRightRadius);
            } else if (index == R.styleable.ms_RoundImageView_ms_mask_color) {
                this.maskColor = typedArrayObtainStyledAttributes.getColor(index, this.maskColor);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        this.borderRadii = new float[8];
        this.srcRadii = new float[8];
        this.borderRectF = new RectF();
        this.srcRectF = new RectF();
        this.paint = new Paint();
        this.path = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.xfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.xfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.srcPath = new Path();
        }
        calculateRadii();
        clearInnerBorderWidth();
    }
}

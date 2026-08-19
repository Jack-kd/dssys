package com.kwad.components.core.page.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.C;
import com.kwad.sdk.wrapper.m;

/* loaded from: classes4.dex */
public class TextProgressBar extends ProgressBar {

    @Nullable
    private String afW;
    private LinearGradient afX;
    private Matrix afY;
    private boolean afZ;
    private boolean aga;
    private boolean agb;
    private int agc;
    private int agd;
    private Drawable age;
    private int agf;
    private Rect agg;
    private int[] agh;
    private int agi;
    private int agj;
    private boolean agk;
    private Paint mPaint;
    private RectF mRectF;

    public TextProgressBar(Context context) {
        this(context, null);
    }

    private void setProgressText(int i2) {
        this.afW = String.valueOf((int) (((i2 * 1.0f) / getMax()) * 100.0f)) + "%";
    }

    private void uV() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setColor(-1);
        this.mPaint.setTextSize(com.kwad.sdk.c.a.a.a(getContext(), 12.0f));
        this.agf = com.kwad.sdk.c.a.a.a(getContext(), 2.0f);
        this.mRectF = new RectF();
        this.agi = -1;
        this.agj = -117146;
    }

    public final void e(String str, int i2) {
        this.afW = str;
        this.afZ = true;
        setProgress(i2);
        invalidate();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        int width;
        try {
            if (this.aga) {
                canvas.save();
                canvas.rotate(90.0f);
                canvas.translate(0.0f, -getWidth());
                super.onDraw(canvas);
                canvas.restore();
            } else {
                super.onDraw(canvas);
            }
            if (!TextUtils.isEmpty(this.afW)) {
                Paint paint = this.mPaint;
                String str = this.afW;
                paint.getTextBounds(str, 0, str.length(), this.agg);
            }
            int height = (getHeight() / 2) - this.agg.centerY();
            Drawable drawable = this.age;
            if (drawable != null) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = this.age.getIntrinsicHeight();
                int width2 = (((getWidth() - this.agg.width()) - intrinsicWidth) - this.agf) / 2;
                int i2 = intrinsicWidth + width2;
                this.age.setBounds(width2, (getHeight() - intrinsicHeight) / 2, i2, (getHeight() + intrinsicHeight) / 2);
                this.age.draw(canvas);
                width = i2 + this.agf;
            } else {
                width = (getWidth() / 2) - this.agg.centerX();
            }
            if (this.agh != null) {
                float progress = ((getProgress() * 1.0f) / getMax()) * getWidth();
                float f2 = width;
                if (progress >= f2) {
                    if (this.afX == null) {
                        this.afX = new LinearGradient(f2, 0.0f, width + this.agg.width(), 0.0f, this.agh, (float[]) null, Shader.TileMode.CLAMP);
                        Matrix matrix = new Matrix();
                        this.afY = matrix;
                        this.afX.setLocalMatrix(matrix);
                    }
                    this.mPaint.setShader(this.afX);
                    this.afY.setScale(((progress - f2) * 1.0f) / this.agg.width(), 1.0f, f2, 0.0f);
                    this.afX.setLocalMatrix(this.afY);
                } else {
                    this.mPaint.setShader(null);
                }
                canvas.drawText(this.afW, f2, height, this.mPaint);
                return;
            }
            if (!isIndeterminate() && !this.agk) {
                this.mPaint.setColor(this.agi);
                String str2 = this.afW;
                if (str2 != null) {
                    canvas.drawText(str2, width, height, this.mPaint);
                }
                return;
            }
            float width3 = (getWidth() * getProgress()) / getMax();
            int iSave = canvas.save();
            this.mRectF.set(width3, 0.0f, getWidth(), getHeight());
            canvas.clipRect(this.mRectF);
            this.mPaint.setColor(this.agj);
            String str3 = this.afW;
            if (str3 != null) {
                canvas.drawText(str3, width, height, this.mPaint);
            }
            canvas.restoreToCount(iSave);
            int iSave2 = canvas.save();
            this.mRectF.set(0.0f, 0.0f, width3, getHeight());
            canvas.clipRect(this.mRectF);
            this.mPaint.setColor(this.agi);
            String str4 = this.afW;
            if (str4 != null) {
                canvas.drawText(str4, width, height, this.mPaint);
            }
            canvas.restoreToCount(iSave2);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i2, int i3) {
        try {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null && !TextUtils.isEmpty(this.afW)) {
                Rect rect = new Rect();
                Paint paint = this.mPaint;
                String str = this.afW;
                paint.getTextBounds(str, 0, str.length(), rect);
                if (layoutParams.width == -2) {
                    int iWidth = rect.width() + this.agc + this.agd;
                    layoutParams.width = iWidth;
                    i2 = View.MeasureSpec.makeMeasureSpec(iWidth, C.ENCODING_PCM_32BIT);
                }
                if (layoutParams.height == -2) {
                    int iHeight = rect.height();
                    layoutParams.height = iHeight;
                    i3 = View.MeasureSpec.makeMeasureSpec(iHeight, C.ENCODING_PCM_32BIT);
                }
            }
            if (!this.aga) {
                super.onMeasure(i2, i3);
            } else {
                super.onMeasure(i3, i2);
                setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        if (this.aga) {
            super.onSizeChanged(i3, i2, i4, i5);
        } else {
            super.onSizeChanged(i2, i3, i4, i5);
        }
    }

    public void setDrawableLeft(Drawable drawable) {
        this.age = drawable;
    }

    public void setDrawablePadding(int i2) {
        this.agf = i2;
    }

    public void setHasProgress(boolean z2) {
        this.agb = z2;
    }

    @Override // android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        this.agc = i2;
        this.agd = i4;
    }

    @Override // android.widget.ProgressBar
    public void setProgress(int i2) {
        if (this.agb) {
            super.setProgress(i2);
        } else {
            super.setProgress(0);
        }
    }

    public void setTextColor(int i2) {
        this.agk = false;
        this.agi = i2;
        postInvalidate();
    }

    public void setTextDimen(float f2) {
        this.mPaint.setTextSize(f2);
    }

    public void setTextDimenSp(int i2) {
        this.mPaint.setTextSize(TypedValue.applyDimension(2, i2, getResources().getDisplayMetrics()));
    }

    public void setVertical(boolean z2) {
        this.aga = z2;
    }

    public TextProgressBar(Context context, AttributeSet attributeSet) {
        super(m.wrapContextIfNeed(context), attributeSet);
        this.aga = false;
        this.agb = true;
        this.agg = new Rect();
        uV();
    }

    public final void setTextColor(@ColorInt int i2, @ColorInt int i3) {
        this.agk = true;
        this.agi = i2;
        this.agj = i3;
        postInvalidate();
    }
}

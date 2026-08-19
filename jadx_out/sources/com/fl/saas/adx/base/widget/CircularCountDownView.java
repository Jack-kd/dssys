package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.fl.saas.R;
import com.fl.saas.adx.util.DeviceUtil;

/* loaded from: classes3.dex */
public class CircularCountDownView extends View {
    private int mBgColor;
    private float mCurrentAngle;
    private float mCurrentProgress;
    private int mEndAngle;
    private float mMaxProgress;
    private int mProgressColor;
    private int mProgressbarBgColor;
    private int mRadius;
    private int mStartAngle;
    private int mStrokeWidth;
    private String mText;
    private int mTextColor;
    private float mTextSize;
    private final String skipDes;

    public CircularCountDownView(Context context) {
        this(context, null);
    }

    private void drawCenterBg(Canvas canvas, RectF rectF) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeWidth(this.mStrokeWidth);
        paint.setAntiAlias(true);
        paint.setColor(this.mBgColor);
        paint.setStrokeCap(Paint.Cap.ROUND);
        canvas.drawArc(rectF, this.mStartAngle, this.mEndAngle, false, paint);
    }

    private void drawCenterText(Canvas canvas, int i2) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(this.mTextColor);
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setTextSize(this.mTextSize);
        Rect rect = new Rect();
        String str = this.mText;
        paint.getTextBounds(str, 0, str.length(), rect);
        canvas.drawText(this.mText, i2, (rect.height() / 2) + (getHeight() / 2), paint);
    }

    private void drawProgress(Canvas canvas, RectF rectF) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.mStrokeWidth);
        paint.setColor(this.mProgressColor);
        paint.setAntiAlias(true);
        paint.setStrokeCap(Paint.Cap.ROUND);
        float f2 = (this.mCurrentProgress / this.mMaxProgress) * 360.0f;
        this.mCurrentAngle = f2;
        canvas.drawArc(rectF, this.mStartAngle, f2, false, paint);
    }

    private void drawProgressbarBg(Canvas canvas, RectF rectF) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.mStrokeWidth);
        paint.setAntiAlias(true);
        paint.setColor(this.mProgressbarBgColor);
        paint.setStrokeCap(Paint.Cap.ROUND);
        canvas.drawArc(rectF, this.mStartAngle, this.mEndAngle, false, paint);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int width = getWidth() / 2;
        RectF rectF = new RectF();
        int i2 = this.mStrokeWidth;
        float f2 = i2;
        rectF.left = f2;
        rectF.top = f2;
        float f3 = (width * 2) - i2;
        rectF.right = f3;
        rectF.bottom = f3;
        drawCenterBg(canvas, rectF);
        drawProgressbarBg(canvas, rectF);
        drawProgress(canvas, rectF);
        drawCenterText(canvas, width);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = (mode == Integer.MIN_VALUE || mode == 0) ? this.mRadius * 2 : mode != 1073741824 ? 0 : View.MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size);
    }

    public void setProgress(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Progress value can not be less than 0");
        }
        float f3 = this.mMaxProgress;
        if (f2 > f3) {
            f2 = f3;
        }
        this.mCurrentProgress = f2;
        this.mCurrentAngle = (f2 / f3) * 360.0f;
        invalidate();
    }

    public void setText(String str) {
        this.mText = str;
    }

    public void setTextColor(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Color value can not be less than 0");
        }
        this.mTextColor = i2;
    }

    public void setTextSize(float f2) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("textSize can not be less than 0");
        }
        this.mTextSize = f2;
    }

    public CircularCountDownView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircularCountDownView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mStartAngle = 0;
        this.mCurrentAngle = 0.0f;
        this.mEndAngle = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        String str = TextUtils.equals("zh-CN", DeviceUtil.getSysLanguage()) ? "跳过 " : "Skip ";
        this.skipDes = str;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FLCircularCountDownView);
        this.mRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FLCircularCountDownView_fl_radius, DeviceUtil.dip2px(20.0f));
        this.mStrokeWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FLCircularCountDownView_fl_strokeWidth, DeviceUtil.dip2px(2.0f));
        this.mBgColor = typedArrayObtainStyledAttributes.getColor(R.styleable.FLCircularCountDownView_fl_centerBackgroundColor, Color.parseColor("#FFFFFF"));
        this.mProgressbarBgColor = typedArrayObtainStyledAttributes.getColor(R.styleable.FLCircularCountDownView_fl_progressbarBackgroundColor, Color.parseColor("#F4F4F4"));
        this.mProgressColor = typedArrayObtainStyledAttributes.getColor(R.styleable.FLCircularCountDownView_fl_progressbarColor, Color.parseColor("#CD853F"));
        this.mMaxProgress = typedArrayObtainStyledAttributes.getInt(R.styleable.FLCircularCountDownView_fl_maxProgress, 100);
        this.mCurrentProgress = typedArrayObtainStyledAttributes.getInt(R.styleable.FLCircularCountDownView_fl_progress, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.FLCircularCountDownView_fl_text);
        this.mText = string != null ? string : str;
        this.mTextColor = typedArrayObtainStyledAttributes.getColor(R.styleable.FLCircularCountDownView_fl_textColor, Color.parseColor("#696969"));
        this.mTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FLCircularCountDownView_fl_textSize, (int) TypedValue.applyDimension(2, 10.0f, getResources().getDisplayMetrics()));
        typedArrayObtainStyledAttributes.recycle();
    }
}

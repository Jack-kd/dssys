package com.fl.saas.adx.base.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.arch.core.util.Function;
import com.fl.saas.B;
import com.fl.saas.R;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class CountDownTextView extends TextView {
    private int bgColor;
    private int bgRadius;
    private Runnable finishFun;
    private CountDownTimer mTimer;
    private B mVisibilityChanged;
    private int remainingCount;
    private Function<Integer, String> tickFun;
    private int totalCount;

    public CountDownTextView(Context context) {
        super(context);
        this.totalCount = 5;
        this.bgColor = 0;
        this.bgRadius = 0;
    }

    public static /* synthetic */ int access$006(CountDownTextView countDownTextView) {
        int i2 = countDownTextView.remainingCount - 1;
        countDownTextView.remainingCount = i2;
        return i2;
    }

    private void lodTimer() {
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        int i2 = this.totalCount;
        if (i2 <= 0) {
            return;
        }
        this.remainingCount = i2 + 1;
        this.mTimer = new CountDownTimer(this.remainingCount * 1000, 1000L) { // from class: com.fl.saas.adx.base.widget.CountDownTextView.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (CountDownTextView.this.finishFun != null) {
                    CountDownTextView.this.finishFun.run();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
                int iAccess$006 = CountDownTextView.access$006(CountDownTextView.this);
                if (iAccess$006 < 0) {
                    if (CountDownTextView.this.finishFun != null) {
                        CountDownTextView.this.finishFun.run();
                        CountDownTextView.this.mTimer.cancel();
                        return;
                    }
                    return;
                }
                if (CountDownTextView.this.tickFun != null) {
                    CountDownTextView.this.setText((String) CountDownTextView.this.tickFun.apply(Integer.valueOf(iAccess$006)));
                }
            }
        };
    }

    public void cancel() {
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancel();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        B b3 = this.mVisibilityChanged;
        if (b3 != null) {
            b3.a(Integer.valueOf(i2));
        }
    }

    public void setCount(int i2) {
        this.totalCount = i2;
    }

    public CountDownTextView setFinish(Runnable runnable) {
        this.finishFun = runnable;
        return this;
    }

    public CountDownTextView setOnTick(Function<Integer, String> function) {
        this.tickFun = function;
        return this;
    }

    public void setOnVisibilityChanged(B b3) {
        this.mVisibilityChanged = b3;
    }

    public void start() {
        lodTimer();
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
    }

    public void unOnVisibilityChanged() {
        this.mVisibilityChanged = null;
    }

    public CountDownTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CountDownTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.totalCount = 5;
        this.bgColor = 0;
        this.bgRadius = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FLCountDownTextView);
        this.totalCount = typedArrayObtainStyledAttributes.getInt(R.styleable.FLCountDownTextView_fl_count, 5);
        this.bgColor = typedArrayObtainStyledAttributes.getColor(R.styleable.FLCountDownTextView_fl_bg_color, -7829368);
        this.bgRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FLCountDownTextView_fl_bg_radius, 0);
        typedArrayObtainStyledAttributes.recycle();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.bgRadius);
        gradientDrawable.setColor(this.bgColor);
        setBackground(gradientDrawable);
    }
}

package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.arch.core.util.Function;
import com.fl.saas.B;

/* loaded from: classes3.dex */
public class CountDownProgressView extends FrameLayout {
    private Runnable finishFun;
    private CountDownTimer mTimer;
    private B mVisibilityChanged;
    private int remainingCount;
    private RoundProgressView roundProgressView;
    private TextView textview;
    private Function<Integer, String> tickFun;
    private int totalCount;
    private int visibilityState;

    public CountDownProgressView(Context context) {
        super(context);
        this.totalCount = 5;
        createView();
    }

    public static /* synthetic */ int access$006(CountDownProgressView countDownProgressView) {
        int i2 = countDownProgressView.remainingCount - 1;
        countDownProgressView.remainingCount = i2;
        return i2;
    }

    private void createView() {
        TextView textView = new TextView(getContext());
        this.textview = textView;
        textView.setTextSize(2, 13.0f);
        this.textview.setGravity(17);
        this.textview.setTypeface(Typeface.DEFAULT_BOLD);
        this.textview.setTextColor(-1);
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        addView(this.textview, layoutParams);
        RoundProgressView roundProgressView = new RoundProgressView(getContext());
        this.roundProgressView = roundProgressView;
        addView(roundProgressView, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        Function<Integer, String> function = this.tickFun;
        if (function != null && this.textview != null) {
            this.textview.setText(function.apply(1));
        }
        RoundProgressView roundProgressView = this.roundProgressView;
        if (roundProgressView != null) {
            roundProgressView.setProgress(this.totalCount * 1000);
        }
        Runnable runnable = this.finishFun;
        if (runnable != null) {
            runnable.run();
            this.mTimer.cancel();
        }
    }

    private void lodTimer() {
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        if (this.totalCount <= 0) {
            return;
        }
        RoundProgressView roundProgressView = this.roundProgressView;
        if (roundProgressView != null) {
            roundProgressView.setMaxProgress(r0 * 1000);
        }
        this.remainingCount = this.totalCount * 20;
        this.mTimer = new CountDownTimer(this.remainingCount * 50, 50L) { // from class: com.fl.saas.adx.base.widget.CountDownProgressView.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                CountDownProgressView.this.finish();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
                int iAccess$006 = CountDownProgressView.access$006(CountDownProgressView.this);
                if (iAccess$006 < 0) {
                    CountDownProgressView.this.finish();
                } else if (iAccess$006 % 5 == 0 && CountDownProgressView.this.tickFun != null && CountDownProgressView.this.textview != null) {
                    int i2 = (((int) j2) / 1000) + 1;
                    CountDownProgressView.this.textview.setText((String) CountDownProgressView.this.tickFun.apply(Integer.valueOf(i2 >= 1 ? i2 : 1)));
                }
                if (CountDownProgressView.this.roundProgressView != null) {
                    CountDownProgressView.this.roundProgressView.setProgress((CountDownProgressView.this.totalCount * 1000) - j2);
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

    public int getVisibilityState() {
        return this.visibilityState;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancel();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.visibilityState = i2;
        B b3 = this.mVisibilityChanged;
        if (b3 != null) {
            b3.a(Integer.valueOf(i2));
        }
    }

    public void setCount(int i2) {
        this.totalCount = i2;
    }

    public CountDownProgressView setFinish(Runnable runnable) {
        this.finishFun = runnable;
        return this;
    }

    public CountDownProgressView setOnTick(Function<Integer, String> function) {
        this.tickFun = function;
        return this;
    }

    public void setOnVisibilityChanged(B b3) {
        this.mVisibilityChanged = b3;
    }

    public void setText(String str) {
        TextView textView = this.textview;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void start() {
        lodTimer();
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
        Function<Integer, String> function = this.tickFun;
        if (function == null || this.textview == null) {
            return;
        }
        this.textview.setText(function.apply(Integer.valueOf(this.totalCount)));
    }

    public void unOnVisibilityChanged() {
        this.mVisibilityChanged = null;
    }

    public CountDownProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CountDownProgressView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.totalCount = 5;
    }
}

package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import com.fl.saas.R;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class SkipView extends FrameLayout {
    private Runnable cancelFun;
    private CircularCountDownView circle_skip;
    private Runnable finishFun;
    private CountDownTimer mTimer;
    private int remainingCount;
    private boolean showCountDown;
    private Function<Integer, String> tickFun;
    private int totalCount;
    private CountDownTextView tv_skip;
    private int type;
    private View v_skip;
    private int value;

    public SkipView(@NonNull Context context) {
        super(context);
        this.totalCount = 5;
    }

    public static /* synthetic */ void a(SkipView skipView, View view) {
        Runnable runnable = skipView.cancelFun;
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ int access$006(SkipView skipView) {
        int i2 = skipView.remainingCount - 1;
        skipView.remainingCount = i2;
        return i2;
    }

    public static /* synthetic */ void b(SkipView skipView, View view) {
        Runnable runnable = skipView.cancelFun;
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void c(SkipView skipView, View view) {
        Runnable runnable = skipView.cancelFun;
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void d(SkipView skipView, View view) {
        Runnable runnable = skipView.cancelFun;
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void e(SkipView skipView, View view) {
        Runnable runnable = skipView.cancelFun;
        if (runnable != null) {
            runnable.run();
        }
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
        this.remainingCount = i2 * 20;
        this.mTimer = new CountDownTimer(this.totalCount * 1000, 50L) { // from class: com.fl.saas.adx.base.widget.SkipView.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (SkipView.this.finishFun != null) {
                    SkipView.this.finishFun.run();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
                if (SkipView.access$006(SkipView.this) < 0) {
                    if (SkipView.this.finishFun != null) {
                        SkipView.this.finishFun.run();
                        SkipView.this.mTimer.cancel();
                        return;
                    }
                    return;
                }
                if (SkipView.this.circle_skip != null) {
                    SkipView.this.circle_skip.setProgress((int) (((SkipView.this.totalCount * 1000) - j2) / (SkipView.this.totalCount * 10.0d)));
                }
            }
        };
    }

    public void cancel() {
        if (this.showCountDown) {
            CountDownTextView countDownTextView = this.tv_skip;
            if (countDownTextView != null) {
                countDownTextView.cancel();
                return;
            }
            return;
        }
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    public void createView() {
        View viewInflate = ViewHelper.inflate(getContext(), R.layout.fl_adx_view_spread_skipview);
        this.tv_skip = (CountDownTextView) viewInflate.findViewById(R.id.tv_skip);
        this.circle_skip = (CircularCountDownView) viewInflate.findViewById(R.id.circle_skip);
        this.v_skip = viewInflate.findViewById(R.id.v_skip);
        addView(viewInflate, ViewHelper.getWrapParent());
    }

    public void onClick() {
        View view;
        View.OnClickListener onClickListener;
        if (this.showCountDown) {
            if (this.type == 0) {
                return;
            }
            this.type = 0;
            this.v_skip.setVisibility(8);
            view = this.tv_skip;
            onClickListener = new View.OnClickListener() { // from class: com.fl.saas.adx.base.widget.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SkipView.a(this.f30305b, view2);
                }
            };
        } else {
            if (this.type == 0) {
                return;
            }
            this.type = 0;
            this.v_skip.setVisibility(8);
            view = this.circle_skip;
            onClickListener = new View.OnClickListener() { // from class: com.fl.saas.adx.base.widget.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SkipView.c(this.f30306b, view2);
                }
            };
        }
        view.setOnClickListener(onClickListener);
    }

    public SkipView setCancel(Runnable runnable) {
        this.cancelFun = runnable;
        return this;
    }

    public void setCount(int i2) {
        this.totalCount = i2;
    }

    public SkipView setFinish(Runnable runnable) {
        this.finishFun = runnable;
        return this;
    }

    public SkipView setOnTick(Function<Integer, String> function) {
        this.tickFun = function;
        return this;
    }

    public void setShowCountDown(boolean z2) {
        View view;
        View.OnClickListener onClickListener;
        this.showCountDown = z2;
        if (z2) {
            this.tv_skip.setVisibility(0);
            this.circle_skip.setVisibility(8);
            this.tv_skip.setOnTick(this.tickFun).setFinish(this.finishFun);
            if (this.type == 0) {
                view = this.tv_skip;
                onClickListener = new View.OnClickListener() { // from class: com.fl.saas.adx.base.widget.r
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        SkipView.d(this.f30307b, view2);
                    }
                };
                view.setOnClickListener(onClickListener);
            }
        } else {
            this.tv_skip.setVisibility(8);
            this.circle_skip.setVisibility(0);
            if (this.type == 0) {
                view = this.circle_skip;
                onClickListener = new View.OnClickListener() { // from class: com.fl.saas.adx.base.widget.s
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        SkipView.b(this.f30308b, view2);
                    }
                };
                view.setOnClickListener(onClickListener);
            }
        }
        this.v_skip.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.widget.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SkipView.e(this.f30309b, view2);
            }
        });
    }

    public void setValue(int i2, int i3) {
        this.type = i2;
        this.value = i3;
        if (i2 == 0 || i3 <= 0) {
            return;
        }
        this.v_skip.setVisibility(0);
        ViewGroup.LayoutParams layoutParams = this.v_skip.getLayoutParams();
        int iDip2px = DeviceUtil.dip2px((i3 * 40) / 100.0f);
        layoutParams.width = iDip2px;
        layoutParams.height = iDip2px;
        this.v_skip.setLayoutParams(layoutParams);
    }

    public void start() {
        if (this.showCountDown) {
            CountDownTextView countDownTextView = this.tv_skip;
            if (countDownTextView != null) {
                countDownTextView.start();
                return;
            }
            return;
        }
        lodTimer();
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
    }

    public SkipView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SkipView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.totalCount = 5;
        createView();
    }
}

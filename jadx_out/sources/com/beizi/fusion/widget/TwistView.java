package com.beizi.fusion.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.beizi.fusion.R;
import com.beizi.fusion.mh;
import com.beizi.fusion.vo;
import com.beizi.fusion.yn;
import com.sigmob.sdk.base.common.C1244a;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class TwistView extends RelativeLayout {
    public static final long DELAY_TIME_TWIST = 100;

    /* renamed from: A, reason: collision with root package name */
    private int f17194A;

    /* renamed from: B, reason: collision with root package name */
    private int f17195B;

    /* renamed from: C, reason: collision with root package name */
    private i f17196C;

    /* renamed from: D, reason: collision with root package name */
    private int f17197D;

    /* renamed from: E, reason: collision with root package name */
    private boolean f17198E;

    /* renamed from: F, reason: collision with root package name */
    private int f17199F;

    /* renamed from: G, reason: collision with root package name */
    private int f17200G;

    /* renamed from: H, reason: collision with root package name */
    private int f17201H;

    /* renamed from: I, reason: collision with root package name */
    private boolean f17202I;

    /* renamed from: J, reason: collision with root package name */
    private Handler f17203J;

    /* renamed from: a, reason: collision with root package name */
    private View f17204a;

    /* renamed from: b, reason: collision with root package name */
    private View f17205b;

    /* renamed from: c, reason: collision with root package name */
    private View f17206c;

    /* renamed from: d, reason: collision with root package name */
    private View f17207d;

    /* renamed from: e, reason: collision with root package name */
    private BackArrowView f17208e;

    /* renamed from: f, reason: collision with root package name */
    private BackArrowView f17209f;

    /* renamed from: g, reason: collision with root package name */
    private BackArrowView f17210g;

    /* renamed from: h, reason: collision with root package name */
    private ShakeView f17211h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f17212i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f17213j;

    /* renamed from: k, reason: collision with root package name */
    private int f17214k;

    /* renamed from: l, reason: collision with root package name */
    private ObjectAnimator f17215l;

    /* renamed from: m, reason: collision with root package name */
    private final int f17216m;

    /* renamed from: n, reason: collision with root package name */
    private final int f17217n;

    /* renamed from: o, reason: collision with root package name */
    private final long f17218o;

    /* renamed from: p, reason: collision with root package name */
    private final long f17219p;

    /* renamed from: q, reason: collision with root package name */
    private final long f17220q;

    /* renamed from: r, reason: collision with root package name */
    private String f17221r;

    /* renamed from: s, reason: collision with root package name */
    private String f17222s;

    /* renamed from: t, reason: collision with root package name */
    private String f17223t;

    /* renamed from: u, reason: collision with root package name */
    private long f17224u;

    /* renamed from: v, reason: collision with root package name */
    private Timer f17225v;

    /* renamed from: w, reason: collision with root package name */
    private TimerTask f17226w;

    /* renamed from: x, reason: collision with root package name */
    private Timer f17227x;

    /* renamed from: y, reason: collision with root package name */
    private TimerTask f17228y;

    /* renamed from: z, reason: collision with root package name */
    private int f17229z;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                int i2 = message.what;
                if (i2 == 2000) {
                    TwistView twistView = TwistView.this;
                    twistView.updateStatus(twistView.f17197D);
                } else if (i2 == 1000) {
                    TwistView.this.f();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class b extends TimerTask {
        public b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                if (TwistView.this.f17202I || TwistView.this.f17203J == null) {
                    return;
                }
                Message messageObtainMessage = TwistView.this.f17203J.obtainMessage();
                messageObtainMessage.what = 2000;
                TwistView.this.f17203J.sendMessage(messageObtainMessage);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements Animator.AnimatorListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f17232a;

        public c(int i2) {
            this.f17232a = i2;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            try {
                if (this.f17232a + 1 < TwistView.this.getCountAnimation() || TwistView.this.f17196C == null) {
                    return;
                }
                TwistView.this.f17202I = true;
                TwistView.this.f17196C.a();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((Float) valueAnimator.getAnimatedValue()).getClass();
        }
    }

    public class e implements ValueAnimator.AnimatorUpdateListener {
        public e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((Float) valueAnimator.getAnimatedValue()).getClass();
        }
    }

    public class f extends TimerTask {
        public f() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                if (TwistView.this.f17203J != null) {
                    TwistView.this.f17203J.sendEmptyMessage(1000);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f17237a;

        public g(int i2) {
            this.f17237a = i2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            if (TwistView.this.c()) {
                return;
            }
            TwistView.this.getCountAnimation();
        }
    }

    public class h extends AnimatorListenerAdapter {
        public h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
        }
    }

    public interface i {
        void a();
    }

    public TwistView(Context context) {
        super(context);
        this.f17216m = 1000;
        this.f17217n = 2000;
        this.f17218o = 500L;
        this.f17219p = 0L;
        this.f17220q = 0L;
        this.f17221r = "#FFFFFFFF";
        this.f17222s = "#99FFFFFF";
        this.f17223t = "#33FFFFFF";
        this.f17224u = 1000L;
        this.f17229z = 0;
        this.f17194A = 0;
        this.f17195B = 0;
        this.f17197D = 0;
        this.f17198E = true;
        this.f17199F = 3;
        this.f17200G = 1;
        this.f17201H = 95;
        this.f17202I = false;
        this.f17203J = new a(Looper.getMainLooper());
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCountAnimation() {
        return (int) (this.f17224u / 100);
    }

    public void cancelArrowTimerTask() {
        try {
            Timer timer = this.f17227x;
            if (timer != null) {
                timer.cancel();
                this.f17227x = null;
            }
            TimerTask timerTask = this.f17228y;
            if (timerTask != null) {
                timerTask.cancel();
                this.f17228y = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void cancelTwistTimerTask() {
        try {
            Timer timer = this.f17225v;
            if (timer != null) {
                timer.cancel();
                this.f17225v = null;
            }
            TimerTask timerTask = this.f17226w;
            if (timerTask != null) {
                timerTask.cancel();
                this.f17226w = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void destroyView() {
        try {
            ShakeView shakeView = this.f17211h;
            if (shakeView != null) {
                shakeView.stopShake();
            }
            cancelTwistTimerTask();
            cancelArrowTimerTask();
            removeHandlerMsg();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @RequiresApi(api = 21)
    public void hideTargetView(View view, long j2, int i2) {
        try {
            int right = view.getRight();
            int top = (view.getTop() + view.getBottom()) / 2;
            float fMax = Math.max(view.getWidth(), view.getHeight());
            float countAnimation = fMax / getCountAnimation();
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, right, top, fMax - (i2 * countAnimation), fMax - (countAnimation * (i2 + 1)));
            animatorCreateCircularReveal.setDuration(j2);
            view.clearAnimation();
            animatorCreateCircularReveal.addListener(new h());
            animatorCreateCircularReveal.start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void removeHandlerMsg() {
        try {
            Handler handler = this.f17203J;
            if (handler != null) {
                handler.removeCallbacks(null);
                this.f17203J = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setDescribeText(String str) {
        try {
            TextView textView = this.f17213j;
            if (textView != null) {
                textView.setText(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setDurationAnimation(long j2) {
        this.f17224u = j2;
    }

    public void setJumpClickListener(View.OnClickListener onClickListener) {
        View view = this.f17207d;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    public void setJumpOnTouchListener(View.OnTouchListener onTouchListener) {
        View view = this.f17207d;
        if (view != null) {
            view.setOnTouchListener(onTouchListener);
        }
    }

    public void setMainTitleText(String str) {
        try {
            TextView textView = this.f17212i;
            if (textView != null) {
                textView.setText(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setRotationEndCallback(i iVar) {
        this.f17196C = iVar;
    }

    public void setTwistTotalLayoutBg(String str) {
        View view = this.f17207d;
        if (view != null) {
            try {
                yn.a(view, str, 0, "", 100);
            } catch (Exception e2) {
                mh.c("TwistView", " e : " + e2);
            }
        }
    }

    public void setTwistTotalLayoutWidthAndHeight(int i2, int i3) {
        try {
            View view = this.f17207d;
            if (view != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = i2;
                layoutParams.height = i3 - vo.a(getContext(), this.f17201H);
                this.f17207d.setPadding(vo.a(getContext(), 0.0f), vo.a(getContext(), this.f17199F), vo.a(getContext(), 0.0f), vo.a(getContext(), this.f17199F));
                this.f17207d.setLayoutParams(layoutParams);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @RequiresApi(api = 21)
    public void showTargetView(View view, long j2, int i2) {
        try {
            float fMax = Math.max(view.getWidth(), view.getHeight()) / getCountAnimation();
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, view.getRight(), (view.getTop() + view.getBottom()) / 2, (i2 * fMax) + 0.0f, fMax * (i2 + 1));
            animatorCreateCircularReveal.setDuration(j2);
            view.clearAnimation();
            animatorCreateCircularReveal.addListener(new g(i2));
            animatorCreateCircularReveal.start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void startTwistTimerTask() {
        try {
            if (this.f17225v == null) {
                this.f17225v = new Timer();
            }
            if (this.f17226w == null) {
                this.f17226w = new b();
            }
            this.f17225v.scheduleAtFixedRate(this.f17226w, 0L, 100L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void updateRollStatus(int i2) {
        this.f17197D = i2;
    }

    @RequiresApi(api = 21)
    public void updateStatus(int i2) {
        Throwable th;
        if (i2 != 0) {
            try {
                int countAnimation = getCountAnimation();
                if (this.f17195B != i2) {
                    if (this.f17198E) {
                        try {
                            this.f17194A = 0;
                        } catch (Throwable th2) {
                            th = th2;
                            th.printStackTrace();
                        }
                    } else {
                        this.f17194A = countAnimation - this.f17194A;
                    }
                    this.f17195B = i2;
                }
                if (this.f17194A < 0) {
                    this.f17194A = 0;
                }
                if (this.f17194A >= countAnimation) {
                    if (this.f17198E) {
                        this.f17194A = 0;
                    } else {
                        this.f17194A = countAnimation;
                    }
                }
                int i3 = this.f17194A;
                if (i3 >= 0 && i3 <= countAnimation) {
                    try {
                        a(this.f17205b, this.f17204a, 100L, i2, i3);
                        this.f17194A++;
                    } catch (Throwable th3) {
                        th = th3;
                        th = th;
                        th.printStackTrace();
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    private void b() {
        try {
            this.f17204a = findViewById(R.id.beizi_twist_go_imageview);
            this.f17207d = findViewById(R.id.beizi_twist_shake_total_layout);
            this.f17205b = findViewById(R.id.beizi_twist_total_layout);
            this.f17206c = findViewById(R.id.beizi_twist_right_total_layout);
            this.f17212i = (TextView) findViewById(R.id.beizi_twist_title_text);
            this.f17213j = (TextView) findViewById(R.id.beizi_twist_describe_text);
            this.f17208e = (BackArrowView) findViewById(R.id.beizi_twist_right_first_image);
            this.f17209f = (BackArrowView) findViewById(R.id.beizi_twist_right_second_image);
            this.f17210g = (BackArrowView) findViewById(R.id.beizi_twist_right_third_image);
            ShakeView shakeView = (ShakeView) findViewById(R.id.beizi_twist_top_view);
            this.f17211h = shakeView;
            shakeView.updateTwistRollAnim();
            setTwistTotalLayoutBg("#d9333333");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return this.f17195B == 1;
    }

    private void d() {
        try {
            if (this.f17227x == null) {
                this.f17227x = new Timer();
            }
            if (this.f17228y == null) {
                this.f17228y = new f();
            }
            this.f17227x.schedule(this.f17228y, 0L, 500L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void e() {
        try {
            ShakeView shakeView = this.f17211h;
            if (shakeView != null) {
                shakeView.startShake();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            int i2 = this.f17214k;
            if (i2 == 0) {
                BackArrowView backArrowView = this.f17208e;
                if (backArrowView != null) {
                    backArrowView.setViewColor(Color.parseColor(this.f17221r));
                }
                BackArrowView backArrowView2 = this.f17209f;
                if (backArrowView2 != null) {
                    backArrowView2.setViewColor(Color.parseColor(this.f17222s));
                }
                BackArrowView backArrowView3 = this.f17210g;
                if (backArrowView3 != null) {
                    backArrowView3.setViewColor(Color.parseColor(this.f17223t));
                }
            } else if (i2 == 1) {
                BackArrowView backArrowView4 = this.f17208e;
                if (backArrowView4 != null) {
                    backArrowView4.setViewColor(Color.parseColor(this.f17223t));
                }
                BackArrowView backArrowView5 = this.f17209f;
                if (backArrowView5 != null) {
                    backArrowView5.setViewColor(Color.parseColor(this.f17221r));
                }
                BackArrowView backArrowView6 = this.f17210g;
                if (backArrowView6 != null) {
                    backArrowView6.setViewColor(Color.parseColor(this.f17222s));
                }
            } else if (i2 == 2) {
                BackArrowView backArrowView7 = this.f17208e;
                if (backArrowView7 != null) {
                    backArrowView7.setViewColor(Color.parseColor(this.f17222s));
                }
                BackArrowView backArrowView8 = this.f17209f;
                if (backArrowView8 != null) {
                    backArrowView8.setViewColor(Color.parseColor(this.f17223t));
                }
                BackArrowView backArrowView9 = this.f17210g;
                if (backArrowView9 != null) {
                    backArrowView9.setViewColor(Color.parseColor(this.f17221r));
                }
            }
            int i3 = this.f17214k;
            if (i3 == 2) {
                this.f17214k = 0;
            } else {
                this.f17214k = i3 + 1;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a() {
        try {
            View.inflate(getContext(), R.layout.beizi_twist_view, this);
            b();
            e();
            d();
            startTwistTimerTask();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(View view, View view2, long j2, int i2, int i3) {
        if (view != null) {
            try {
                if (view.getVisibility() == 0 && view.getParent() != null && view.hasWindowFocus()) {
                    if (i2 == 1) {
                        hideTargetView(view, j2, i3);
                        a(view2, view.getRight(), j2, true, i3);
                    } else {
                        if (i2 != 2 || this.f17198E) {
                            return;
                        }
                        showTargetView(view, j2, i3);
                        a(view2, view.getRight(), j2, false, i3);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void b(View view, float f2, long j2, boolean z2, int i2) {
        try {
            if (z2) {
                float width = f2 - view.getWidth();
                float countAnimation = width / getCountAnimation();
                float f3 = i2 * countAnimation;
                float f4 = f3 + 0.0f;
                float f5 = countAnimation + f3;
                if (f4 > 0.0f || f5 > 0.0f) {
                    this.f17198E = false;
                }
                if ((f4 >= width || f5 >= width) && i2 >= getCountAnimation()) {
                    return;
                }
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", f4, f5);
                this.f17215l = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(j2);
                this.f17215l.start();
                this.f17215l.addListener(new c(i2));
                return;
            }
            float width2 = f2 - view.getWidth();
            float countAnimation2 = width2 / getCountAnimation();
            float f6 = width2 - (i2 * countAnimation2);
            float f7 = width2 - ((i2 + 1) * countAnimation2);
            if (f6 >= 0.0f && f7 >= 0.0f) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationX", f6, f7);
                this.f17215l = objectAnimatorOfFloat2;
                objectAnimatorOfFloat2.setDuration(j2);
                this.f17215l.start();
                return;
            }
            this.f17198E = true;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(View view, float f2, long j2, boolean z2, int i2) {
        try {
            b(view, f2, j2, z2, i2);
            a(view, j2, z2, i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(View view, long j2, boolean z2, int i2) {
        try {
            if (z2) {
                float countAnimation = 360.0f / getCountAnimation();
                float f2 = (i2 * countAnimation) + 0.0f;
                float f3 = countAnimation * (i2 + 1);
                if (f2 <= 360.0f && f3 <= 360.0f) {
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, C1244a.f35650B, f2, f3);
                    objectAnimatorOfFloat.setDuration(j2);
                    objectAnimatorOfFloat.addUpdateListener(new d());
                    objectAnimatorOfFloat.start();
                    return;
                }
                return;
            }
            float countAnimation2 = (-360.0f) / getCountAnimation();
            float f4 = (i2 * countAnimation2) + 0.0f;
            float f5 = countAnimation2 * (i2 + 1);
            if (f4 >= -360.0f && f5 >= -360.0f) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, C1244a.f35650B, f4, f5);
                objectAnimatorOfFloat2.setDuration(j2);
                objectAnimatorOfFloat2.addUpdateListener(new e());
                objectAnimatorOfFloat2.start();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public TwistView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17216m = 1000;
        this.f17217n = 2000;
        this.f17218o = 500L;
        this.f17219p = 0L;
        this.f17220q = 0L;
        this.f17221r = "#FFFFFFFF";
        this.f17222s = "#99FFFFFF";
        this.f17223t = "#33FFFFFF";
        this.f17224u = 1000L;
        this.f17229z = 0;
        this.f17194A = 0;
        this.f17195B = 0;
        this.f17197D = 0;
        this.f17198E = true;
        this.f17199F = 3;
        this.f17200G = 1;
        this.f17201H = 95;
        this.f17202I = false;
        this.f17203J = new a(Looper.getMainLooper());
        a();
    }

    public TwistView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17216m = 1000;
        this.f17217n = 2000;
        this.f17218o = 500L;
        this.f17219p = 0L;
        this.f17220q = 0L;
        this.f17221r = "#FFFFFFFF";
        this.f17222s = "#99FFFFFF";
        this.f17223t = "#33FFFFFF";
        this.f17224u = 1000L;
        this.f17229z = 0;
        this.f17194A = 0;
        this.f17195B = 0;
        this.f17197D = 0;
        this.f17198E = true;
        this.f17199F = 3;
        this.f17200G = 1;
        this.f17201H = 95;
        this.f17202I = false;
        this.f17203J = new a(Looper.getMainLooper());
        a();
    }
}

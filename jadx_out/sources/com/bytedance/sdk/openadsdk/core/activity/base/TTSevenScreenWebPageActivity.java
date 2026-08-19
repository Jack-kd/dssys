package com.bytedance.sdk.openadsdk.core.activity.base;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.cqo.BottomGradientHintView;
import com.byazt.lf.k;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.u;
import com.byazt.zn.xh;
import org.json.JSONException;

/* loaded from: classes3.dex */
public class TTSevenScreenWebPageActivity extends TTWebPageActivity {
    private int as;

    /* renamed from: f, reason: collision with root package name */
    private View f28952f;
    private long fi;
    private boolean gd;
    private GestureDetector hd;
    private int kg;

    /* renamed from: m, reason: collision with root package name */
    private int f28953m;
    private int mp;
    private float nd;
    private float nr;
    private BottomGradientHintView pc;
    private float qu;
    private float rk;
    private boolean ru;
    private float rz;
    private boolean wt;

    /* renamed from: y, reason: collision with root package name */
    private View f28955y;
    private FrameLayout yr;
    private GestureDetector zx;
    private boolean ky = false;
    private boolean xh = false;

    /* renamed from: ms, reason: collision with root package name */
    private boolean f28954ms = false;
    private int vq = 0;
    private Rect ea = new Rect();
    private Rect su = new Rect();
    private Rect rv = new Rect();
    private boolean an = true;

    private void ec() {
        if (this.f28954ms || !this.ky) {
            return;
        }
        this.f28954ms = true;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(v(), this.as);
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.15
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TTSevenScreenWebPageActivity.this.l(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.16
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TTSevenScreenWebPageActivity.this.xh = false;
                TTSevenScreenWebPageActivity.this.f28954ms = false;
                TTSevenScreenWebPageActivity.this.nd = r2.as;
            }
        });
        valueAnimatorOfInt.start();
        hp(xh.jx(this, 20.0f));
    }

    private void vv() {
        if (this.f28954ms || this.xh) {
            return;
        }
        this.f28954ms = true;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(v(), 0);
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TTSevenScreenWebPageActivity.this.l(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.13
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TTSevenScreenWebPageActivity.this.xh = true;
                TTSevenScreenWebPageActivity.this.f28954ms = false;
                TTSevenScreenWebPageActivity.this.nd = 0.0f;
                if (TTSevenScreenWebPageActivity.this.pc != null) {
                    TTSevenScreenWebPageActivity.this.pc.setVisibility(8);
                }
                TTSevenScreenWebPageActivity.this.hp(0.0f);
            }
        });
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xs() {
        this.f28954ms = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(300L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (TTSevenScreenWebPageActivity.this.f28952f != null) {
                    TTSevenScreenWebPageActivity.this.f28952f.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
                if (TTSevenScreenWebPageActivity.this.pc != null) {
                    TTSevenScreenWebPageActivity.this.pc.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (TTSevenScreenWebPageActivity.this.f28952f != null) {
                    TTSevenScreenWebPageActivity.this.f28952f.setVisibility(8);
                }
                if (TTSevenScreenWebPageActivity.this.pc != null) {
                    TTSevenScreenWebPageActivity.this.pc.setVisibility(8);
                }
            }
        });
        valueAnimatorOfFloat.start();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(v(), this.kg);
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TTSevenScreenWebPageActivity.this.l(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TTSevenScreenWebPageActivity.this.ky = false;
                TTSevenScreenWebPageActivity.this.xh = false;
                TTSevenScreenWebPageActivity.this.f28954ms = false;
                TTSevenScreenWebPageActivity.this.finish();
            }
        });
        valueAnimatorOfInt.start();
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void e() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity
    public int gu() {
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity, com.byazt.gi.BaseLandingPageActivity, com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        BottomGradientHintView bottomGradientHintView = this.pc;
        if (bottomGradientHintView != null) {
            bottomGradientHintView.l();
        }
    }

    private void k() {
        this.hd = new GestureDetector(this, new GestureDetector.SimpleOnGestureListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.12
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                if (!TTSevenScreenWebPageActivity.this.ky || TTSevenScreenWebPageActivity.this.f28954ms) {
                    return false;
                }
                TTSevenScreenWebPageActivity.this.xs();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (!TTSevenScreenWebPageActivity.this.ky || TTSevenScreenWebPageActivity.this.f28954ms) {
                    return false;
                }
                TTSevenScreenWebPageActivity.this.xs();
                return true;
            }
        });
        this.zx = new GestureDetector(this, new GestureDetector.SimpleOnGestureListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.17
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                if (!TTSevenScreenWebPageActivity.this.ky || TTSevenScreenWebPageActivity.this.f28954ms) {
                    return true;
                }
                TTSevenScreenWebPageActivity.this.rz = motionEvent.getY();
                TTSevenScreenWebPageActivity.this.nd = r2.v();
                return true;
            }
        });
        this.f28952f.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.18
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (TTSevenScreenWebPageActivity.this.ky) {
                    return TTSevenScreenWebPageActivity.this.hd.onTouchEvent(motionEvent);
                }
                return false;
            }
        });
        this.f28955y.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.19
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (TTSevenScreenWebPageActivity.this.ky) {
                    return TTSevenScreenWebPageActivity.this.zx.onTouchEvent(motionEvent);
                }
                return false;
            }
        });
        SSWebView sSWebView = this.ns;
        if (sSWebView != null) {
            sSWebView.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.20
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (TTSevenScreenWebPageActivity.this.ky && !TTSevenScreenWebPageActivity.this.xh && !TTSevenScreenWebPageActivity.this.wt && !TTSevenScreenWebPageActivity.this.ru && !TTSevenScreenWebPageActivity.this.gd) {
                        int action = motionEvent.getAction();
                        if (action != 0) {
                            if (action != 1) {
                                if (action == 2) {
                                    return true;
                                }
                                if (action != 3) {
                                    return false;
                                }
                            }
                            long jCurrentTimeMillis = System.currentTimeMillis() - TTSevenScreenWebPageActivity.this.fi;
                            float fAbs = Math.abs(motionEvent.getX() - TTSevenScreenWebPageActivity.this.nr);
                            float fAbs2 = Math.abs(motionEvent.getY() - TTSevenScreenWebPageActivity.this.rk);
                            int iJx = xh.jx(TTSevenScreenWebPageActivity.this.f20448w, 5.0f);
                            if (jCurrentTimeMillis < 200) {
                                float f2 = iJx;
                                if (fAbs < f2 && fAbs2 < f2) {
                                    return false;
                                }
                            }
                            return true;
                        }
                        TTSevenScreenWebPageActivity.this.fi = System.currentTimeMillis();
                        TTSevenScreenWebPageActivity.this.nr = motionEvent.getX();
                        TTSevenScreenWebPageActivity.this.rk = motionEvent.getY();
                    }
                    return false;
                }
            });
            this.ns.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.21
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i2, int i3, int i4, int i5) {
                    TTSevenScreenWebPageActivity.this.an = i3 == 0;
                }
            });
        }
        ImageView imageView = this.f20438k;
        if (imageView != null) {
            imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.22
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        view.performClick();
                    }
                    return true;
                }
            });
        }
        ImageView imageView2 = this.f20447v;
        if (imageView2 != null) {
            imageView2.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.23
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        view.performClick();
                    }
                    return true;
                }
            });
        }
        TextView textView = this.xs;
        if (textView != null) {
            textView.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        view.performClick();
                    }
                    return true;
                }
            });
        }
    }

    private void u() {
        this.f28954ms = true;
        this.f28952f.setVisibility(0);
        this.pc.setVisibility(0);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(300L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (TTSevenScreenWebPageActivity.this.f28952f != null) {
                    TTSevenScreenWebPageActivity.this.f28952f.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
                if (TTSevenScreenWebPageActivity.this.pc != null) {
                    TTSevenScreenWebPageActivity.this.pc.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (TTSevenScreenWebPageActivity.this.pc != null) {
                    TTSevenScreenWebPageActivity.this.pc.hp();
                }
            }
        });
        valueAnimatorOfFloat.start();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.kg, this.as);
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TTSevenScreenWebPageActivity.this.l(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TTSevenScreenWebPageActivity.this.ky = true;
                TTSevenScreenWebPageActivity.this.f28954ms = false;
                TTSevenScreenWebPageActivity.this.nd = r3.as;
                if (TTSevenScreenWebPageActivity.this.pc != null) {
                    TTSevenScreenWebPageActivity.this.pc.setVisibility(0);
                }
            }
        });
        valueAnimatorOfInt.start();
        hp(xh.jx(this, 20.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int v() {
        try {
            return ((FrameLayout.LayoutParams) this.f28955y.getLayoutParams()).topMargin;
        } catch (Exception e2) {
            k.hp().hp("sc_getContainerTop", e2);
            return (int) this.nd;
        }
    }

    private void zy() {
        int i2 = getResources().getDisplayMetrics().heightPixels;
        this.kg = i2;
        this.mp = i2;
        this.as = (int) (i2 * 0.3f);
        this.f28953m = xh.jx(this, 55.0f);
        this.vq = xh.jx(this, 44.0f);
    }

    @Override // com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity, com.byazt.gi.BaseLandingPageActivity
    public void a() {
        super.a();
        k();
        u();
    }

    @Override // com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity, com.byazt.gi.BaseLandingPageActivity
    public View eb() {
        zy();
        this.f28955y = super.eb();
        FrameLayout frameLayout = new FrameLayout(this);
        this.yr = frameLayout;
        if (this.f28955y == null) {
            u.hp("mSevenScreenContainer is null");
            k.hp().hp("sc_finish", (Throwable) null);
            finish();
            return this.yr;
        }
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f28952f = new View(this);
        this.f28952f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f28952f.setBackgroundColor(Integer.MIN_VALUE);
        this.f28952f.setAlpha(0.0f);
        this.f28952f.setVisibility(8);
        this.yr.addView(this.f28952f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.topMargin = this.as;
        this.f28955y.setLayoutParams(layoutParams);
        this.f28955y.setBackgroundColor(-1);
        this.yr.addView(this.f28955y);
        return this.yr;
    }

    @Override // com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity
    public LinearLayout jl() {
        return new LinearLayout(this.f20448w) { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.1
            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return TTSevenScreenWebPageActivity.this.jx(motionEvent);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (TTSevenScreenWebPageActivity.this.f28954ms || !TTSevenScreenWebPageActivity.this.ky || TTSevenScreenWebPageActivity.this.wt || TTSevenScreenWebPageActivity.this.ru || TTSevenScreenWebPageActivity.this.gd) {
                    return false;
                }
                return TTSevenScreenWebPageActivity.this.j(motionEvent) || super.onTouchEvent(motionEvent);
            }
        };
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public boolean s() {
        if (!super.s()) {
            xs();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity, com.byazt.gi.BaseLandingPageActivity
    public void w() throws JSONException {
        super.w();
        this.pc = new BottomGradientHintView(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, xh.jx(this, 80.0f));
        layoutParams.gravity = 80;
        this.pc.setVisibility(8);
        this.pc.setAlpha(0.0f);
        this.yr.addView(this.pc, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean j(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getAction()
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L2a
            r3 = 2
            if (r0 == r3) goto Lf
            r5 = 3
            if (r0 == r5) goto L2a
            return r1
        Lf:
            float r5 = r5.getY()
            float r0 = r4.rz
            float r5 = r5 - r0
            float r0 = r4.nd
            float r0 = r0 + r5
            r5 = 0
            float r5 = java.lang.Math.max(r0, r5)
            int r0 = r4.kg
            float r0 = (float) r0
            float r5 = java.lang.Math.min(r5, r0)
            int r5 = (int) r5
            r4.l(r5)
            goto L5a
        L2a:
            int r5 = r4.v()
            boolean r0 = r4.xh
            if (r0 != 0) goto L4d
            int r0 = r4.as
            int r5 = r5 - r0
            int r0 = r4.f28953m
            if (r5 <= r0) goto L3d
            r4.xs()
            goto L5a
        L3d:
            int r5 = java.lang.Math.abs(r5)
            int r0 = r4.f28953m
            if (r5 <= r0) goto L49
            r4.vv()
            goto L5a
        L49:
            r4.ec()
            goto L5a
        L4d:
            int r0 = r4.f28953m
            if (r5 <= r0) goto L55
            r4.ec()
            goto L5a
        L55:
            r4.xh = r1
            r4.vv()
        L5a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.j(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean jx(MotionEvent motionEvent) {
        ImageView imageView = this.f20438k;
        if (imageView != null) {
            imageView.getHitRect(this.ea);
        }
        ImageView imageView2 = this.f20447v;
        if (imageView2 != null) {
            imageView2.getHitRect(this.su);
        }
        TextView textView = this.xs;
        if (textView != null) {
            textView.getHitRect(this.rv);
        }
        this.wt = this.ea.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        this.ru = this.su.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        boolean zContains = this.rv.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        this.gd = zContains;
        if (this.wt || this.ru || zContains || this.f28954ms || !this.ky) {
            return false;
        }
        return this.xh ? hp(motionEvent) : l(motionEvent);
    }

    private boolean l(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z2 = false;
        if (action == 0) {
            this.fi = System.currentTimeMillis();
            this.nr = motionEvent.getX();
            this.rk = motionEvent.getY();
            this.rz = motionEvent.getY();
            this.qu = 0.0f;
        } else if (action == 2) {
            float fAbs = Math.abs(motionEvent.getX() - this.nr);
            float fAbs2 = Math.abs(motionEvent.getY() - this.rk);
            float fJx = xh.jx(this.f20448w, 5.0f);
            if (fAbs > fJx || fAbs2 > fJx) {
                z2 = true;
            }
        }
        BottomGradientHintView bottomGradientHintView = this.pc;
        if (bottomGradientHintView != null && bottomGradientHintView.getVisibility() == 0) {
            this.pc.setVisibility(8);
        }
        return z2;
    }

    private boolean hp(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.rz = motionEvent.getY();
            this.qu = 0.0f;
            return false;
        }
        if (action != 2) {
            return false;
        }
        float y2 = motionEvent.getY() - this.rz;
        this.qu = y2;
        return this.an && y2 > 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final float f2) {
        View view = this.f28955y;
        if (view != null) {
            view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity.14
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f2);
                }
            });
            this.f28955y.setClipToOutline(true);
        }
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void jx() {
        super.jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2) {
        View view = this.f28955y;
        if (view == null) {
            return;
        }
        try {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams.topMargin = i2;
            this.f28955y.setLayoutParams(layoutParams);
            this.nd = i2;
        } catch (Exception e2) {
            k.hp().hp("sc_updateContainerTop", e2);
        }
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void j() {
        hp("detail_skip");
        xs();
    }
}

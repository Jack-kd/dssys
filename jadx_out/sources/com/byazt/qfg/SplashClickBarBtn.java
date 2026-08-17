package com.byazt.qfg;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.jz.sz;
import com.byazt.na.LottieAnimationView;
import com.byazt.xci.mp;
import com.byazt.xci.wt;
import com.byazt.ymw.di;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 1912})
/* loaded from: classes3.dex */
public class SplashClickBarBtn extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public RelativeLayout f24583a;

    /* renamed from: b, reason: collision with root package name */
    public float f24584b;
    public com.byazt.go.hp cx;

    /* renamed from: d, reason: collision with root package name */
    public JSONObject f24585d;
    public float di;
    public mp dy;

    /* renamed from: e, reason: collision with root package name */
    public SlideUpView f24586e;
    public RelativeLayout eb;
    public LinearGradient ec;
    public RockView gu;
    public GradientDrawable hp;
    public JSONObject hq;

    /* renamed from: j, reason: collision with root package name */
    public TextView f24587j;
    public AnimatorSet jl;
    public TextView jx;

    /* renamed from: k, reason: collision with root package name */
    public Rect f24588k;

    /* renamed from: l, reason: collision with root package name */
    public wt f24589l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f24590n;
    public di ns;
    public int nu;

    /* renamed from: o, reason: collision with root package name */
    public float f24591o;

    /* renamed from: q, reason: collision with root package name */
    public SplashClickBarArrow f24592q;

    /* renamed from: s, reason: collision with root package name */
    public LinearLayout f24593s;
    public int[] sz;

    /* renamed from: u, reason: collision with root package name */
    public final AnimatorSet f24594u;
    public int ud;

    /* renamed from: v, reason: collision with root package name */
    public Paint f24595v;
    public final ValueAnimator vv;

    /* renamed from: w, reason: collision with root package name */
    public LottieAnimationView f24596w;
    public JSONObject wv;
    public final ValueAnimator xs;
    public Path zy;

    public SplashClickBarBtn(Context context, mp mpVar) {
        super(context);
        this.f24589l = new wt();
        this.f24594u = new AnimatorSet();
        this.xs = new ValueAnimator();
        this.vv = new ValueAnimator();
        this.sz = new int[]{Color.parseColor("#00FFFFFF"), Color.parseColor("#47FFFFFF"), Color.parseColor("#00FFFFFF")};
        this.f24590n = false;
        this.f24584b = 13.0f;
        this.f24591o = 50.0f;
        this.dy = mpVar;
        w();
    }

    private void e() {
        wt wtVar = this.f24589l;
        if (wtVar == null || wtVar.q() != 5) {
            return;
        }
        postDelayed(new Runnable() { // from class: com.byazt.qfg.SplashClickBarBtn.7
            @Override // java.lang.Runnable
            public void run() {
                if (SplashClickBarBtn.this.f24586e == null) {
                    return;
                }
                SplashClickBarBtn.this.f24586e.hp();
                final AnimatorSet slideUpAnimatorSet = SplashClickBarBtn.this.f24586e.getSlideUpAnimatorSet();
                if (slideUpAnimatorSet == null) {
                    return;
                }
                slideUpAnimatorSet.start();
                slideUpAnimatorSet.addListener(new Animator.AnimatorListener() { // from class: com.byazt.qfg.SplashClickBarBtn.7.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SplashClickBarBtn.this.postDelayed(new Runnable() { // from class: com.byazt.qfg.SplashClickBarBtn.7.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                slideUpAnimatorSet.start();
                            }
                        }, 200L);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        }, 500L);
    }

    public Animator getAnimator() {
        return this.f24594u;
    }

    public di getShakeUtils() {
        return this.ns;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        q();
        post(new Runnable() { // from class: com.byazt.qfg.SplashClickBarBtn.4
            @Override // java.lang.Runnable
            public void run() {
                SplashClickBarBtn.this.hp();
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        di diVar = this.ns;
        if (diVar != null) {
            mp mpVar = this.dy;
            diVar.l(mpVar != null ? mpVar.nu() : 0);
        }
        AnimatorSet animatorSet = this.jl;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.f24594u;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        SlideUpView slideUpView = this.f24586e;
        if (slideUpView != null) {
            slideUpView.l();
        }
        LottieAnimationView lottieAnimationView = this.f24596w;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        a();
        super.onDraw(canvas);
        if (this.xs.isRunning()) {
            this.f24595v.setShader(this.ec);
            canvas.drawRoundRect(new RectF(this.f24588k), xh.jx(getContext(), 50.0f), xh.jx(getContext(), 50.0f), this.f24595v);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        di diVar = this.ns;
        if (diVar != null) {
            if (z2) {
                mp mpVar = this.dy;
                diVar.hp(mpVar != null ? mpVar.nu() : 0);
            } else {
                mp mpVar2 = this.dy;
                diVar.l(mpVar2 != null ? mpVar2.nu() : 0);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.hp.setColor(i2);
        setBackgroundDrawable(this.hp);
    }

    public void setCalculationMethod(int i2) {
        this.ud = i2;
    }

    public void setCalculationTwistMethod(int i2) {
        this.nu = i2;
    }

    public void setDeepShakeValue(float f2) {
        this.di = f2;
    }

    public void setShakeInteractConf(JSONObject jSONObject) {
        this.wv = jSONObject;
    }

    public void setShakeValue(float f2) {
        this.f24584b = f2;
    }

    public void setTwistConfig(JSONObject jSONObject) {
        this.f24585d = jSONObject;
    }

    public void setTwistInteractConf(JSONObject jSONObject) {
        this.hq = jSONObject;
    }

    public void setWriggleValue(float f2) {
        this.f24591o = f2;
    }

    private void a() {
        if (this.f24590n) {
            return;
        }
        this.f24590n = true;
        int iQ = this.f24589l.q();
        if (iQ == 1 || iQ == 2) {
            s();
            eb();
        }
    }

    private void eb() {
        int color = Color.parseColor("#57000000");
        int color2 = Color.parseColor(this.f24589l.e());
        this.hp.setColor(color);
        this.vv.setIntValues(color, color2);
        this.vv.setEvaluator(new ArgbEvaluator());
        this.vv.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.qfg.SplashClickBarBtn.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SplashClickBarBtn.this.hp.setColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                SplashClickBarBtn splashClickBarBtn = SplashClickBarBtn.this;
                splashClickBarBtn.setBackgroundDrawable(splashClickBarBtn.hp);
            }
        });
        this.vv.setDuration(300L);
        this.vv.setStartDelay(800L);
        this.vv.setInterpolator(new PathInterpolator(0.32f, 0.94f, 0.6f, 1.0f));
        this.f24594u.playTogether(this.vv);
    }

    private void q() {
        if (this.f24589l != null && isShown()) {
            if (this.f24589l.q() == 4 || this.f24589l.q() == 7) {
                if (this.ns == null) {
                    if (this.f24589l.q() == 4) {
                        this.ns = new di(sz.getContext(), 1, com.byazt.jz.s.u().j());
                    } else if (this.f24589l.q() == 7) {
                        this.ns = new di(sz.getContext(), 2, com.byazt.jz.s.u().j());
                    }
                }
                this.ns.hp(this.f24584b);
                this.ns.jx(this.di);
                this.ns.l(this.f24591o);
                this.ns.hp(this.f24585d);
                this.ns.jx(this.wv);
                this.ns.l(this.hq);
                this.ns.w(this.ud);
                this.ns.a(this.nu);
                this.ns.hp(new di.hp() { // from class: com.byazt.qfg.SplashClickBarBtn.3
                    @Override // com.byazt.ymw.di.hp
                    public void hp(int i2) {
                        if (SplashClickBarBtn.this.cx == null || !SplashClickBarBtn.this.isShown()) {
                            return;
                        }
                        if (SplashClickBarBtn.this.ns.hp() && SplashClickBarBtn.this.dy != null) {
                            com.byazt.zbc.a.f28347j = true;
                        }
                        if (i2 == 1) {
                            if (SplashClickBarBtn.this.f24589l.q() == 4) {
                                ((com.byazt.ey.hp) SplashClickBarBtn.this.cx.hp(com.byazt.ey.hp.class)).hp();
                                SplashClickBarBtn.this.cx.onClick(SplashClickBarBtn.this);
                                return;
                            }
                            return;
                        }
                        if (i2 == 2 && SplashClickBarBtn.this.f24589l.q() == 7) {
                            ((com.byazt.ey.hp) SplashClickBarBtn.this.cx.hp(com.byazt.ey.hp.class)).l();
                            SplashClickBarBtn.this.cx.onClick(SplashClickBarBtn.this);
                        }
                    }
                });
                di diVar = this.ns;
                mp mpVar = this.dy;
                diVar.hp(mpVar != null ? mpVar.nu() : 0);
            }
        }
    }

    private void s() {
        Point point = new Point(0, 0);
        Point point2 = new Point(getMeasuredWidth(), 0);
        Point point3 = new Point(getMeasuredWidth(), getMeasuredHeight());
        Point point4 = new Point(0, getMeasuredHeight());
        this.zy.moveTo(point.x, point.y);
        this.zy.lineTo(point2.x, point2.y);
        this.zy.lineTo(point3.x, point3.y);
        this.zy.lineTo(point4.x, point4.y);
        this.zy.close();
        this.f24588k = getBackground().getBounds();
        final int iJx = xh.jx(getContext(), 36.0f);
        final int iJx2 = xh.jx(getContext(), 45.0f);
        this.xs.setIntValues(point.x - iJx, point2.x + iJx);
        this.xs.setInterpolator(new PathInterpolator(0.32f, 0.94f, 0.6f, 1.0f));
        this.xs.setDuration(1600L);
        this.xs.setStartDelay(1300L);
        this.xs.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.qfg.SplashClickBarBtn.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SplashClickBarBtn.this.ec = new LinearGradient(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0.0f, r10 + iJx, iJx2, SplashClickBarBtn.this.sz, (float[]) null, Shader.TileMode.CLAMP);
                SplashClickBarBtn.this.postInvalidate();
            }
        });
        this.f24594u.playTogether(this.xs);
    }

    private void w() {
        View viewHp = hp(getContext());
        if (viewHp == null) {
            return;
        }
        addView(viewHp);
        SplashClickBarArrow splashClickBarArrow = new SplashClickBarArrow(getContext());
        this.f24592q = splashClickBarArrow;
        this.f24583a.addView(splashClickBarArrow);
        this.f24592q.setClipChildren(false);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f24592q.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.addRule(11);
        layoutParams.addRule(15);
        layoutParams.addRule(1, this.eb.getId());
        this.hp = hp(Color.parseColor("#57000000"));
        this.zy = new Path();
        Paint paint = new Paint();
        this.f24595v = paint;
        paint.isAntiAlias();
    }

    public void j() {
        if (this.f24589l.q() != 7) {
            return;
        }
        postDelayed(new Runnable() { // from class: com.byazt.qfg.SplashClickBarBtn.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (SplashClickBarBtn.this.f24596w != null) {
                        SplashClickBarBtn.this.f24596w.hp();
                    }
                } catch (Exception unused) {
                }
            }
        }, 500L);
    }

    public void jx() {
        RockView rockView;
        if (this.f24589l.q() == 4 && (rockView = this.gu) != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(rockView, "alpha", 0.0f, 1.0f);
            objectAnimatorOfFloat.setDuration(300L);
            objectAnimatorOfFloat.start();
            postDelayed(new Runnable() { // from class: com.byazt.qfg.SplashClickBarBtn.5
                @Override // java.lang.Runnable
                public void run() {
                    if (SplashClickBarBtn.this.gu != null) {
                        SplashClickBarBtn.this.gu.hp();
                    }
                }
            }, 500L);
        }
    }

    public void l() {
        if (this.f24589l.q() != 3) {
            return;
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.05f, 1.0f, 1.05f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        scaleAnimation.setInterpolator(new PathInterpolator(0.41f, 0.23f, 0.25f, 1.0f));
        scaleAnimation.setDuration(600L);
        scaleAnimation.setRepeatMode(2);
        scaleAnimation.setRepeatCount(-1);
        startAnimation(scaleAnimation);
    }

    private View hp(Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        relativeLayout.setClipChildren(false);
        layoutParams.addRule(14);
        relativeLayout.setId(2114387577);
        relativeLayout.setLayoutParams(layoutParams);
        this.f24583a = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        this.f24583a.setId(2114387576);
        this.f24583a.setClipChildren(false);
        layoutParams2.addRule(13);
        this.f24583a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f24583a);
        this.gu = new RockView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        this.gu.setId(2114387575);
        layoutParams3.addRule(14);
        this.gu.setLayoutParams(layoutParams3);
        xh.hp((View) this.gu, 8);
        this.f24583a.addView(this.gu);
        this.eb = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        this.eb.setId(2114387574);
        this.eb.setClipChildren(false);
        layoutParams4.addRule(13);
        this.eb.setGravity(17);
        this.eb.setLayoutParams(layoutParams4);
        this.f24583a.addView(this.eb);
        LinearLayout linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(2, 2114387573);
        layoutParams5.addRule(14);
        linearLayout.setGravity(17);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams5);
        this.eb.addView(linearLayout);
        LottieAnimationView lottieAnimationView = new LottieAnimationView(context);
        this.f24596w = lottieAnimationView;
        lottieAnimationView.setId(2114387572);
        this.f24596w.setAnimation("lottie_json/twist_multi_angle.json");
        this.f24596w.setImageAssetsFolder("images/");
        this.f24596w.hp(true);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 100.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 100.0f, resources.getDisplayMetrics()));
        layoutParams6.bottomMargin = xh.jx(context, 4.0f);
        layoutParams6.gravity = 17;
        this.f24596w.setLayoutParams(layoutParams6);
        linearLayout.addView(this.f24596w);
        xh.hp((View) this.f24596w, 8);
        SlideUpView slideUpView = new SlideUpView(context);
        this.f24586e = slideUpView;
        slideUpView.setId(2114387569);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 200.0f, resources.getDisplayMetrics()));
        layoutParams7.topMargin = xh.jx(context, -140.0f);
        this.f24586e.setLayoutParams(layoutParams7);
        linearLayout.addView(this.f24586e);
        xh.hp((View) this.f24586e, 8);
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.f24593s = linearLayout2;
        linearLayout2.setId(2114387573);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(12);
        this.f24593s.setGravity(17);
        this.f24593s.setOrientation(1);
        this.f24593s.setLayoutParams(layoutParams8);
        this.eb.addView(this.f24593s);
        TextView textView = new TextView(context);
        this.f24587j = textView;
        textView.setId(2114387568);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
        this.f24587j.setSingleLine();
        this.f24587j.setText("查看详情");
        this.f24587j.setTextColor(-1);
        this.f24587j.setTextSize(20.0f);
        this.f24587j.setTypeface(Typeface.defaultFromStyle(1));
        this.f24587j.setLayoutParams(layoutParams9);
        this.f24593s.addView(this.f24587j);
        xh.hp((View) this.f24587j, 8);
        TextView textView2 = new TextView(context);
        this.jx = textView2;
        textView2.setId(2114387567);
        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, -2);
        this.jx.setShadowLayer(2.0f, 0.0f, 0.5f, 1291845632);
        this.jx.setSingleLine();
        this.jx.setText("查看详情");
        this.jx.setTextColor(-1);
        this.jx.setTextSize(15.0f);
        this.jx.setTypeface(Typeface.defaultFromStyle(1));
        this.jx.setLayoutParams(layoutParams10);
        this.f24593s.addView(this.jx);
        xh.hp((View) this.jx, 8);
        return relativeLayout;
    }

    private GradientDrawable hp(int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i2);
        gradientDrawable.setSize(32, 12);
        gradientDrawable.setStroke(1, -2130706433);
        gradientDrawable.setCornerRadius(xh.jx(sz.getContext(), 50.0f));
        return gradientDrawable;
    }

    public void hp(wt wtVar) {
        if (wtVar == null) {
            return;
        }
        this.f24589l = wtVar;
        if (wtVar.q() == 4) {
            this.gu.hp(this.f24589l);
            return;
        }
        TextView textView = this.jx;
        if (textView != null) {
            textView.setVisibility(0);
            this.jx.setText(TextUtils.isEmpty(this.f24589l.l()) ? "点击跳转至详情页或第三方应用" : this.f24589l.l());
            if (this.f24589l.jl() != null) {
                this.jx.setTextSize(2, this.f24589l.jl().l());
            }
        }
        if (this.f24587j != null && this.f24589l.zy() != null) {
            this.f24587j.setTextSize(2, this.f24589l.zy().l());
        }
        this.hp.setColor(Color.parseColor("#57000000"));
        this.f24592q.hp(this.f24589l.q());
        int iQ = this.f24589l.q();
        if (iQ == 1 || iQ == 2) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.jl = animatorSet;
            animatorSet.playTogether(getAnimator(), this.f24592q.getAnimator());
        } else if (iQ == 3) {
            TextView textView2 = this.f24587j;
            if (textView2 != null) {
                textView2.setVisibility(0);
                this.f24587j.setText(this.f24589l.gu());
            }
            TextView textView3 = this.jx;
            if (textView3 != null) {
                textView3.setTypeface(Typeface.defaultFromStyle(0));
            }
            this.hp = hp(Color.parseColor(this.f24589l.e()));
        } else {
            if (iQ == 4) {
                return;
            }
            if (iQ == 5) {
                SlideUpView slideUpView = this.f24586e;
                if (slideUpView != null) {
                    slideUpView.setVisibility(0);
                }
                LinearLayout linearLayout = this.f24593s;
                if (linearLayout != null) {
                    ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
                    layoutParams.width = -1;
                    this.f24593s.setLayoutParams(layoutParams);
                }
                TextView textView4 = this.f24587j;
                if (textView4 != null) {
                    textView4.setVisibility(0);
                    this.f24587j.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
                    if (TextUtils.isEmpty(this.f24589l.gu())) {
                        this.f24587j.setText("向上滑动");
                    } else {
                        this.f24587j.setText(this.f24589l.gu());
                    }
                }
                TextView textView5 = this.jx;
                if (textView5 != null) {
                    textView5.setText(TextUtils.isEmpty(this.f24589l.l()) ? "滑动查看详情" : this.f24589l.l());
                    this.jx.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
                    return;
                }
                return;
            }
            if (iQ != 7) {
                this.hp.setStroke(0, -16777216);
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.jl = animatorSet2;
                animatorSet2.playTogether(getAnimator(), this.f24592q.getAnimator());
                try {
                    setBackgroundColor(Color.parseColor(this.f24589l.e()));
                } catch (Throwable unused) {
                    setBackgroundColor(Color.parseColor("#008DEA"));
                }
            } else {
                TextView textView6 = this.f24587j;
                if (textView6 != null) {
                    textView6.setVisibility(0);
                    this.f24587j.setText(this.f24589l.gu());
                    this.f24587j.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
                }
                TextView textView7 = this.jx;
                if (textView7 != null) {
                    textView7.setTypeface(Typeface.defaultFromStyle(0));
                    this.jx.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
                }
                LottieAnimationView lottieAnimationView = this.f24596w;
                if (lottieAnimationView != null) {
                    lottieAnimationView.setVisibility(0);
                    return;
                }
                return;
            }
        }
        setBackgroundDrawable(this.hp);
    }

    public void hp() {
        AnimatorSet animatorSet = this.jl;
        if (animatorSet != null) {
            animatorSet.start();
        }
        l();
        jx();
        j();
        e();
    }

    public void hp(com.byazt.go.hp hpVar) {
        this.cx = hpVar;
        if (this.f24589l.q() == 4 || this.f24589l.q() == 7 || this.f24589l.q() == 5 || hpVar == null) {
            return;
        }
        hpVar.hp(this);
        setOnClickListener(hpVar);
        setOnTouchListener(hpVar);
        setId(2114387633);
    }
}

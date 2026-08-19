package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* renamed from: com.sigmob.sdk.base.views.m, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1301m extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    int f37095a;

    /* renamed from: b, reason: collision with root package name */
    private final ImageView f37096b;

    /* renamed from: c, reason: collision with root package name */
    private final TextView f37097c;

    /* renamed from: d, reason: collision with root package name */
    private final TextView f37098d;

    /* renamed from: e, reason: collision with root package name */
    private final int f37099e;

    /* renamed from: f, reason: collision with root package name */
    private TextView f37100f;

    /* renamed from: g, reason: collision with root package name */
    private TextView f37101g;

    /* renamed from: h, reason: collision with root package name */
    private C1307t f37102h;

    /* renamed from: i, reason: collision with root package name */
    private C1301m f37103i;

    /* renamed from: j, reason: collision with root package name */
    private int f37104j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f37105k;

    /* renamed from: l, reason: collision with root package name */
    private int f37106l;

    /* renamed from: m, reason: collision with root package name */
    private int f37107m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f37108n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f37109o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f37110p;

    /* renamed from: q, reason: collision with root package name */
    private LinearLayout f37111q;

    /* renamed from: r, reason: collision with root package name */
    private BaseAdUnit f37112r;

    public C1301m(Context context, BaseAdUnit baseAdUnit, String str, String str2, float f2, String str3, int i2, int i3, String str4, int i4, int i5, int i6, int i7, int i8, float f3) {
        super(context);
        this.f37095a = Dips.asIntPixels(f3, context);
        this.f37107m = Dips.asIntPixels(10.0f, context);
        this.f37112r = baseAdUnit;
        this.f37104j = i2;
        this.f37099e = i3;
        TextView textView = new TextView(context);
        this.f37098d = textView;
        textView.setText(str);
        textView.setTextSize(1, 16.0f);
        textView.setTextColor(-16777216);
        textView.setSingleLine();
        textView.setTypeface(Typeface.defaultFromStyle(0));
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setGravity(16);
        textView.setId(ClientMetadata.generateViewId());
        textView.setPadding(this.f37107m / 6, 0, 0, 0);
        this.f37106l = i6;
        TextView textView2 = new TextView(context);
        this.f37097c = textView2;
        textView2.setId(ClientMetadata.generateViewId());
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(i5);
        textView2.setGravity(17);
        textView.setSingleLine();
        textView2.setEllipsize(truncateAt);
        textView2.setText(str2);
        int iAsIntPixels = Dips.asIntPixels(5.0f, context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i4);
        gradientDrawable.setCornerRadius(iAsIntPixels * 6);
        CircleImageView circleImageView = new CircleImageView(context);
        this.f37096b = circleImageView;
        circleImageView.setScaleType(ImageView.ScaleType.FIT_START);
        circleImageView.setId(ClientMetadata.generateViewId());
        circleImageView.f36664b = false;
        float f4 = iAsIntPixels * 2;
        circleImageView.f36663a = f4;
        textView2.setBackground(gradientDrawable);
        textView2.setId(ClientMetadata.generateViewId());
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(f4);
        gradientDrawable2.setColor(i7);
        gradientDrawable2.setAlpha(i8);
        setBackground(gradientDrawable2);
        this.f37103i = this;
        if (i3 == 1) {
            a(context, f2);
        } else {
            a(context, str3);
        }
        if (baseAdUnit.getMaterial() != null && baseAdUnit.getMaterial().ad_privacy != null) {
            a(context);
        }
        setupUILayout(context);
        circleImageView.setVisibility(4);
        a(str4);
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float a(float f2) {
        SigmobLog.e("input: " + f2);
        return (float) ((Math.pow(2.0d, (-10.0f) * f2) * Math.sin(((f2 - 0.13333334f) * 6.283185307179586d) / 0.4000000059604645d)) + 1.0d);
    }

    private void d() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scaleX", 0.3f, 0.5f, 1.0f), PropertyValuesHolder.ofFloat("scaleY", 0.3f, 0.5f, 1.0f));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(new Interpolator() { // from class: com.sigmob.sdk.base.views.Q
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f2) {
                return C1301m.a(f2);
            }
        });
        f();
        objectAnimatorOfPropertyValuesHolder.setDuration(2000L);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    @SuppressLint({"ObjectAnimatorBinding"})
    private void e() {
        Keyframe keyframeOfFloat = Keyframe.ofFloat(0.0f, 0.0f);
        Keyframe keyframeOfFloat2 = Keyframe.ofFloat(0.5f, 0.95f);
        Keyframe keyframeOfFloat3 = Keyframe.ofFloat(0.6f, 0.9f);
        Keyframe keyframeOfFloat4 = Keyframe.ofFloat(0.7f, 1.0f);
        Keyframe keyframeOfFloat5 = Keyframe.ofFloat(0.8f, 0.95f);
        Keyframe keyframeOfFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("scaleX", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6), PropertyValuesHolder.ofKeyframe("scaleY", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6));
        objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
        f();
        this.f37110p = true;
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.sigmob.sdk.base.views.m.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                C1301m.this.f37109o = false;
                C1301m.this.f37110p = false;
                C1301m.this.f37103i.clearAnimation();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                C1301m.this.f37109o = false;
                C1301m.this.f37110p = false;
                C1301m.this.f37103i.clearAnimation();
            }
        });
        objectAnimatorOfPropertyValuesHolder.start();
    }

    private void f() {
        this.f37108n = true;
        super.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        super.setVisibility(4);
    }

    private void h() {
        SigmobLog.d("startDownToUpAnimator");
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 1.0f, 2, 0.0f);
        translateAnimation.setInterpolator(new LinearInterpolator());
        translateAnimation.setDuration(500L);
        f();
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.sigmob.sdk.base.views.m.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                C1301m.this.f37109o = false;
                C1301m.this.f37103i.clearAnimation();
                SigmobLog.d("startDownToUpAnimator end");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.f37103i.startAnimation(translateAnimation);
    }

    private void i() {
        SigmobLog.d("startUpToDownAnimator");
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 0.0f, 2, 1.0f);
        translateAnimation.setInterpolator(new LinearInterpolator());
        translateAnimation.setDuration(500L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.sigmob.sdk.base.views.m.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                C1301m.this.f37109o = true;
                C1301m.this.f37103i.clearAnimation();
                C1301m.this.g();
                SigmobLog.d("startUpToDownAnimator end");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.f37103i.startAnimation(translateAnimation);
    }

    private void setupUILayout(Context context) {
        int iAsIntPixels = Dips.asIntPixels(60.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iAsIntPixels, iAsIntPixels);
        layoutParams.addRule(15);
        int i2 = this.f37107m;
        layoutParams.setMargins(i2, i2 / 4, 0, 0);
        this.f37096b.setId(ClientMetadata.generateViewId());
        addView(this.f37096b, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, (int) (iAsIntPixels / 1.8f));
        layoutParams2.setMargins(0, 0, this.f37107m, 0);
        layoutParams2.addRule(15);
        layoutParams2.addRule(11);
        TextView textView = this.f37097c;
        int i3 = this.f37107m;
        textView.setPadding(i3, 0, i3, 0);
        addView(this.f37097c, layoutParams2);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(this.f37107m / 2, 0, 0, 0);
        layoutParams3.addRule(15);
        layoutParams3.addRule(1, this.f37096b.getId());
        layoutParams3.addRule(0, this.f37097c.getId());
        addView(linearLayout, layoutParams3);
        linearLayout.addView(this.f37098d, new RelativeLayout.LayoutParams(-2, -2));
        if (this.f37100f != null) {
            RelativeLayout relativeLayout = new RelativeLayout(context);
            relativeLayout.addView(this.f37100f, new RelativeLayout.LayoutParams(-2, -2));
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(1, this.f37100f.getId());
            layoutParams4.addRule(6, this.f37100f.getId());
            layoutParams4.addRule(8, this.f37100f.getId());
            relativeLayout.addView(this.f37102h, layoutParams4);
            linearLayout.addView(relativeLayout, new RelativeLayout.LayoutParams(-2, -2));
        } else if (this.f37101g != null) {
            linearLayout.addView(this.f37101g, new RelativeLayout.LayoutParams(-2, -2));
        }
        if (this.f37111q != null) {
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(8, this.f37096b.getId());
            linearLayout.addView(this.f37111q, layoutParams5);
        }
    }

    public LinearLayout getFourElementsLayout() {
        return this.f37111q;
    }

    @Override // android.view.View
    public int getVisibility() {
        return super.getVisibility();
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        if (this.f37106l == 1) {
            this.f37097c.setOnTouchListener(onTouchListener);
        } else {
            super.setOnTouchListener(onTouchListener);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 == 8) {
            super.setVisibility(i2);
            this.f37105k = false;
            return;
        }
        if (i2 == 0) {
            this.f37105k = true;
            if (this.f37103i.getAnimation() == null && !this.f37110p && this.f37096b.getVisibility() == 0) {
                c();
                return;
            }
            return;
        }
        if (i2 != 4) {
            super.setVisibility(i2);
        } else {
            if (this.f37103i.getAnimation() != null) {
                return;
            }
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int i2 = this.f37104j;
        if (i2 == 1) {
            e();
            return;
        }
        if (i2 == 2) {
            h();
        } else if (i2 != 3) {
            h();
        } else {
            f();
        }
    }

    public void a(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        this.f37111q = linearLayout;
        linearLayout.setOrientation(0);
        this.f37111q.setId(ClientMetadata.generateViewId());
        int iAsIntPixels = Dips.asIntPixels(2.0f, context);
        String[] strArr = {"名称", "版本", "开发者", "权限", "隐私协议", "介绍"};
        for (int i2 = 0; i2 < 6; i2++) {
            String str = strArr[i2];
            TextView textView = new TextView(context);
            textView.setTextSize(1, 8.0f);
            textView.setText(str);
            textView.setTextColor(-7829368);
            textView.setAlpha(0.7f);
            textView.getPaint().setAntiAlias(true);
            textView.getPaint().setFlags(8);
            int i3 = iAsIntPixels / 2;
            textView.setPadding(i3, 0, i3, 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, iAsIntPixels, 0);
            this.f37111q.addView(textView, layoutParams);
        }
    }

    public boolean b() {
        return this.f37109o;
    }

    public void a(Context context, float f2) {
        TextView textView = new TextView(context);
        this.f37100f = textView;
        textView.setTextSize(1, 14.0f);
        this.f37100f.setId(ClientMetadata.generateViewId());
        this.f37100f.setGravity(17);
        this.f37100f.setTextColor(-7829368);
        if (f2 > 0.0f) {
            this.f37100f.setText(String.format("%.1f", Float.valueOf(f2)));
        }
        this.f37102h = new C1307t(context, f2);
    }

    public void a(Context context, String str) {
        TextView textView = new TextView(context);
        this.f37101g = textView;
        textView.setId(ClientMetadata.generateViewId());
        this.f37101g.setTextColor(-7829368);
        this.f37101g.setSingleLine();
        this.f37101g.setGravity(17);
        this.f37101g.setTextSize(1, 14.0f);
        this.f37101g.setEllipsize(TextUtils.TruncateAt.END);
        this.f37101g.setText(str);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C1258h.a().getBitmap(str, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.base.views.m.4
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                C1301m.this.f37096b.setImageBitmap(bitmap);
                C1301m.this.f37096b.setVisibility(0);
                if (C1301m.this.f37105k) {
                    C1301m.this.c();
                }
            }
        });
    }

    public boolean a() {
        return this.f37108n;
    }
}

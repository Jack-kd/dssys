package com.kwad.components.ad.fullscreen.c.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Vibrator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.kwad.components.ad.reward.e.g;
import com.kwad.components.ad.reward.e.o;
import com.kwad.components.core.t.x;
import com.kwad.sdk.R;
import com.kwad.sdk.core.response.helper.SlideConvertHelper;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import com.kwad.sdk.widget.h;

/* loaded from: classes4.dex */
public final class f extends com.kwad.components.ad.reward.presenter.b implements o, com.kwad.sdk.core.g.b, com.kwad.sdk.widget.d {
    private com.kwad.sdk.core.g.d hu;
    private Vibrator hw;
    private ViewGroup kN;
    private TextView kO;
    private TextView kP;
    private ImageView kQ;
    private FrameLayout kR;
    private ImageView kS;
    private FrameLayout kT;
    private TextView kU;

    @Nullable
    private Animator kV;
    private g mPlayEndPageListener = new com.kwad.components.ad.reward.e.a() { // from class: com.kwad.components.ad.fullscreen.c.a.f.1
        @Override // com.kwad.components.ad.reward.e.g
        public final void dd() {
            if (f.this.kN != null) {
                f.this.kN.setVisibility(8);
            }
            if (f.this.kT != null) {
                f.this.kT.setVisibility(8);
            }
            if (f.this.hu != null) {
                f.this.hu.cc(f.this.getContext());
            }
            if (f.this.kV != null) {
                f.this.kV.cancel();
                f.this.kV = null;
            }
        }
    };

    /* JADX WARN: Removed duplicated region for block: B:10:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void dy() throws android.content.res.Resources.NotFoundException {
        /*
            r8 = this;
            int r0 = com.kwad.sdk.R.id.ksad_root_container
            android.view.View r0 = r8.findViewById(r0)
            com.kwad.sdk.core.view.AdBaseFrameLayout r0 = (com.kwad.sdk.core.view.AdBaseFrameLayout) r0
            android.content.Context r1 = r8.getContext()
            int r2 = com.kwad.sdk.R.layout.ksad_shake_center
            r3 = 0
            android.view.View r1 = com.kwad.sdk.wrapper.m.a(r1, r2, r0, r3)
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            r8.kN = r1
            r1.setVisibility(r3)
            android.view.ViewGroup r1 = r8.kN
            android.content.res.Resources r1 = r1.getResources()
            com.kwad.components.ad.reward.g r2 = r8.uj     // Catch: java.lang.Throwable -> L38
            com.kwad.sdk.core.response.model.AdTemplate r2 = r2.mAdTemplate     // Catch: java.lang.Throwable -> L38
            com.kwad.sdk.core.response.model.AdInfo r2 = com.kwad.sdk.core.response.helper.e.eO(r2)     // Catch: java.lang.Throwable -> L38
            int r2 = com.kwad.sdk.core.response.helper.a.bl(r2)     // Catch: java.lang.Throwable -> L38
            r4 = 8
            if (r2 != r4) goto L3c
            com.kwad.components.ad.reward.g r2 = r8.uj     // Catch: java.lang.Throwable -> L38
            int r2 = r2.mScreenOrientation     // Catch: java.lang.Throwable -> L38
            if (r2 != 0) goto L3c
            r2 = 1
            goto L3d
        L38:
            r2 = move-exception
            com.kwad.sdk.core.d.c.printStackTrace(r2)
        L3c:
            r2 = r3
        L3d:
            if (r2 == 0) goto L46
            int r4 = com.kwad.sdk.R.dimen.ksad_fullscreen_shake_tips_icon_live_shop_marginBottom
            int r4 = r1.getDimensionPixelSize(r4)
            goto L4c
        L46:
            int r4 = com.kwad.sdk.R.dimen.ksad_fullscreen_shake_tips_icon_marginBottom
            int r4 = r1.getDimensionPixelSize(r4)
        L4c:
            int r5 = com.kwad.sdk.R.dimen.ksad_fullscreen_shake_tips_icon_marginLeft
            int r5 = r1.getDimensionPixelSize(r5)
            if (r2 == 0) goto L5b
            int r2 = com.kwad.sdk.R.dimen.ksad_fullscreen_shake_tips_title_live_shop_marginBottom
            int r2 = r1.getDimensionPixelSize(r2)
            goto L61
        L5b:
            int r2 = com.kwad.sdk.R.dimen.ksad_fullscreen_shake_tips_title_marginBottom
            int r2 = r1.getDimensionPixelSize(r2)
        L61:
            int r6 = com.kwad.sdk.R.dimen.ksad_fullscreen_shake_tips_height
            int r1 = r1.getDimensionPixelSize(r6)
            android.content.Context r6 = r8.getContext()
            int r7 = com.kwad.sdk.R.layout.ksad_shake_tips_title
            android.view.View r3 = com.kwad.sdk.wrapper.m.a(r6, r7, r0, r3)
            android.widget.FrameLayout r3 = (android.widget.FrameLayout) r3
            r8.kT = r3
            int r6 = com.kwad.sdk.R.id.ksad_shake_tips_label
            android.view.View r3 = r3.findViewById(r6)
            android.widget.TextView r3 = (android.widget.TextView) r3
            r8.kU = r3
            android.widget.FrameLayout r3 = r8.kT
            r6 = 4
            r3.setVisibility(r6)
            android.widget.FrameLayout$LayoutParams r3 = new android.widget.FrameLayout$LayoutParams
            r6 = -2
            r3.<init>(r6, r1)
            r3.leftMargin = r5
            r3.bottomMargin = r2
            r1 = 83
            r3.gravity = r1
            android.widget.FrameLayout r1 = r8.kT
            r0.addView(r1, r3)
            android.widget.FrameLayout$LayoutParams r1 = new android.widget.FrameLayout$LayoutParams
            r1.<init>(r6, r6)
            r2 = 17
            r1.gravity = r2
            android.view.ViewGroup r2 = r8.kN
            r0.addView(r2, r1)
            com.kwad.components.ad.reward.g r1 = r8.uj
            com.kwad.sdk.core.response.model.AdTemplate r1 = r1.mAdTemplate
            r2 = 185(0xb9, float:2.59E-43)
            r3 = 0
            com.kwad.sdk.core.adlog.c.b(r1, r2, r3)
            android.view.ViewGroup r1 = r8.kN
            com.kwad.components.ad.fullscreen.c.a.f$6 r2 = new com.kwad.components.ad.fullscreen.c.a.f$6
            r2.<init>()
            r1.post(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.fullscreen.c.a.f.dy():void");
    }

    private void initView() {
        this.kO = (TextView) this.kN.findViewById(R.id.ksad_shake_center_title);
        this.kP = (TextView) this.kN.findViewById(R.id.ksad_shake_center_sub_title);
        this.kQ = (ImageView) this.kN.findViewById(R.id.ksad_shake_center_icon);
        this.kR = (FrameLayout) this.kN.findViewById(R.id.ksad_shake_center_circle_area);
        this.kS = (ImageView) this.kN.findViewById(R.id.ksad_shake_center_circle_area_bg);
        new h(getContext(), this.kN, this);
    }

    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() throws Resources.NotFoundException {
        super.ay();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(this.uj.mAdTemplate);
        if (com.kwad.components.ad.fullscreen.b.a.b(getContext(), this.uj.mAdTemplate)) {
            this.uj.a(this);
            this.uj.b(this.mPlayEndPageListener);
            dy();
            initView();
            a(adInfoEO);
            float fEw = com.kwad.sdk.core.response.helper.b.ew(adInfoEO);
            boolean zEx = com.kwad.sdk.core.response.helper.b.ex(adInfoEO);
            boolean zEy = com.kwad.sdk.core.response.helper.b.ey(adInfoEO);
            com.kwad.sdk.core.g.d dVar = this.hu;
            if (dVar == null) {
                com.kwad.sdk.core.g.d dVar2 = new com.kwad.sdk.core.g.d(zEx, fEw);
                this.hu = dVar2;
                dVar2.bG(zEy);
                this.hu.a(this);
            } else {
                dVar.m(fEw);
            }
            this.hu.cb(getContext());
            Context context = getContext();
            if (context != null) {
                this.hw = (Vibrator) context.getSystemService("vibrator");
            }
            com.kwad.components.ad.fullscreen.b.a.H(getContext());
        }
    }

    @Override // com.kwad.sdk.core.g.b
    public final void cj() {
    }

    @Override // com.kwad.components.ad.reward.e.o
    public final int dx() {
        return com.kwad.sdk.c.a.a.h(getContext(), R.dimen.ksad_fullscreen_shake_tips_title_marginBottom) + com.kwad.sdk.c.a.a.h(getContext(), R.dimen.ksad_fullscreen_shake_tips_height);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        ViewGroup viewGroup = this.kN;
        if (viewGroup != null) {
            if (viewGroup.getParent() != null) {
                ((ViewGroup) this.kN.getParent()).removeView(this.kN);
            }
            this.kN = null;
        }
        by.b(getContext(), this.hw);
        this.hw = null;
        Animator animator = this.kV;
        if (animator != null) {
            animator.cancel();
            this.kV = null;
        }
        this.uj.c(this.mPlayEndPageListener);
    }

    private void a(AdInfo adInfo) {
        String strEB = com.kwad.sdk.core.response.helper.b.eB(adInfo);
        TextView textView = this.kO;
        if (textView != null) {
            textView.setText(strEB);
        }
        TextView textView2 = this.kU;
        if (textView2 != null) {
            textView2.setText(strEB);
        }
        String strA = a(this.uj, adInfo);
        TextView textView3 = this.kP;
        if (textView3 != null) {
            textView3.setText("或点击" + strA);
        }
    }

    private static String a(com.kwad.components.ad.reward.g gVar, AdInfo adInfo) {
        String strED = com.kwad.sdk.core.response.helper.b.eD(adInfo);
        com.kwad.components.core.e.d.d dVar = gVar.mApkDownloadHelper;
        if (!com.kwad.sdk.core.response.helper.a.aL(adInfo) || dVar == null) {
            return strED;
        }
        int iQn = dVar.qn();
        AdMatrixInfo.DownloadTexts downloadTextsEF = com.kwad.sdk.core.response.helper.b.eF(adInfo);
        if (iQn == 8) {
            return downloadTextsEF.installAppLabel;
        }
        if (iQn != 12) {
            return downloadTextsEF.adActionDescription;
        }
        return downloadTextsEF.openAppLabel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public Animator a(float f2, float f3) throws Resources.NotFoundException {
        if (this.kN == null) {
            return null;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        Resources resources = this.kN.getResources();
        Animator animatorA = x.a((View) this.kQ, (Interpolator) null, 100L, 16.0f);
        animatorA.addListener(new AnimatorListenerAdapter() { // from class: com.kwad.components.ad.fullscreen.c.a.f.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                f.this.kQ.setPivotX(f.this.kQ.getWidth());
                f.this.kQ.setPivotY(f.this.kQ.getHeight());
            }
        });
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.kN, "translationX", f2 - (this.kN.getLeft() + (this.kN.getWidth() / 2.0f)));
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.kN, "translationY", f3 - (this.kN.getTop() + (this.kN.getHeight() / 2.0f)));
        float dimension = resources.getDimension(R.dimen.ksad_fullscreen_shake_tips_height);
        final float dimension2 = resources.getDimension(R.dimen.ksad_fullscreen_shake_tips_icon_size);
        float width = this.kR.getWidth();
        float width2 = this.kQ.getWidth();
        if (width == 0.0f || width2 == 0.0f) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(width, dimension);
        valueAnimatorOfFloat.addUpdateListener(new com.kwad.components.ad.widget.a(this.kS) { // from class: com.kwad.components.ad.fullscreen.c.a.f.8
            @Override // com.kwad.components.ad.widget.a
            public final void a(ViewGroup.LayoutParams layoutParams, Object obj) {
                float fFloatValue = ((Float) obj).floatValue();
                if (layoutParams != null) {
                    int i2 = (int) fFloatValue;
                    layoutParams.height = i2;
                    layoutParams.width = i2;
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(width2, dimension2);
        valueAnimatorOfFloat2.addUpdateListener(new com.kwad.components.ad.widget.a(this.kQ) { // from class: com.kwad.components.ad.fullscreen.c.a.f.9
            @Override // com.kwad.components.ad.widget.a
            public final void a(ViewGroup.LayoutParams layoutParams, Object obj) {
                float fFloatValue = ((Float) obj).floatValue();
                if (layoutParams != null) {
                    int i2 = (int) fFloatValue;
                    layoutParams.height = i2;
                    layoutParams.width = i2;
                }
            }
        });
        int color = resources.getColor(R.color.ksad_shake_icon_bg_start_color);
        final int color2 = resources.getColor(R.color.ksad_reward_main_color);
        final int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.ksad_fullscreen_shake_tips_icon_stroke_size);
        ValueAnimator valueAnimatorOfArgb = com.kwad.sdk.widget.a.ofArgb(color, color2);
        valueAnimatorOfArgb.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.ad.fullscreen.c.a.f.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    GradientDrawable gradientDrawable = (GradientDrawable) f.this.kS.getBackground();
                    gradientDrawable.mutate();
                    gradientDrawable.setColor(iIntValue);
                    if (iIntValue == color2) {
                        gradientDrawable.setStroke(dimensionPixelSize, -1);
                    }
                    f.this.kS.setBackground(gradientDrawable);
                } catch (Throwable th) {
                    com.kwad.sdk.core.d.c.printStackTrace(th);
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setDuration(200L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.ad.fullscreen.c.a.f.11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    f.this.kO.setAlpha(fFloatValue);
                    f.this.kP.setAlpha(fFloatValue);
                } catch (Throwable th) {
                    com.kwad.sdk.core.d.c.printStackTrace(th);
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(this.kO.getHeight(), 0.0f);
        valueAnimatorOfFloat4.addUpdateListener(new com.kwad.components.ad.widget.a(this.kO) { // from class: com.kwad.components.ad.fullscreen.c.a.f.12
            @Override // com.kwad.components.ad.widget.a
            public final void a(ViewGroup.LayoutParams layoutParams, Object obj) {
                layoutParams.height = (int) ((Float) obj).floatValue();
            }
        });
        ValueAnimator valueAnimatorOfFloat5 = ValueAnimator.ofFloat(this.kP.getHeight(), 0.0f);
        valueAnimatorOfFloat5.addUpdateListener(new com.kwad.components.ad.widget.a(this.kP) { // from class: com.kwad.components.ad.fullscreen.c.a.f.13
            @Override // com.kwad.components.ad.widget.a
            public final void a(ViewGroup.LayoutParams layoutParams, Object obj) {
                layoutParams.height = (int) ((Float) obj).floatValue();
            }
        });
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(500L);
        animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, valueAnimatorOfFloat, valueAnimatorOfFloat2, valueAnimatorOfArgb, valueAnimatorOfFloat4, valueAnimatorOfFloat5);
        AnimatorSet animatorSet3 = new AnimatorSet();
        final Animator animatorClone = animatorA.clone();
        animatorClone.addListener(new AnimatorListenerAdapter() { // from class: com.kwad.components.ad.fullscreen.c.a.f.2
            private boolean kX = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                this.kX = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (this.kX) {
                    return;
                }
                animatorClone.start();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                f.this.kQ.setPivotX(dimension2);
                f.this.kQ.setPivotY(dimension2);
            }
        });
        final ViewGroup.LayoutParams layoutParams = this.kT.getLayoutParams();
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, resources.getDimension(R.dimen.ksad_fullscreen_shake_tips_width)).setDuration(500L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.ad.fullscreen.c.a.f.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                try {
                    f.this.kT.setVisibility(0);
                    layoutParams.width = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    f.this.kT.setLayoutParams(layoutParams);
                } catch (Throwable th) {
                    com.kwad.sdk.core.d.c.printStackTrace(th);
                }
            }
        });
        animatorSet3.playTogether(animatorClone, duration, ObjectAnimator.ofFloat(this.kU, "alpha", 0.0f, 1.0f).setDuration(500L));
        animatorSet.playSequentially(animatorA, animatorA.clone(), animatorA.clone(), valueAnimatorOfFloat3, animatorSet2, animatorSet3);
        return animatorSet;
    }

    @Override // com.kwad.sdk.core.g.b
    public final void a(double d2) {
        com.kwad.sdk.core.c.b.LW();
        Activity currentActivity = com.kwad.sdk.core.c.b.getCurrentActivity();
        Activity activity = getActivity();
        boolean z2 = activity != null && activity.equals(currentActivity);
        if (!com.kwad.components.core.e.c.b.pG() && z2) {
            if (this.uj != null) {
                com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
                bVar.j(d2);
                this.uj.a(1, getContext(), 157, 1, 0L, false, bVar);
            }
            by.a(new bi() { // from class: com.kwad.components.ad.fullscreen.c.a.f.5
                @Override // com.kwad.sdk.utils.bi
                public final void doTask() {
                    com.kwad.sdk.core.d.c.d("ShakePresenter", "onShakeEvent openGate2");
                    f.this.hu.NJ();
                }
            }, null, 500L);
            by.a(getContext(), this.hw);
            return;
        }
        by.a(new Runnable() { // from class: com.kwad.components.ad.fullscreen.c.a.f.4
            @Override // java.lang.Runnable
            public final void run() {
                f.this.hu.NJ();
            }
        }, null, 500L);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view) {
        this.uj.a(1, getContext(), 158, 1);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view, float f2, float f3, float f4, float f5) {
        if (SlideConvertHelper.a(this.uj.mAdTemplate, f2, f3, f4, f5)) {
            this.uj.a(1, getContext(), 158, 1);
        }
    }
}

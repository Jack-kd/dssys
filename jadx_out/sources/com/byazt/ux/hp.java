package com.byazt.ux;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.qk.NativeExpressView;
import com.byazt.xci.mp;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 115, 28})
/* loaded from: classes3.dex */
public class hp extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.qk.hp f26443a;

    /* renamed from: e, reason: collision with root package name */
    public String f26444e;
    public com.byazt.qrd.jx eb;
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public mp f26445j;
    public NativeExpressView jx;

    /* renamed from: l, reason: collision with root package name */
    public NativeExpressView f26446l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f26447q;

    /* renamed from: s, reason: collision with root package name */
    public int f26448s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.jt.l f26449w;

    public hp(Context context, mp mpVar, com.byazt.jt.l lVar) {
        super(context);
        this.f26444e = com.byazt.ih.l.AD_TAG_BANNER;
        this.hp = context;
        this.f26445j = mpVar;
        this.f26449w = lVar;
        hp();
    }

    private ObjectAnimator l(NativeExpressView nativeExpressView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(nativeExpressView, "translationX", getWidth(), 0.0f);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.ux.hp.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                hp.this.f26447q = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        return objectAnimatorOfFloat;
    }

    public void a() {
        if (this.f26447q || this.jx == null || this.f26446l == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(hp(this.f26446l)).with(l(this.jx));
        animatorSet.setDuration(this.f26448s).start();
        xh.hp((View) this.jx, 0);
        this.f26447q = true;
        NativeExpressView nativeExpressView = this.f26446l;
        this.f26446l = this.jx;
        this.jx = nativeExpressView;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.jx.jl();
            this.jx = null;
        }
    }

    public NativeExpressView getCurView() {
        return this.f26446l;
    }

    public NativeExpressView getNextView() {
        return this.jx;
    }

    public void hp() {
        NativeExpressView nativeExpressView = new NativeExpressView(this.hp, this.f26445j, this.f26449w, this.f26444e);
        this.f26446l = nativeExpressView;
        addView(nativeExpressView, new ViewGroup.LayoutParams(-1, -1));
    }

    public void j() {
        NativeExpressView nativeExpressView = this.f26446l;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.f26446l.jl();
            this.f26446l = null;
        }
        NativeExpressView nativeExpressView2 = this.jx;
        if (nativeExpressView2 != null) {
            removeView(nativeExpressView2);
            this.jx.jl();
            this.jx = null;
        }
    }

    public void jx() {
        NativeExpressView nativeExpressView = this.jx;
        if (nativeExpressView != null) {
            nativeExpressView.u();
        }
    }

    public void setDuration(int i2) {
        this.f26448s = i2;
    }

    public void setExpressInteractionListener(com.byazt.qk.hp hpVar) {
        this.f26443a = hpVar;
        NativeExpressView nativeExpressView = this.f26446l;
        if (nativeExpressView != null) {
            nativeExpressView.setExpressInteractionListener(new com.byazt.qk.hp() { // from class: com.byazt.ux.hp.2
                @Override // com.byazt.qk.hp
                public void hp(View view, int i2) {
                    hp hpVar2 = hp.this;
                    com.byazt.qk.hp hpVar3 = hpVar2.f26443a;
                    if (hpVar3 != null) {
                        hpVar3.hp(hpVar2, i2);
                    }
                }

                @Override // com.byazt.qk.hp
                public void hp(View view, String str, int i2) {
                    hp hpVar2 = hp.this;
                    com.byazt.qk.hp hpVar3 = hpVar2.f26443a;
                    if (hpVar3 != null) {
                        hpVar3.hp(hpVar2, str, i2);
                    }
                }

                @Override // com.byazt.qk.hp
                public void hp(View view, float f2, float f3) {
                    if (!(view instanceof NativeExpressView) || !((NativeExpressView) view).n()) {
                        hp.this.hp(f2, f3);
                    }
                    hp hpVar2 = hp.this;
                    com.byazt.qk.hp hpVar3 = hpVar2.f26443a;
                    if (hpVar3 != null) {
                        hpVar3.hp(hpVar2, f2, f3);
                    }
                }
            });
        }
    }

    public void setVideoAdListener(com.byazt.qrd.jx jxVar) {
        this.eb = jxVar;
    }

    public void w() {
        NativeExpressView nativeExpressView = this.f26446l;
        if (nativeExpressView != null) {
            nativeExpressView.u();
        }
    }

    public void hp(mp mpVar, com.byazt.jt.l lVar) {
        NativeExpressView nativeExpressView = new NativeExpressView(this.hp, mpVar, lVar, this.f26444e);
        this.jx = nativeExpressView;
        nativeExpressView.setExpressInteractionListener(new com.byazt.qk.hp() { // from class: com.byazt.ux.hp.1
            @Override // com.byazt.qk.hp
            public void hp(View view, int i2) {
                hp hpVar = hp.this;
                com.byazt.qk.hp hpVar2 = hpVar.f26443a;
                if (hpVar2 != null) {
                    hpVar2.hp(hpVar, i2);
                }
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, float f2, float f3) {
                hp.this.hp(f2, f3);
                hp.this.a();
            }
        });
        xh.hp((View) this.jx, 8);
        addView(this.jx, new ViewGroup.LayoutParams(-1, -1));
    }

    public boolean l() {
        return this.jx != null;
    }

    public void hp(float f2, float f3) {
        int iJx = xh.jx(this.hp, f2);
        int iJx2 = xh.jx(this.hp, f3);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(iJx, iJx2);
        }
        layoutParams.width = iJx;
        layoutParams.height = iJx2;
        setLayoutParams(layoutParams);
    }

    private ObjectAnimator hp(NativeExpressView nativeExpressView) {
        return ObjectAnimator.ofFloat(nativeExpressView, "translationX", 0.0f, -getWidth());
    }
}

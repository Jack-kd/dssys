package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes4.dex */
public class ac extends v {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f36740a;

    /* renamed from: b, reason: collision with root package name */
    private ObjectAnimator f36741b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f36742c;

    /* renamed from: d, reason: collision with root package name */
    private C1294f f36743d;

    /* renamed from: com.sigmob.sdk.base.views.ac$2, reason: invalid class name */
    public class AnonymousClass2 implements Animator.AnimatorListener {
        public AnonymousClass2() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (ac.this.f36742c) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.sigmob.sdk.base.views.C
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f36662b.a();
                    }
                }, 300L);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            ac.this.f36741b.start();
        }
    }

    public ac(Context context) throws Resources.NotFoundException {
        super(context);
        c();
    }

    private void d() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.ac.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int height = ac.this.getHeight();
                int width = ac.this.getWidth();
                if (height == 0 || width == 0) {
                    return;
                }
                ac.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ViewGroup.LayoutParams layoutParams = ac.this.f36740a.getLayoutParams();
                int i2 = height / 2;
                layoutParams.width = i2;
                layoutParams.height = i2;
                ac.this.f36740a.setLayoutParams(layoutParams);
                float f2 = height / 2.0f;
                ac.this.f36740a.setPivotX(f2);
                ac.this.f36740a.setPivotY(f2 * 0.8f);
            }
        });
    }

    private void e() {
        if (this.f36741b != null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f36740a, C1244a.f35650B, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f);
        this.f36741b = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.f36741b.addListener(new AnonymousClass2());
        this.f36741b.setDuration(1200L);
    }

    @Override // com.sigmob.sdk.base.views.v
    public void b() {
        ObjectAnimator objectAnimator = this.f36741b;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.f36742c = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        d();
        e();
        if (this.f36742c) {
            this.f36741b.cancel();
            this.f36741b.start();
        }
    }

    public ac(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        c();
    }

    private void c() throws Resources.NotFoundException {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        C1294f c1294f = new C1294f(getContext());
        this.f36743d = c1294f;
        addView(c1294f, layoutParams);
        int iDipsToIntPixels = Dips.dipsToIntPixels(45.0f, getContext());
        this.f36740a = new ImageView(getContext());
        this.f36740a.setImageDrawable(getResources().getDrawable(ResourceUtil.getDrawableId(getContext(), "sig_image_shake_new")));
        this.f36740a.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams2.addRule(13);
        addView(this.f36740a, layoutParams2);
        d();
    }

    @Override // com.sigmob.sdk.base.views.v
    public void a() {
        ObjectAnimator objectAnimator = this.f36741b;
        if (objectAnimator != null && !this.f36742c) {
            objectAnimator.start();
        }
        this.f36742c = true;
    }

    public ac(Context context, AttributeSet attributeSet, int i2) throws Resources.NotFoundException {
        super(context, attributeSet, i2);
        c();
    }
}

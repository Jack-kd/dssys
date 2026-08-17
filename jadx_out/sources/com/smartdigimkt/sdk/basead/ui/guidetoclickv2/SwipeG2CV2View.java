package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.c1;
import com.smartdigimkt.h2.d1;

/* loaded from: classes5.dex */
public class SwipeG2CV2View extends BaseG2CV2View {
    public static final int SWIPE_TYPE_ALL = 3;
    public static final int SWIPE_TYPE_HORIZONTAL = 1;
    public static final int SWIPE_TYPE_VERTICAL = 2;

    /* renamed from: h, reason: collision with root package name */
    public LinearLayout f43933h;

    /* renamed from: i, reason: collision with root package name */
    public FrameLayout f43934i;

    /* renamed from: j, reason: collision with root package name */
    public FrameLayout f43935j;

    /* renamed from: k, reason: collision with root package name */
    public FrameLayout f43936k;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f43937l;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f43938m;

    /* renamed from: n, reason: collision with root package name */
    public ImageView f43939n;

    /* renamed from: o, reason: collision with root package name */
    public ImageView f43940o;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f43941p;

    /* renamed from: q, reason: collision with root package name */
    public ImageView f43942q;

    /* renamed from: r, reason: collision with root package name */
    public ImageView f43943r;

    /* renamed from: s, reason: collision with root package name */
    public ImageView f43944s;

    /* renamed from: t, reason: collision with root package name */
    public int f43945t;

    /* renamed from: u, reason: collision with root package name */
    public AnimatorSet f43946u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f43947v;

    public SwipeG2CV2View(Context context) {
        super(context);
        this.f43945t = 3;
    }

    public static void a(SwipeG2CV2View swipeG2CV2View) {
        swipeG2CV2View.getClass();
        try {
            AnimatorSet animatorSet = swipeG2CV2View.f43946u;
            if (animatorSet != null) {
                animatorSet.start();
            }
        } catch (Throwable unused) {
        }
    }

    public final void c() {
        LinearLayout linearLayout = this.f43933h;
        if (linearLayout == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = linearLayout.getViewTreeObserver();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            this.f43933h.post(new Runnable() { // from class: c1.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1205b.b();
                }
            });
        } else {
            viewTreeObserver.addOnGlobalLayoutListener(new c1(this));
        }
    }

    public final void d() {
        try {
            FrameLayout frameLayout = this.f43934i;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
            FrameLayout frameLayout2 = this.f43935j;
            if (frameLayout2 != null) {
                frameLayout2.setVisibility(8);
            }
            FrameLayout frameLayout3 = this.f43936k;
            if (frameLayout3 != null) {
                frameLayout3.setVisibility(8);
            }
            int i2 = this.f43945t;
            if (i2 == 1) {
                FrameLayout frameLayout4 = this.f43934i;
                if (frameLayout4 != null) {
                    frameLayout4.setVisibility(0);
                }
                this.f43940o = this.f43937l;
                return;
            }
            if (i2 != 2) {
                FrameLayout frameLayout5 = this.f43936k;
                if (frameLayout5 != null) {
                    frameLayout5.setVisibility(0);
                }
                this.f43940o = this.f43939n;
                return;
            }
            FrameLayout frameLayout6 = this.f43935j;
            if (frameLayout6 != null) {
                frameLayout6.setVisibility(0);
            }
            this.f43940o = this.f43938m;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final void b() {
        if (this.f43947v) {
            return;
        }
        try {
            if (this.f43940o == null) {
                return;
            }
            try {
                AnimatorSet animatorSet = this.f43946u;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.f43946u = null;
                }
            } catch (Throwable unused) {
            }
            this.f43940o.setTranslationX(0.0f);
            this.f43940o.setTranslationY(0.0f);
            int i2 = this.f43945t;
            float fMax = 10.0f;
            if (i2 == 1) {
                ImageView imageView = this.f43941p;
                if (imageView == null) {
                    return;
                }
                int width = imageView.getWidth();
                int width2 = this.f43940o.getWidth();
                if (width > 0) {
                    fMax = Math.max(10.0f, (width - Math.max(0, width2)) / 2.0f);
                }
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f43940o, "translationX", 0.0f, -fMax, 0.0f, fMax, 0.0f);
                objectAnimatorOfFloat.setDuration(6000L);
                objectAnimatorOfFloat.setRepeatCount(-1);
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.f43946u = animatorSet2;
                animatorSet2.play(objectAnimatorOfFloat);
                this.f43946u.start();
                this.f43947v = true;
                return;
            }
            if (i2 == 2) {
                ImageView imageView2 = this.f43942q;
                if (imageView2 == null) {
                    return;
                }
                int height = imageView2.getHeight();
                int height2 = this.f43940o.getHeight();
                if (height > 0) {
                    fMax = Math.max(10.0f, (height - Math.max(0, height2)) / 2.0f);
                }
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f43940o, "translationY", 0.0f, -fMax, 0.0f);
                objectAnimatorOfFloat2.setDuration(4200L);
                objectAnimatorOfFloat2.setRepeatCount(-1);
                AnimatorSet animatorSet3 = new AnimatorSet();
                this.f43946u = animatorSet3;
                animatorSet3.play(objectAnimatorOfFloat2);
                this.f43946u.start();
                this.f43947v = true;
                return;
            }
            ImageView imageView3 = this.f43943r;
            if (imageView3 != null && this.f43944s != null) {
                float fMax2 = imageView3.getWidth() <= 0 ? 10.0f : Math.max(10.0f, (r1 - Math.max(0, this.f43940o.getWidth())) / 2.0f);
                int height3 = this.f43944s.getHeight();
                int height4 = this.f43940o.getHeight();
                if (height3 > 0) {
                    fMax = Math.max(10.0f, (height3 - Math.max(0, height4)) / 2.0f);
                }
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f43940o, "translationX", 0.0f, -fMax2, 0.0f, fMax2, 0.0f);
                ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f43940o, "translationY", 0.0f, -fMax, 0.0f, fMax, 0.0f);
                objectAnimatorOfFloat3.setDuration(6000L);
                objectAnimatorOfFloat4.setDuration(6000L);
                AnimatorSet animatorSet4 = new AnimatorSet();
                this.f43946u = animatorSet4;
                animatorSet4.playSequentially(objectAnimatorOfFloat3, objectAnimatorOfFloat4);
                this.f43946u.addListener(new d1(this));
                this.f43946u.start();
                this.f43947v = true;
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void initView(int i2, int i3) {
        try {
            if (getContext() == null) {
                return;
            }
            setClickable(false);
            setFocusable(false);
            setBackgroundColor(0);
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(k.a(getContext(), "swipe_g2c_v2_guide", "layout"), (ViewGroup) this, false);
            this.f43933h = linearLayout;
            linearLayout.setClipChildren(false);
            this.f43933h.setBackgroundColor(0);
            int iA = k.a(getContext(), "swipe_stack_horizontal", "id");
            int iA2 = k.a(getContext(), "swipe_stack_vertical", "id");
            int iA3 = k.a(getContext(), "swipe_stack_cross", "id");
            int iA4 = k.a(getContext(), "swipe_finger_horizontal", "id");
            int iA5 = k.a(getContext(), "swipe_finger_vertical", "id");
            int iA6 = k.a(getContext(), "swipe_finger_cross", "id");
            int iA7 = k.a(getContext(), "swipe_arrow_horizontal_full", "id");
            int iA8 = k.a(getContext(), "swipe_arrow_vertical_full", "id");
            int iA9 = k.a(getContext(), "swipe_cross_horizontal_full", "id");
            int iA10 = k.a(getContext(), "swipe_cross_vertical_full", "id");
            int iA11 = k.a(getContext(), "swipe_hint_text", "id");
            String string = getContext().getString(k.a(getContext(), "g2c_swipe_hint_text", "string"));
            this.f43934i = (FrameLayout) this.f43933h.findViewById(iA);
            this.f43935j = (FrameLayout) this.f43933h.findViewById(iA2);
            this.f43936k = (FrameLayout) this.f43933h.findViewById(iA3);
            this.f43937l = (ImageView) this.f43933h.findViewById(iA4);
            this.f43938m = (ImageView) this.f43933h.findViewById(iA5);
            this.f43939n = (ImageView) this.f43933h.findViewById(iA6);
            TextView textView = (TextView) this.f43933h.findViewById(iA11);
            textView.setTextSize(2, 12.0f);
            textView.setText(string);
            this.f43941p = (ImageView) this.f43933h.findViewById(iA7);
            this.f43942q = (ImageView) this.f43933h.findViewById(iA8);
            this.f43943r = (ImageView) this.f43933h.findViewById(iA9);
            this.f43944s = (ImageView) this.f43933h.findViewById(iA10);
            d();
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12);
            boolean z2 = i2 == 2;
            boolean zF = k.f(getContext());
            if (!z2 && !zF) {
                layoutParams.bottomMargin = k.a(getContext(), 195.0f);
            }
            addView(this.f43933h, layoutParams);
            c();
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void pauseAnim() {
        try {
            AnimatorSet animatorSet = this.f43946u;
            if (animatorSet != null) {
                animatorSet.pause();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        try {
            AnimatorSet animatorSet = this.f43946u;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.f43946u = null;
            }
        } catch (Throwable unused) {
        }
        try {
            LinearLayout linearLayout = this.f43933h;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            this.f43947v = false;
        } catch (Throwable unused2) {
        }
        super.release();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void resumeAnim() {
        try {
            AnimatorSet animatorSet = this.f43946u;
            if (animatorSet != null) {
                animatorSet.resume();
            }
        } catch (Throwable unused) {
        }
    }

    public void setSwipeType(int i2) {
        if (i2 != 1 && i2 != 2 && i2 != 3) {
            i2 = 3;
        }
        this.f43945t = i2;
    }

    public SwipeG2CV2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f43945t = 3;
    }

    public SwipeG2CV2View(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43945t = 3;
    }
}

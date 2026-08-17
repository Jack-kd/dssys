package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.k2.e;

/* loaded from: classes5.dex */
public class FingerSlideUpG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public int f43852h;

    /* renamed from: i, reason: collision with root package name */
    public int f43853i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f43854j;

    /* renamed from: k, reason: collision with root package name */
    public ImageView f43855k;

    /* renamed from: l, reason: collision with root package name */
    public AnimatorSet f43856l;

    /* renamed from: m, reason: collision with root package name */
    public ObjectAnimator f43857m;

    /* renamed from: n, reason: collision with root package name */
    public ObjectAnimator f43858n;

    /* renamed from: o, reason: collision with root package name */
    public float f43859o;

    /* renamed from: p, reason: collision with root package name */
    public float f43860p;

    /* renamed from: q, reason: collision with root package name */
    public int f43861q;

    /* renamed from: r, reason: collision with root package name */
    public float f43862r;

    public FingerSlideUpG2CV2View(Context context) {
        super(context);
    }

    public final boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            if (motionEvent.getY() > this.f43862r) {
                return false;
            }
            this.f43859o = motionEvent.getY();
            return true;
        }
        if (action == 1) {
            if (this.f43860p <= this.f43852h) {
                return false;
            }
            e eVar = this.f43840e;
            if (eVar != null) {
                eVar.a(11, 48);
            }
            return true;
        }
        if (action != 2) {
            return false;
        }
        this.f43860p = Math.abs(motionEvent.getY() - this.f43859o) + this.f43860p;
        this.f43859o = motionEvent.getY();
        return false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        this.f43852h = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        if (i2 == 2) {
            LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_finger_slide_up_s", "layout"), this);
            this.f43853i = k.a(getContext(), 44.0f);
            int i4 = this.f43861q;
            if (i4 > 0) {
                setPadding(0, 0, 0, i4);
            }
        } else {
            LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_finger_slide_up", "layout"), this);
            this.f43853i = k.a(getContext(), 178.0f);
            int iA = k.a(getContext(), 192.0f);
            this.f43861q = iA;
            setPadding(0, 0, 0, iA);
        }
        this.f43855k = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_finger", "id"));
        this.f43854j = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_point", "id"));
        startAnim();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (a(motionEvent)) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() > 0) {
            this.f43862r = r1 - this.f43861q;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void pauseAnim() {
        AnimatorSet animatorSet = this.f43856l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        ObjectAnimator objectAnimator = this.f43857m;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.f43857m.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f43858n;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllListeners();
            this.f43858n.cancel();
        }
        AnimatorSet animatorSet = this.f43856l;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.f43856l.cancel();
            this.f43856l = null;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void resumeAnim() {
        AnimatorSet animatorSet = this.f43856l;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }

    public void startAnim() {
        if (this.f43856l == null) {
            ImageView imageView = this.f43855k;
            float f2 = -this.f43853i;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "translationY", 0.0f, f2, f2);
            this.f43857m = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.f43857m.setRepeatCount(-1);
            ImageView imageView2 = this.f43854j;
            float f3 = -this.f43853i;
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView2, "translationY", 0.0f, f3, f3);
            this.f43858n = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(1800L);
            this.f43858n.setRepeatCount(-1);
            AnimatorSet animatorSet = new AnimatorSet();
            this.f43856l = animatorSet;
            animatorSet.playTogether(this.f43857m, this.f43858n);
            this.f43856l.start();
        }
    }

    public void updateIsEmptyHalfInterLayout() {
        this.f43861q = k.a(getContext(), 80.0f);
    }

    public FingerSlideUpG2CV2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public FingerSlideUpG2CV2View(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

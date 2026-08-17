package com.smartdigimkt.china.based.twist;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sigmob.sdk.base.common.C1244a;
import com.smartdigimkt.c.b;
import com.smartdigimkt.c.c;
import com.smartdigimkt.c.d;
import com.smartdigimkt.c.e;
import com.smartdigimkt.c.i;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View;

/* loaded from: classes5.dex */
public class TwistG2CV2View extends BaseG2CV2View {

    /* renamed from: s, reason: collision with root package name */
    public static final /* synthetic */ int f39826s = 0;

    /* renamed from: h, reason: collision with root package name */
    public RelativeLayout f39827h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f39828i;

    /* renamed from: j, reason: collision with root package name */
    public AnimatorSet f39829j;

    /* renamed from: k, reason: collision with root package name */
    public SensorManager f39830k;

    /* renamed from: l, reason: collision with root package name */
    public Sensor f39831l;

    /* renamed from: m, reason: collision with root package name */
    public i f39832m;

    /* renamed from: n, reason: collision with root package name */
    public float f39833n;

    /* renamed from: o, reason: collision with root package name */
    public float f39834o;

    /* renamed from: p, reason: collision with root package name */
    public float f39835p;

    /* renamed from: q, reason: collision with root package name */
    public e f39836q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f39837r;

    public TwistG2CV2View(Context context) {
        super(context);
        this.f39833n = 30.0f;
        this.f39834o = 30.0f;
        this.f39835p = 30.0f;
    }

    public final void a(int i2) {
        try {
            if (getContext() == null) {
                return;
            }
            RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(getContext()).inflate(k.a(getContext(), "twist_g2c_v2_guide", "layout"), (ViewGroup) this, false);
            this.f39827h = relativeLayout;
            if (relativeLayout == null) {
                return;
            }
            relativeLayout.setClipChildren(false);
            this.f39827h.setBackgroundColor(0);
            this.f39828i = (ImageView) this.f39827h.findViewById(k.a(getContext(), "twist_phone_icon", "id"));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            if (i2 == 2) {
                layoutParams.addRule(13);
            } else {
                layoutParams.addRule(12);
                if (!k.f(getContext())) {
                    layoutParams.bottomMargin = k.a(getContext(), 195.0f);
                }
            }
            addView(this.f39827h, layoutParams);
        } catch (Throwable unused) {
        }
    }

    public final void b() {
        try {
            if (this.f39828i == null) {
                return;
            }
            AnimatorSet animatorSet = this.f39829j;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.f39829j.removeAllListeners();
                this.f39829j = null;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f39828i, C1244a.f35650B, 0.0f, 30.0f);
            objectAnimatorOfFloat.setDuration(750L);
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 1);
            valueAnimatorOfInt.setDuration(100L);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f39828i, C1244a.f35650B, 30.0f, -30.0f);
            objectAnimatorOfFloat2.setDuration(750L);
            ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(0, 1);
            valueAnimatorOfInt2.setDuration(100L);
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f39828i, C1244a.f35650B, -30.0f, 0.0f);
            objectAnimatorOfFloat3.setDuration(750L);
            ValueAnimator valueAnimatorOfInt3 = ValueAnimator.ofInt(0, 1);
            valueAnimatorOfInt3.setDuration(100L);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f39828i, "rotationY", 0.0f, 60.0f);
            objectAnimatorOfFloat4.setDuration(1500L);
            ValueAnimator valueAnimatorOfInt4 = ValueAnimator.ofInt(0, 1);
            valueAnimatorOfInt4.setDuration(100L);
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f39828i, "rotationY", 60.0f, -60.0f);
            objectAnimatorOfFloat5.setDuration(1500L);
            ValueAnimator valueAnimatorOfInt5 = ValueAnimator.ofInt(0, 1);
            valueAnimatorOfInt5.setDuration(100L);
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f39828i, "rotationY", -60.0f, -30.0f);
            objectAnimatorOfFloat6.setDuration(1500L);
            ValueAnimator valueAnimatorOfInt6 = ValueAnimator.ofInt(0, 1);
            valueAnimatorOfInt6.setDuration(100L);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.f39829j = animatorSet2;
            animatorSet2.playSequentially(objectAnimatorOfFloat, valueAnimatorOfInt, objectAnimatorOfFloat2, valueAnimatorOfInt2, objectAnimatorOfFloat3, valueAnimatorOfInt3, objectAnimatorOfFloat4, valueAnimatorOfInt4, objectAnimatorOfFloat5, valueAnimatorOfInt5, objectAnimatorOfFloat6, valueAnimatorOfInt6);
            this.f39829j.addListener(new c(this));
            this.f39829j.start();
        } catch (Throwable unused) {
        }
    }

    public final void c() {
        if (this.f39832m != null) {
            return;
        }
        if (this.f39830k == null) {
            this.f39830k = (SensorManager) getContext().getSystemService("sensor");
        }
        SensorManager sensorManager = this.f39830k;
        if (sensorManager == null) {
            return;
        }
        if (this.f39831l == null) {
            this.f39831l = sensorManager.getDefaultSensor(4);
        }
        Sensor sensor = this.f39831l;
        if (sensor == null) {
            return;
        }
        i iVar = new i(this.f39833n, this.f39834o, this.f39835p, new d(this));
        this.f39832m = iVar;
        this.f39830k.registerListener(iVar, sensor, 100000);
    }

    public final void d() {
        try {
            ImageView imageView = this.f39828i;
            if (imageView == null) {
                return;
            }
            int width = imageView.getWidth();
            int height = this.f39828i.getHeight();
            if (width <= 0) {
                post(new Runnable() { // from class: X0.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f680b.d();
                    }
                });
                return;
            }
            this.f39828i.setPivotX(width / 2.0f);
            this.f39828i.setPivotY(height / 2.0f);
            this.f39828i.setRotation(0.0f);
            this.f39828i.setRotationX(0.0f);
            b();
        } catch (Throwable unused) {
        }
    }

    public i getTwistSensorEventListener() {
        return this.f39832m;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void initView(int i2, int i3) {
        try {
            if (getContext() == null) {
                return;
            }
            a(i2);
            post(new b(this));
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        i iVar;
        super.onDetachedFromWindow();
        SensorManager sensorManager = this.f39830k;
        if (sensorManager != null && (iVar = this.f39832m) != null) {
            sensorManager.unregisterListener(iVar);
            this.f39832m = null;
        }
        try {
            AnimatorSet animatorSet = this.f39829j;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
                this.f39829j.cancel();
                this.f39829j = null;
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        i iVar;
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            if (this.f39837r) {
                c();
            }
            resumeAnim();
        } else {
            SensorManager sensorManager = this.f39830k;
            if (sensorManager != null && (iVar = this.f39832m) != null) {
                sensorManager.unregisterListener(iVar);
                this.f39832m = null;
            }
            pauseAnim();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void pauseAnim() {
        try {
            AnimatorSet animatorSet = this.f39829j;
            if (animatorSet == null || !animatorSet.isRunning()) {
                return;
            }
            this.f39829j.pause();
        } catch (Throwable unused) {
        }
    }

    public void registerGyroscopeAfterShowNotified() {
        this.f39837r = true;
        c();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        i iVar;
        try {
            this.f39837r = false;
            SensorManager sensorManager = this.f39830k;
            if (sensorManager != null && (iVar = this.f39832m) != null) {
                sensorManager.unregisterListener(iVar);
                this.f39832m = null;
            }
            try {
                AnimatorSet animatorSet = this.f39829j;
                if (animatorSet != null) {
                    animatorSet.removeAllListeners();
                    this.f39829j.cancel();
                    this.f39829j = null;
                }
            } catch (Throwable unused) {
            }
            this.f39830k = null;
            this.f39831l = null;
            this.f39836q = null;
            super.release();
        } catch (Throwable unused2) {
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void resumeAnim() {
        try {
            AnimatorSet animatorSet = this.f39829j;
            if (animatorSet != null) {
                animatorSet.resume();
            }
        } catch (Throwable unused) {
        }
    }

    public void setTwistConfig(float f2, float f3, float f4, e eVar) {
        this.f39833n = f2;
        this.f39834o = f3;
        this.f39835p = f4;
        this.f39836q = eVar;
    }

    public TwistG2CV2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f39833n = 30.0f;
        this.f39834o = 30.0f;
        this.f39835p = 30.0f;
    }

    public TwistG2CV2View(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f39833n = 30.0f;
        this.f39834o = 30.0f;
        this.f39835p = 30.0f;
    }
}

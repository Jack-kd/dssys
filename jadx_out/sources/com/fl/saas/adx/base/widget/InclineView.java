package com.fl.saas.adx.base.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.fl.saas.C1213r0;
import com.fl.saas.R;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class InclineView extends FrameLayout implements SensorEventListener {
    private static final int INCLINE_DEFAULT_THRESHOLD = 400;
    private Sensor accelerometerSensor;
    private int inclineThreshold;
    private boolean isCallback;
    private boolean isVisibility;
    private long lastUpdate;
    private float last_x;
    private float last_y;
    private float last_z;
    private Animator mAnimator;
    private ImageView mImageView;
    private InclineListener mInclineListener;
    private SensorManager sensorManager;

    public interface InclineListener {
        void onIncline(int i2, int i3, int i4);
    }

    public InclineView(@NonNull Context context) {
        super(context);
        this.inclineThreshold = 400;
        this.isVisibility = false;
        this.isCallback = false;
        this.lastUpdate = 0L;
    }

    private void cancelAnimator() {
        Animator animator = this.mAnimator;
        if (animator != null) {
            animator.cancel();
        }
    }

    private Animator createAnimatorSet(View view, long j2, float f2) {
        if (view == null) {
            return null;
        }
        view.setPivotX(view.getMeasuredHeight() / 2.0f);
        view.setPivotY(view.getMeasuredWidth() / 2.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "rotationX", 0.0f, f2);
        objectAnimatorOfFloat.setDuration(j2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "rotationX", f2, (-f2) / 2.0f);
        objectAnimatorOfFloat2.setDuration(2 * j2);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(1);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "rotationX", f2, 0.0f);
        objectAnimatorOfFloat3.setDuration(j2);
        animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        animatorSet.setStartDelay(400L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.fl.saas.adx.base.widget.InclineView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (InclineView.this.mImageView != null) {
                    InclineView.this.mImageView.setRotation(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (InclineView.this.isVisibility) {
                    animator.start();
                }
            }
        });
        return animatorSet;
    }

    private void createImageView() {
        ImageView imageView = new ImageView(getContext());
        this.mImageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mImageView.setAdjustViewBounds(true);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        addView(this.mImageView, layoutParams);
        this.mImageView.setImageResource(R.drawable.fl_adx_icon_shake_hand);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playAnimator() {
        if (this.mAnimator == null) {
            this.mAnimator = createAnimatorSet(this.mImageView, 200L, 40.0f);
        }
        if (this.mAnimator.isRunning()) {
            return;
        }
        this.mAnimator.start();
    }

    private void registerAccelerometer() {
        try {
            if (this.isCallback) {
                return;
            }
            C1213r0 c1213r0 = DeviceUtil.controlBean;
            if (c1213r0 != null) {
                if (!c1213r0.g()) {
                    return;
                }
            } else if (!DeviceUtil.isCanUseSensor) {
                return;
            }
            if (this.sensorManager == null) {
                this.sensorManager = (SensorManager) getContext().getSystemService("sensor");
            }
            if (this.accelerometerSensor == null) {
                this.accelerometerSensor = this.sensorManager.getDefaultSensor(1);
            }
            this.sensorManager.registerListener(this, this.accelerometerSensor, 3);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void unRegisterAccelerometer() {
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimator();
        this.mAnimator = null;
        unRegisterAccelerometer();
        this.sensorManager = null;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (!this.isCallback && sensorEvent.sensor.getType() == 1) {
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = jCurrentTimeMillis - this.lastUpdate;
            if (j2 > 100) {
                this.lastUpdate = jCurrentTimeMillis;
                float f5 = this.last_x;
                if (f5 == 0.0f && this.last_y == 0.0f && this.last_z == 0.0f) {
                    this.last_x = f2;
                    this.last_y = f3;
                    this.last_z = f4;
                    return;
                }
                float f6 = f2 - f5;
                float f7 = f3 - this.last_y;
                float f8 = f4 - this.last_z;
                boolean z2 = (Math.sqrt((double) (((f6 * f6) + (f7 * f7)) + (f8 * f8))) / ((double) j2)) * 10000.0d >= ((double) this.inclineThreshold);
                this.last_x = f2;
                this.last_y = f3;
                this.last_z = f4;
                if (z2) {
                    this.isCallback = true;
                    InclineListener inclineListener = this.mInclineListener;
                    if (inclineListener != null) {
                        inclineListener.onIncline(Math.round(f2 * 100.0f), Math.round(f3 * 100.0f), Math.round(f4 * 100.0f));
                    }
                    try {
                        ((Vibrator) getContext().getSystemService("vibrator")).vibrate(500L);
                    } catch (Throwable th) {
                        LogcatUtil.debug(th);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.isVisibility = i2 == 0;
        if (i2 == 0) {
            this.mImageView.post(new Runnable() { // from class: com.fl.saas.adx.base.widget.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30290b.playAnimator();
                }
            });
            registerAccelerometer();
        } else {
            cancelAnimator();
            unRegisterAccelerometer();
        }
    }

    public void setCallback(boolean z2) {
        this.isCallback = z2;
    }

    public void setInclineListener(int i2, InclineListener inclineListener) {
        this.inclineThreshold = (i2 < 0 || i2 > 100) ? 400 : i2 < 50 ? i2 * 5 : i2 <= 70 ? i2 * 8 : i2 * 15;
        this.mInclineListener = inclineListener;
    }

    public InclineView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InclineView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.inclineThreshold = 400;
        this.isVisibility = false;
        this.isCallback = false;
        this.lastUpdate = 0L;
        createImageView();
    }
}

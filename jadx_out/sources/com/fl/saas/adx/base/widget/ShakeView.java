package com.fl.saas.adx.base.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.fl.saas.C1213r0;
import com.fl.saas.R;
import com.fl.saas.U0;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes3.dex */
public class ShakeView extends FrameLayout implements SensorEventListener {
    private static final int SHAKE_DEFAULT_THRESHOLD = 400;
    private final float[] accelerometerReading;
    private Sensor accelerometerSensor;
    private Runnable checkValidAreaRunnable;
    private boolean isCallback;
    private boolean isVisibility;
    private long lastUpdate;
    private float last_x;
    private float last_y;
    private float last_z;
    private Animator mAnimator;
    private ImageView mImageView;
    private ShakeListener mShakeListener;
    private Sensor magneticSensor;
    private final float[] magnetometerReading;
    private boolean needVibrator;
    private final float[] orientationAngles;
    private final Runnable playAnimatorRunnable;
    private final float[] rotationMatrix;
    private SensorManager sensorManager;
    private int shakeThreshold;
    private long startTime;
    private double startXAngle;
    private double startYAngle;
    private double startZAngle;

    public interface ShakeListener {
        void onShake(int i2, int i3, int i4);
    }

    public ShakeView(@NonNull Context context) {
        super(context);
        this.shakeThreshold = 400;
        this.isVisibility = false;
        this.isCallback = false;
        this.needVibrator = true;
        this.lastUpdate = 0L;
        this.accelerometerReading = new float[3];
        this.magnetometerReading = new float[3];
        this.rotationMatrix = new float[9];
        this.orientationAngles = new float[3];
        this.playAnimatorRunnable = new Runnable() { // from class: com.fl.saas.adx.base.widget.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f30303b.playAnimator();
            }
        };
    }

    private void cancelAnimator() {
        Animator animator = this.mAnimator;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkValidArea() {
        if (isShow()) {
            registerAccelerometer(true);
            return;
        }
        if (this.checkValidAreaRunnable == null) {
            this.checkValidAreaRunnable = new Runnable() { // from class: com.fl.saas.adx.base.widget.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30304b.checkValidArea();
                }
            };
        }
        DeviceUtil.removePostUI(this.checkValidAreaRunnable);
        DeviceUtil.postUIDelayed(200L, this.checkValidAreaRunnable);
    }

    private Animator createAnimatorSet(View view, long j2, float f2) {
        if (view == null) {
            return null;
        }
        float measuredHeight = view.getMeasuredHeight();
        float measuredWidth = view.getMeasuredWidth();
        if (measuredHeight == 0.0f && measuredWidth == 0.0f) {
            float fDip2px = DeviceUtil.dip2px(24.0f);
            measuredWidth = DeviceUtil.dip2px(24.0f);
            measuredHeight = fDip2px;
        }
        Interpolator interpolatorCreate = PathInterpolatorCompat.create(0.33f, 0.0f, 0.36f, 1.0f);
        view.setPivotX(measuredHeight / 2.0f);
        view.setPivotY(measuredWidth / 2.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, C1244a.f35650B, 0.0f, f2);
        objectAnimatorOfFloat.setDuration(j2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, C1244a.f35650B, f2, -f2);
        objectAnimatorOfFloat2.setDuration(2 * j2);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setInterpolator(interpolatorCreate);
        objectAnimatorOfFloat2.setRepeatCount(3);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, C1244a.f35650B, f2, 0.0f);
        objectAnimatorOfFloat3.setDuration(j2);
        animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        animatorSet.setStartDelay(400L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.fl.saas.adx.base.widget.ShakeView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (ShakeView.this.mImageView != null) {
                    ShakeView.this.mImageView.setRotation(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ShakeView.this.isVisibility) {
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

    private boolean isShow() {
        return getGlobalVisibleRect(new Rect());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playAnimator() {
        if (this.mAnimator == null) {
            this.mAnimator = createAnimatorSet(this.mImageView, 100L, 16.0f);
        }
        if (this.mAnimator.isRunning()) {
            return;
        }
        this.mAnimator.start();
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimator();
        this.mAnimator = null;
        unRegisterAccelerometer(true);
        this.sensorManager = null;
        this.accelerometerSensor = null;
        Runnable runnable = this.checkValidAreaRunnable;
        if (runnable != null) {
            DeviceUtil.removePostUI(runnable);
            this.checkValidAreaRunnable = null;
        }
        removeCallbacks(null);
        this.mImageView.removeCallbacks(this.playAnimatorRunnable);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.isCallback) {
            return;
        }
        Sensor sensor = sensorEvent.sensor;
        if (sensor.getType() != 1) {
            if (sensor.getType() == 2) {
                float[] fArr = sensorEvent.values;
                float[] fArr2 = this.magnetometerReading;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                return;
            }
            return;
        }
        try {
            if (this.shakeThreshold >= 0) {
                boolean z2 = false;
                float[] fArr3 = sensorEvent.values;
                float f2 = fArr3[0];
                float f3 = fArr3[1];
                float f4 = fArr3[2];
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
                    if ((Math.sqrt(((f6 * f6) + (f7 * f7)) + (f8 * f8)) / j2) * 10000.0d >= this.shakeThreshold) {
                        z2 = true;
                    }
                    this.last_x = f2;
                    this.last_y = f3;
                    this.last_z = f4;
                    if (z2 && isShow()) {
                        this.isCallback = true;
                        ShakeListener shakeListener = this.mShakeListener;
                        if (shakeListener != null) {
                            shakeListener.onShake(Math.round(f2 * 100.0f), Math.round(f3 * 100.0f), Math.round(f4 * 100.0f));
                        }
                        if (this.needVibrator) {
                            ((Vibrator) getContext().getApplicationContext().getSystemService("vibrator")).vibrate(500L);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            float[] fArr4 = sensorEvent.values;
            float[] fArr5 = this.accelerometerReading;
            System.arraycopy(fArr4, 0, fArr5, 0, fArr5.length);
            SensorManager.getRotationMatrix(this.rotationMatrix, null, this.accelerometerReading, this.magnetometerReading);
            SensorManager.getOrientation(this.rotationMatrix, this.orientationAngles);
            float[] fArr6 = this.orientationAngles;
            double d2 = (fArr6[0] * 180.0f) / 3.141592653589793d;
            double d3 = (fArr6[1] * 180.0f) / 3.141592653589793d;
            double d4 = (fArr6[2] * 180.0f) / 3.141592653589793d;
            boolean z3 = false;
            if (this.startXAngle == 0.0d) {
                this.startXAngle = d3;
                this.startYAngle = d4;
                this.startZAngle = d2;
                return;
            }
            float[] fArr7 = sensorEvent.values;
            float f9 = fArr7[0];
            float f10 = fArr7[1];
            float f11 = fArr7[2];
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            long j3 = jCurrentTimeMillis2 - this.lastUpdate;
            if (j3 > 100) {
                boolean z4 = Math.abs(d3 - this.startXAngle) > 35.0d || Math.abs(d4 - this.startYAngle) > 35.0d || Math.abs(d2 - this.startZAngle) > 35.0d;
                if (z4 && this.startTime == 0) {
                    this.startTime = jCurrentTimeMillis2;
                }
                this.lastUpdate = jCurrentTimeMillis2;
                float f12 = this.last_x;
                if (f12 == 0.0f && this.last_y == 0.0f && this.last_z == 0.0f) {
                    this.last_x = f9;
                    this.last_y = f10;
                    this.last_z = f11;
                    return;
                }
                float f13 = f9 - f12;
                float f14 = f10 - this.last_y;
                float f15 = f11 - this.last_z;
                if ((Math.sqrt(((f13 * f13) + (f14 * f14)) + (f15 * f15)) / j3) * 10000.0d >= 1500.0d) {
                    z3 = true;
                }
                if (z3 && this.startTime == 0) {
                    this.startTime = jCurrentTimeMillis2;
                }
                this.last_x = f9;
                this.last_y = f10;
                this.last_z = f11;
                if (z3 && z4 && jCurrentTimeMillis2 - this.startTime > 3000 && isShow()) {
                    this.isCallback = true;
                    ShakeListener shakeListener2 = this.mShakeListener;
                    if (shakeListener2 != null) {
                        shakeListener2.onShake(Math.round(f9 * 100.0f), Math.round(f10 * 100.0f), Math.round(f11 * 100.0f));
                    }
                    if (this.needVibrator) {
                        ((Vibrator) getContext().getApplicationContext().getSystemService("vibrator")).vibrate(500L);
                    }
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.isVisibility = i2 == 0;
        if (i2 != 0) {
            cancelAnimator();
            unRegisterAccelerometer(true);
            return;
        }
        this.mImageView.post(this.playAnimatorRunnable);
        if (isShow()) {
            registerAccelerometer(true);
        } else {
            checkValidArea();
        }
    }

    public void registerAccelerometer(boolean z2) {
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
            if (z2) {
                U0.a().a(this);
            }
            if (this.sensorManager == null) {
                this.sensorManager = (SensorManager) getContext().getApplicationContext().getSystemService("sensor");
            }
            if (this.accelerometerSensor == null) {
                this.accelerometerSensor = this.sensorManager.getDefaultSensor(1);
            }
            this.sensorManager.registerListener(this, this.accelerometerSensor, 3);
            if (this.magneticSensor == null) {
                this.magneticSensor = this.sensorManager.getDefaultSensor(2);
            }
            this.sensorManager.registerListener(this, this.magneticSensor, 3, 3);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void setCallback(boolean z2) {
        this.isCallback = z2;
    }

    public void setNeedVibrator(boolean z2) {
        this.needVibrator = z2;
    }

    public void setShakeListener(int i2, ShakeListener shakeListener) {
        this.shakeThreshold = (i2 < 0 || i2 >= 100) ? -1 : i2 < 50 ? i2 * 5 : i2 <= 70 ? i2 * 8 : i2 * 20;
        this.mShakeListener = shakeListener;
    }

    public void unRegisterAccelerometer(boolean z2) {
        if (z2) {
            try {
                U0.a().b(this);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
                return;
            }
        }
        this.startTime = 0L;
        this.startXAngle = 0.0d;
        this.startYAngle = 0.0d;
        this.startZAngle = 0.0d;
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager != null) {
            Sensor sensor = this.accelerometerSensor;
            if (sensor != null) {
                sensorManager.unregisterListener(this, sensor);
            }
            Sensor sensor2 = this.magneticSensor;
            if (sensor2 != null) {
                this.sensorManager.unregisterListener(this, sensor2);
            }
        }
    }

    public ShakeView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShakeView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.shakeThreshold = 400;
        this.isVisibility = false;
        this.isCallback = false;
        this.needVibrator = true;
        this.lastUpdate = 0L;
        this.accelerometerReading = new float[3];
        this.magnetometerReading = new float[3];
        this.rotationMatrix = new float[9];
        this.orientationAngles = new float[3];
        this.playAnimatorRunnable = new Runnable() { // from class: com.fl.saas.adx.base.widget.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f30303b.playAnimator();
            }
        };
        createImageView();
    }
}

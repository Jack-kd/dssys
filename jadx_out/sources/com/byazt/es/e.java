package com.byazt.es;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Vibrator;

@com.byazt.kj.hp(hp = {0, 1, 155, 45})
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static SensorManager f19447a;
    public static hp hp;

    /* renamed from: l, reason: collision with root package name */
    public static final float[] f19449l = new float[3];
    public static final float[] jx = new float[3];

    /* renamed from: j, reason: collision with root package name */
    public static final float[] f19448j = new float[9];

    /* renamed from: w, reason: collision with root package name */
    public static final float[] f19450w = new float[3];

    private static int hp(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3) {
            return i2;
        }
        return 2;
    }

    public static void j(Context context, SensorEventListener sensorEventListener, int i2) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (hp()) {
                return;
            }
            hp hpVar = hp;
            if (hpVar == null || !hpVar.jx()) {
                SensorManager sensorManagerHp = hp(context);
                sensorManagerHp.registerListener(sensorEventListener, sensorManagerHp.getDefaultSensor(1), hp(i2));
                sensorManagerHp.registerListener(sensorEventListener, sensorManagerHp.getDefaultSensor(2), hp(i2));
            }
        } catch (Throwable th) {
            eb.hp("SensorHub", "startListenRotationVector err", th);
        }
    }

    public static void jx(Context context, SensorEventListener sensorEventListener, int i2) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (hp()) {
                return;
            }
            hp hpVar = hp;
            if (hpVar == null || !hpVar.jx()) {
                SensorManager sensorManagerHp = hp(context);
                sensorManagerHp.registerListener(sensorEventListener, sensorManagerHp.getDefaultSensor(10), hp(i2));
            }
        } catch (Throwable th) {
            eb.hp("SensorHub", "startListenLinearAcceleration error", th);
        }
    }

    public static void l(Context context, SensorEventListener sensorEventListener, int i2) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (hp()) {
                return;
            }
            hp hpVar = hp;
            if (hpVar == null || !hpVar.jx()) {
                SensorManager sensorManagerHp = hp(context);
                sensorManagerHp.registerListener(sensorEventListener, sensorManagerHp.getDefaultSensor(4), hp(i2));
            }
        } catch (Throwable th) {
            eb.hp("SensorHub", "startListenGyroscope error", th);
        }
    }

    public static void hp(hp hpVar) {
        hp = hpVar;
    }

    private static SensorManager hp(Context context) {
        if (f19447a == null) {
            synchronized (e.class) {
                try {
                    if (f19447a == null) {
                        f19447a = (SensorManager) context.getSystemService("sensor");
                    }
                } finally {
                }
            }
        }
        return f19447a;
    }

    private static boolean hp() {
        hp hpVar = hp;
        return hpVar == null || !hpVar.l();
    }

    public static void hp(Context context, SensorEventListener sensorEventListener, int i2) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (hp()) {
                return;
            }
            hp hpVar = hp;
            if (hpVar == null || !hpVar.jx()) {
                SensorManager sensorManagerHp = hp(context);
                sensorManagerHp.registerListener(sensorEventListener, sensorManagerHp.getDefaultSensor(1), hp(i2));
            }
        } catch (Throwable th) {
            eb.hp("SensorHub", "startListenAccelerometer error", th);
        }
    }

    public static void hp(Context context, SensorEventListener sensorEventListener) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            hp(context).unregisterListener(sensorEventListener);
        } catch (Throwable th) {
            eb.hp("SensorHub", "stopListen error", th);
        }
    }

    public static void hp(Context context, long j2) {
        if (context == null) {
            return;
        }
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j2);
    }
}

package com.bykv.vk.component.ttvideo.player;

import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.byazt.ymw.u;

@Keep
/* loaded from: classes3.dex */
public class SensorData {
    protected static final int Sensor_ACC_Data = 1;
    protected static final int Sensor_MAG_Data = 2;
    protected static final int Sensor_ROT_Data = 3;
    private long mHandle = 0;
    private SensorManager mSensorManager = null;
    private SensorEventListener mListener = null;
    private float[] magnet = new float[3];
    private float[] accel = new float[3];

    private static final native void _writeData(long j2, int i2, float f2, float f3, float f4);

    public void finalize() {
        stop();
    }

    public Boolean initListeners() {
        return Boolean.FALSE;
    }

    @CalledByNative
    public void setHandle(long j2, TTPlayer tTPlayer) {
        this.mHandle = j2;
        tTPlayer.getContext();
    }

    @CalledByNative
    public int start() {
        return initListeners().booleanValue() ? 0 : -1;
    }

    @CalledByNative
    public void stop() {
        u.l("ttmn", "stop sensor");
        this.mHandle = 0L;
    }
}

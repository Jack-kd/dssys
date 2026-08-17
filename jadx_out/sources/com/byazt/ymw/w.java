package com.byazt.ymw;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public final class w implements gu {
    public static volatile w hp;

    /* renamed from: a, reason: collision with root package name */
    public volatile Sensor f28121a;

    /* renamed from: j, reason: collision with root package name */
    public volatile Sensor f28122j;
    public volatile Sensor jx;

    /* renamed from: l, reason: collision with root package name */
    public final SensorManager f28123l;

    /* renamed from: w, reason: collision with root package name */
    public volatile Sensor f28125w;
    public final ConcurrentHashMap<Sensor, CopyOnWriteArraySet<SensorEventListener>> eb = new ConcurrentHashMap<>();

    /* renamed from: s, reason: collision with root package name */
    public final SensorEventListener f28124s = new SensorEventListener() { // from class: com.byazt.ymw.w.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            CopyOnWriteArraySet copyOnWriteArraySet;
            if (sensorEvent == null || sensorEvent.sensor == null || (copyOnWriteArraySet = (CopyOnWriteArraySet) w.this.eb.get(sensorEvent.sensor)) == null) {
                return;
            }
            Iterator it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                SensorEventListener sensorEventListener = (SensorEventListener) it.next();
                if (sensorEventListener != null) {
                    sensorEventListener.onSensorChanged(sensorEvent);
                }
            }
        }
    };

    private w(Context context) {
        this.f28123l = (SensorManager) context.getSystemService("sensor");
    }

    private Sensor j() {
        if (this.f28125w == null) {
            synchronized (w.class) {
                try {
                    if (this.f28125w == null) {
                        this.f28125w = this.f28123l.getDefaultSensor(4);
                    }
                } finally {
                }
            }
        }
        return this.f28125w;
    }

    private Sensor jx() {
        if (this.f28122j == null) {
            synchronized (w.class) {
                try {
                    if (this.f28122j == null) {
                        this.f28122j = this.f28123l.getDefaultSensor(15);
                    }
                } finally {
                }
            }
        }
        return this.f28122j;
    }

    private Sensor l() {
        if (this.jx == null) {
            synchronized (w.class) {
                try {
                    if (this.jx == null) {
                        this.jx = this.f28123l.getDefaultSensor(1);
                    }
                } finally {
                }
            }
        }
        return this.jx;
    }

    private Sensor w() {
        if (this.f28121a == null) {
            synchronized (w.class) {
                try {
                    if (this.f28121a == null) {
                        this.f28121a = this.f28123l.getDefaultSensor(10);
                    }
                } finally {
                }
            }
        }
        return this.f28121a;
    }

    public static w hp(Context context) {
        if (hp == null) {
            synchronized (w.class) {
                try {
                    if (hp == null) {
                        hp = new w(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // com.byazt.ymw.gu
    public Sensor hp(int i2) {
        if (i2 == 1) {
            return l();
        }
        if (i2 == 4) {
            return j();
        }
        if (i2 == 10) {
            return w();
        }
        if (i2 != 15) {
            return null;
        }
        return jx();
    }

    @Override // com.byazt.ymw.gu
    public boolean hp(SensorEventListener sensorEventListener, Sensor sensor, int i2) {
        boolean zRegisterListener;
        if (sensorEventListener == null || sensor == null) {
            return false;
        }
        CopyOnWriteArraySet<SensorEventListener> copyOnWriteArraySet = this.eb.get(sensor);
        if (copyOnWriteArraySet == null || copyOnWriteArraySet.isEmpty()) {
            zRegisterListener = this.f28123l.registerListener(this.f28124s, sensor, i2);
            sensor.getName();
            sensorEventListener.hashCode();
        } else {
            zRegisterListener = true;
        }
        if (zRegisterListener) {
            if (copyOnWriteArraySet == null) {
                copyOnWriteArraySet = new CopyOnWriteArraySet<>();
                this.eb.put(sensor, copyOnWriteArraySet);
            }
            copyOnWriteArraySet.add(sensorEventListener);
            sensor.getName();
            sensorEventListener.hashCode();
        }
        return zRegisterListener;
    }

    @Override // com.byazt.ymw.gu
    public void hp(SensorEventListener sensorEventListener) {
        if (sensorEventListener == null) {
            return;
        }
        for (Map.Entry<Sensor, CopyOnWriteArraySet<SensorEventListener>> entry : this.eb.entrySet()) {
            if (entry != null) {
                Sensor key = entry.getKey();
                CopyOnWriteArraySet<SensorEventListener> value = entry.getValue();
                if (value != null && value.contains(sensorEventListener)) {
                    value.remove(sensorEventListener);
                    if (key != null) {
                        key.getName();
                    }
                    sensorEventListener.hashCode();
                    if (value.isEmpty() && key != null) {
                        try {
                            this.f28123l.unregisterListener(this.f28124s, key);
                        } catch (Throwable unused) {
                        }
                        key.getName();
                    }
                }
            }
        }
        hp();
    }

    public int hp() {
        CopyOnWriteArraySet<SensorEventListener> value;
        int size = 0;
        for (Map.Entry<Sensor, CopyOnWriteArraySet<SensorEventListener>> entry : this.eb.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null) {
                size += value.size();
            }
        }
        return size;
    }
}

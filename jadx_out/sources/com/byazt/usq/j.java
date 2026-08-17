package com.byazt.usq;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.byazt.gjx.a;
import com.byazt.uid.eb;
import com.byazt.ymw.vv;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1249, 38})
/* loaded from: classes3.dex */
public class j implements SensorEventListener {
    public static volatile j hp;
    public volatile hp ec;

    /* renamed from: k, reason: collision with root package name */
    public Sensor f26419k;

    /* renamed from: v, reason: collision with root package name */
    public Sensor f26424v;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f26420l = false;
    public final List<Float> jx = new ArrayList(1);

    /* renamed from: j, reason: collision with root package name */
    public final List<Float> f26418j = new ArrayList(1);

    /* renamed from: w, reason: collision with root package name */
    public final List<Float> f26425w = new ArrayList(1);

    /* renamed from: a, reason: collision with root package name */
    public final List<Float> f26416a = new ArrayList(1);
    public final List<Float> eb = new ArrayList(1);

    /* renamed from: s, reason: collision with root package name */
    public final List<Float> f26422s = new ArrayList(1);

    /* renamed from: q, reason: collision with root package name */
    public final int f26421q = 0;

    /* renamed from: e, reason: collision with root package name */
    public final int f26417e = 1;
    public final int gu = 2;
    public final int jl = 16;
    public final int zy = 32;

    /* renamed from: u, reason: collision with root package name */
    public long f26423u = 0;
    public volatile boolean xs = false;
    public volatile AtomicInteger vv = new AtomicInteger(0);
    public volatile int sz = 0;

    public interface hp {
        void hp(JSONObject jSONObject);
    }

    private j() {
        this.f26419k = null;
        this.f26424v = null;
        SensorManager sensorManager = (SensorManager) a.jx().getApplicationContext().getSystemService("sensor");
        if (sensorManager != null) {
            try {
                this.f26419k = sensorManager.getDefaultSensor(1);
                this.f26424v = sensorManager.getDefaultSensor(2);
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        Sensor sensor;
        this.vv.incrementAndGet();
        if (sensorEvent == null || (sensor = sensorEvent.sensor) == null) {
            return;
        }
        int type = sensor.getType();
        float[] fArr = sensorEvent.values;
        if (fArr == null || fArr.length < 3) {
            return;
        }
        if (type == 1) {
            if (this.jx.size() > 0) {
                a();
                return;
            }
            this.jx.add(Float.valueOf(sensorEvent.values[0]));
            this.f26418j.add(Float.valueOf(sensorEvent.values[1]));
            this.f26425w.add(Float.valueOf(sensorEvent.values[2]));
            return;
        }
        if (type != 2) {
            return;
        }
        if (this.f26416a.size() > 0) {
            a();
            return;
        }
        this.f26416a.add(Float.valueOf(sensorEvent.values[0]));
        this.eb.add(Float.valueOf(sensorEvent.values[1]));
        this.f26422s.add(Float.valueOf(sensorEvent.values[2]));
    }

    private synchronized void a() {
        if (!this.f26420l && this.jx.size() > 0 && this.f26416a.size() > 0) {
            this.f26420l = true;
            w();
            com.byazt.uid.w.l(new eb("har") { // from class: com.byazt.usq.j.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        float[] fArrHp = jx.hp(j.this.jx, j.this.f26418j, j.this.f26425w, j.this.f26416a, j.this.eb, j.this.f26422s);
                        j.this.hp(fArrHp);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jA = w.hp().a();
                        long jEb = w.hp().eb();
                        int iJx = (int) (((w.hp().jx() / 1000) / 60) / 60);
                        if (iJx <= 0) {
                            iJx = 1;
                        }
                        jSONObject.put("azimuth_unit", jA);
                        jSONObject.put("angle_unit", jEb);
                        LinkedList<JSONObject> linkedListHp = l.hp().hp(0L);
                        jSONObject.put("active", Arrays.toString(jx.hp(linkedListHp, iJx)));
                        com.byazt.usq.hp.hp().hp(iJx);
                        jSONObject.put("screen", Arrays.toString(com.byazt.usq.hp.hp().jx()));
                        jSONObject.put("network", Arrays.toString(com.byazt.usq.hp.hp().l()));
                        jSONObject.put("support_net", com.byazt.usq.hp.hp().j());
                        jSONObject.put("sim_status", com.byazt.usq.hp.hp().w());
                        int[][] iArrHp = jx.hp(linkedListHp, jA, jEb);
                        jSONObject.put("ax", Arrays.toString(iArrHp[0]));
                        jSONObject.put("ay", Arrays.toString(iArrHp[1]));
                        jSONObject.put("az", Arrays.toString(iArrHp[2]));
                        int[][] iArrHp2 = jx.hp(l.hp().hp(10800000L), jA, jEb);
                        jSONObject.put("ax3", Arrays.toString(iArrHp2[0]));
                        jSONObject.put("ay3", Arrays.toString(iArrHp2[1]));
                        jSONObject.put("az3", Arrays.toString(iArrHp2[2]));
                        int[][] iArrHp3 = jx.hp(l.hp().hp(21600000L), jA, jEb);
                        jSONObject.put("ax6", Arrays.toString(iArrHp3[0]));
                        jSONObject.put("ay6", Arrays.toString(iArrHp3[1]));
                        jSONObject.put("az6", Arrays.toString(iArrHp3[2]));
                        jSONObject.put("angleAvg", Arrays.toString(fArrHp));
                        jSONObject.put("timestamp", jCurrentTimeMillis);
                    } catch (Exception unused) {
                        jSONObject = null;
                    }
                    if (j.this.ec != null) {
                        j.this.ec.hp(jSONObject);
                    }
                    j.this.eb();
                    j.this.xs = false;
                }
            });
        } else {
            if (this.vv.get() > 3) {
                w();
                eb();
                this.xs = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eb() {
        this.jx.clear();
        this.f26418j.clear();
        this.f26425w.clear();
        this.f26416a.clear();
        this.eb.clear();
        this.f26422s.clear();
    }

    private void w() {
        this.vv = new AtomicInteger(0);
        SensorManager sensorManager = (SensorManager) a.jx().getApplicationContext().getSystemService("sensor");
        if (sensorManager != null) {
            Sensor sensor = this.f26419k;
            if (sensor != null) {
                sensorManager.unregisterListener(this, sensor);
            }
            Sensor sensor2 = this.f26424v;
            if (sensor2 != null) {
                sensorManager.unregisterListener(this, sensor2);
            }
        }
    }

    public long j() {
        return this.f26423u;
    }

    public boolean jx() {
        return this.xs;
    }

    public synchronized boolean l() {
        int i2;
        int i3;
        try {
            this.sz = 0;
            if (this.xs) {
                return false;
            }
            if (this.f26419k == null || this.f26424v == null) {
                this.sz |= this.f26419k == null ? 2 : 0;
                int i4 = this.sz;
                i2 = this.f26424v == null ? 16 : 0;
                i3 = i4;
            } else {
                this.xs = false;
                SensorManager sensorManager = (SensorManager) a.jx().getApplicationContext().getSystemService("sensor");
                i2 = 1;
                if (sensorManager != null) {
                    try {
                        boolean zRegisterListener = sensorManager.registerListener(this, this.f26419k, 1);
                        boolean zRegisterListener2 = sensorManager.registerListener(this, this.f26424v, 1);
                        if (zRegisterListener && zRegisterListener2) {
                            this.xs = true;
                            this.f26420l = false;
                        } else {
                            this.sz |= 32;
                            w();
                            eb();
                        }
                    } catch (Exception unused) {
                        i3 = this.sz;
                        i2 = 32;
                    }
                    return this.xs;
                }
                i3 = this.sz;
            }
            this.sz = i3 | i2;
            return this.xs;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static j hp() {
        if (hp == null) {
            synchronized (j.class) {
                try {
                    if (hp == null) {
                        hp = new j();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(hp hpVar) {
        this.ec = hpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(float[] fArr) throws JSONException {
        this.f26423u = System.currentTimeMillis();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(bv.aI, j());
            jSONObject.put("val", new JSONArray(fArr));
            l.hp().hp(jSONObject, "sp_angle");
            l.hp().hp(vv.jx(a.jx()));
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }
}

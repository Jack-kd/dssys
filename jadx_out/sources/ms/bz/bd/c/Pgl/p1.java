package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class p1 implements SensorEventListener {
    private static volatile p1 hp;
    private int jx;

    /* renamed from: l, reason: collision with root package name */
    private SensorManager f51969l;

    /* renamed from: j, reason: collision with root package name */
    private int f51968j = 0;

    /* renamed from: w, reason: collision with root package name */
    private float[] f51970w = new float[3];

    /* renamed from: a, reason: collision with root package name */
    private ArrayList f51967a = new ArrayList();

    static {
        new DecimalFormat((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e05adb", new byte[]{36, 124, 22}));
        hp = null;
    }

    private p1(Context context) {
        this.f51969l = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            this.f51969l = (SensorManager) applicationContext.getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "71bac4", new byte[]{com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, 31, 6, com.sigmob.sdk.archives.tar.e.f35451Q, com.sigmob.sdk.archives.tar.e.f35443I}));
        }
    }

    public static p1 hp(Context context) {
        if (hp == null) {
            synchronized (p1.class) {
                try {
                    if (hp == null) {
                        hp = new p1(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private synchronized void j() {
        try {
            SensorManager sensorManager = this.f51969l;
            if (sensorManager != null) {
                if (this.jx == 0) {
                    if (!this.f51969l.registerListener(this, sensorManager.getDefaultSensor(1), 3)) {
                        return;
                    }
                }
                this.jx++;
            }
        } catch (Exception unused) {
        }
    }

    private synchronized void w() {
        try {
            SensorManager sensorManager = this.f51969l;
            if (sensorManager != null) {
                int i2 = this.jx - 1;
                this.jx = i2;
                if (i2 == 0) {
                    sensorManager.unregisterListener(this);
                }
            }
        } catch (Exception unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "815bfb", new byte[]{58, 32, 69, 41, com.sigmob.sdk.archives.tar.e.f35450P});
        }
    }

    public final synchronized String jx() {
        StringBuilder sb = new StringBuilder();
        int size = this.f51967a.size();
        if (size <= 0) {
            return null;
        }
        try {
            ArrayList arrayList = this.f51967a;
            int i2 = size - 50;
            if (i2 <= 0) {
                i2 = 0;
            }
            List<JSONArray> listSubList = arrayList.subList(i2, size);
            if (listSubList.size() > 0) {
                for (JSONArray jSONArray : listSubList) {
                    if (jSONArray != null) {
                        sb.append(jSONArray.get(0).toString());
                        sb.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f52ed9", new byte[]{59}));
                        sb.append(jSONArray.get(1).toString());
                        sb.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "61cc01", new byte[]{107}));
                        sb.append(jSONArray.get(2).toString());
                        sb.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0fd291", new byte[]{61}));
                    }
                }
            }
            if (sb.length() > 0) {
                sb.delete(sb.length() - 1, sb.length());
            }
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    public final synchronized void l() {
        JSONArray jSONArrayHp = hp();
        if (jSONArrayHp == null) {
            return;
        }
        this.f51967a.add(jSONArrayHp);
        try {
            int size = this.f51967a.size();
            if (size > 100) {
                ArrayList arrayList = new ArrayList(this.f51967a.subList(size - 50, size));
                this.f51967a.clear();
                this.f51967a = arrayList;
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        this.f51970w = sensorEvent.values;
        this.f51968j = 1;
    }

    public final JSONArray hp() {
        JSONArray jSONArray;
        BigDecimal bigDecimal;
        try {
            if (pble.hp() == null) {
                return null;
            }
            j();
            try {
                try {
                    synchronized (this) {
                        int i2 = 0;
                        while (this.f51968j == 0 && i2 < 10) {
                            try {
                                i2++;
                                wait(1000L);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    jSONArray = new JSONArray();
                    jSONArray.put(new BigDecimal(this.f51970w[0]).setScale(2, 4));
                    jSONArray.put(new BigDecimal(this.f51970w[1]).setScale(2, 4));
                    bigDecimal = new BigDecimal(this.f51970w[2]);
                } catch (Throwable th2) {
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put(new BigDecimal(this.f51970w[0]).setScale(2, 4));
                    jSONArray2.put(new BigDecimal(this.f51970w[1]).setScale(2, 4));
                    jSONArray2.put(new BigDecimal(this.f51970w[2]).setScale(2, 4));
                    w();
                    this.f51968j = 0;
                    throw th2;
                }
            } catch (Exception unused) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e73b83", new byte[]{com.sigmob.sdk.archives.tar.e.f35454T, 38, 67, 41, 0});
                jSONArray = new JSONArray();
                jSONArray.put(new BigDecimal(this.f51970w[0]).setScale(2, 4));
                jSONArray.put(new BigDecimal(this.f51970w[1]).setScale(2, 4));
                bigDecimal = new BigDecimal(this.f51970w[2]);
            }
            jSONArray.put(bigDecimal.setScale(2, 4));
            w();
            this.f51968j = 0;
            return jSONArray;
        } catch (Throwable unused2) {
            return null;
        }
    }
}

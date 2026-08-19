package com.kwad.sdk.utils;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.service.ServiceProvider;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes4.dex */
public class bk {
    private static volatile bk bqi;
    private final Map<String, a> bqj = new ConcurrentHashMap();
    private final Map<String, CopyOnWriteArraySet<SensorEventListener>> bqk = new ConcurrentHashMap();
    private boolean bql = false;

    public static class a implements SensorEventListener {
        private final WeakReference<bk> arz;
        private final String key;

        public a(String str, bk bkVar) {
            this.key = str;
            this.arz = new WeakReference<>(bkVar);
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
            bk bkVar = this.arz.get();
            if (bkVar != null) {
                bkVar.a(this.key, sensorEvent);
            }
        }
    }

    public interface b {
        void onFailed();
    }

    private bk() {
        com.kwad.sdk.core.c.b.LW();
        com.kwad.sdk.core.c.b.a(new com.kwad.sdk.core.c.d() { // from class: com.kwad.sdk.utils.bk.1
            @Override // com.kwad.sdk.core.c.d, com.kwad.sdk.core.c.c
            public final void onBackToBackground() {
                super.onBackToBackground();
                com.kwad.sdk.core.d.c.d("SensorDataManager", "onBackToBackground");
                SensorManager sensorManagerCheckAndObtainSensorManager = bm.Wt().checkAndObtainSensorManager(ServiceProvider.getContext());
                for (String str : bk.this.bqj.keySet()) {
                    try {
                        sensorManagerCheckAndObtainSensorManager.unregisterListener((a) bk.this.bqj.get(str));
                        com.kwad.sdk.core.d.c.d("SensorDataManager", "unregister successfully: " + str);
                    } catch (Throwable unused) {
                    }
                }
            }

            @Override // com.kwad.sdk.core.c.d, com.kwad.sdk.core.c.c
            public final void onBackToForeground() throws NumberFormatException {
                super.onBackToForeground();
                com.kwad.sdk.core.d.c.d("SensorDataManager", "onBackToForeground ");
                SensorManager sensorManagerCheckAndObtainSensorManager = bm.Wt().checkAndObtainSensorManager(ServiceProvider.getContext());
                for (String str : bk.this.bqj.keySet()) {
                    a aVar = (a) bk.this.bqj.get(str);
                    if (aVar != null) {
                        sensorManagerCheckAndObtainSensorManager.registerListener(aVar, bk.a(bk.this, Integer.parseInt(str.split("_")[0])), bk.b(bk.this, Integer.parseInt(str.split("_")[1])));
                        com.kwad.sdk.core.d.c.d("SensorDataManager", "register successfully: " + str);
                    }
                }
            }
        });
    }

    private static String I(int i2, int i3) {
        return i2 + "_" + i3;
    }

    @NonNull
    public static bk Wo() {
        if (bqi == null) {
            synchronized (bk.class) {
                try {
                    if (bqi == null) {
                        bqi = new bk();
                    }
                } finally {
                }
            }
        }
        return bqi;
    }

    public static /* synthetic */ Sensor a(bk bkVar, int i2) {
        return gc(i2);
    }

    public static /* synthetic */ int b(bk bkVar, int i2) {
        return gd(i2);
    }

    @Nullable
    private static Sensor gc(int i2) {
        bm bmVarWt = bm.Wt();
        Context context = ServiceProvider.getContext();
        if (i2 == 1) {
            return bmVarWt.getDefaultSensor(context, 10);
        }
        if (i2 == 2) {
            return bmVarWt.getDefaultSensor(context, 4);
        }
        if (i2 == 3) {
            return bmVarWt.getDefaultSensor(context, 1);
        }
        if (i2 != 4) {
            return null;
        }
        return bmVarWt.getDefaultSensor(context, 9);
    }

    private static int gd(int i2) {
        if (i2 == -3) {
            return 2;
        }
        if (i2 != -2) {
            return i2 != -1 ? 3 : 0;
        }
        return 1;
    }

    private void id(String str) {
        a aVar = this.bqj.get(str);
        if (aVar != null) {
            this.bqj.remove(str);
            try {
                bm.Wt().unregisterListener(aVar);
            } catch (Throwable th) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            }
        }
    }

    private a ie(String str) {
        a aVar = this.bqj.get(str);
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(str, this);
        this.bqj.put(str, aVar2);
        return aVar2;
    }

    public final synchronized void a(int i2, int i3, SensorEventListener sensorEventListener, b bVar) {
        Sensor sensorGc = gc(i2);
        if (sensorGc == null) {
            if (bVar != null) {
                bVar.onFailed();
            }
            return;
        }
        String strI = I(i2, i3);
        CopyOnWriteArraySet<SensorEventListener> copyOnWriteArraySet = this.bqk.get(strI);
        if (copyOnWriteArraySet == null) {
            copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        }
        copyOnWriteArraySet.add(sensorEventListener);
        if (copyOnWriteArraySet.size() == 1) {
            this.bqk.put(strI, copyOnWriteArraySet);
            a(strI, i3, sensorGc);
        }
    }

    public final synchronized void a(SensorEventListener sensorEventListener) {
        try {
            for (Map.Entry<String, CopyOnWriteArraySet<SensorEventListener>> entry : this.bqk.entrySet()) {
                CopyOnWriteArraySet<SensorEventListener> value = entry.getValue();
                Iterator<SensorEventListener> it = value.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    SensorEventListener next = it.next();
                    if (next.equals(sensorEventListener)) {
                        value.remove(next);
                        break;
                    }
                }
                if (value.size() == 0) {
                    id(entry.getKey());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(String str, int i2, Sensor sensor) {
        boolean zUseSensorManagerDisable = be.useSensorManagerDisable();
        this.bql = zUseSensorManagerDisable;
        if (zUseSensorManagerDisable) {
            return;
        }
        bm.Wt().registerListener(ServiceProvider.getContext(), ie(str), sensor, gd(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, SensorEvent sensorEvent) {
        CopyOnWriteArraySet<SensorEventListener> copyOnWriteArraySet = this.bqk.get(str);
        if (copyOnWriteArraySet != null) {
            Iterator<SensorEventListener> it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                it.next().onSensorChanged(sensorEvent);
            }
        }
    }
}

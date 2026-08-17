package com.kwad.components.core.webview.jshandler;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.utils.bk;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class s implements SensorEventListener, com.kwad.sdk.core.webview.c.a {
    private Map<Integer, com.kwad.sdk.core.webview.c.c> apM = new ConcurrentHashMap();

    public static class a extends com.kwad.sdk.core.response.a.a {
        public int accuracy;
        public int apO;
        public ArrayList<Float> apP;
        public long timestamp;
        public int type;

        @Override // com.kwad.sdk.core.response.a.a, com.kwad.sdk.core.b
        public final void parseJson(@Nullable JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.type = jSONObject.optInt("type");
            this.apO = jSONObject.optInt("interval");
            this.timestamp = jSONObject.optLong("timestamp");
            this.accuracy = jSONObject.optInt("accuracy");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("values");
            ArrayList<Float> arrayList = new ArrayList<>();
            if (jSONArrayOptJSONArray == null) {
                this.apP = arrayList;
                return;
            }
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                try {
                    Object obj = jSONArrayOptJSONArray.get(i2);
                    if (obj != null) {
                        arrayList.add((Float) obj);
                    }
                } catch (Throwable unused) {
                }
            }
            this.apP = arrayList;
        }

        @Override // com.kwad.sdk.core.response.a.a, com.kwad.sdk.core.b
        public final JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            int i2 = this.type;
            if (i2 != 0) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i2);
            }
            int i3 = this.apO;
            if (i3 != 0) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, "interval", i3);
            }
            long j2 = this.timestamp;
            if (j2 != 0) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, "timestamp", j2);
            }
            int i4 = this.accuracy;
            if (i4 != 0) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, "accuracy", i4);
            }
            if (!this.apP.isEmpty()) {
                com.kwad.sdk.utils.ac.putValue(jSONObject, "values", this.apP);
            }
            return jSONObject;
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        if (TextUtils.isEmpty(str)) {
            cVar.onError(-1, "data is empty");
            return;
        }
        a aVar = new a();
        try {
            aVar.parseJson(new JSONObject(str));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        this.apM.put(Integer.valueOf(aVar.type), cVar);
        a(aVar.type, aVar.apO, cVar);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerSensorListener";
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        com.kwad.sdk.utils.bk.Wo().a(this);
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        a(sensorEvent);
    }

    private void a(int i2, int i3, final com.kwad.sdk.core.webview.c.c cVar) {
        com.kwad.sdk.utils.bk.Wo().a(i2, i3, this, new bk.b() { // from class: com.kwad.components.core.webview.jshandler.s.1
            @Override // com.kwad.sdk.utils.bk.b
            public final void onFailed() {
                cVar.onError(-1, "sensor is not support");
            }
        });
    }

    private void a(SensorEvent sensorEvent) {
        int type = sensorEvent.sensor.getType();
        if (type == 4) {
            type = 2;
        } else if (type == 10) {
            type = 1;
        }
        com.kwad.sdk.core.webview.c.c cVar = this.apM.get(Integer.valueOf(type));
        if (cVar == null) {
            return;
        }
        ArrayList<Float> arrayList = new ArrayList<>();
        int i2 = 0;
        while (true) {
            float[] fArr = sensorEvent.values;
            if (i2 < fArr.length) {
                arrayList.add(Float.valueOf(fArr[i2]));
                i2++;
            } else {
                a aVar = new a();
                aVar.apP = arrayList;
                aVar.timestamp = sensorEvent.timestamp;
                aVar.accuracy = sensorEvent.accuracy;
                cVar.b(aVar);
                return;
            }
        }
    }
}

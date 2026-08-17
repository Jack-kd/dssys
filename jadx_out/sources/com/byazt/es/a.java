package com.byazt.es;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import androidx.core.app.NotificationCompat;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 155, 54})
/* loaded from: classes2.dex */
public class a {
    public Context hp;

    /* renamed from: l, reason: collision with root package name */
    public WeakReference<s> f19445l;
    public Map<String, hp> jx = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public SensorEventListener f19444j = new SensorEventListener() { // from class: com.byazt.es.a.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            s sVarJ;
            if (sensorEvent.sensor.getType() != 1 || (sVarJ = a.this.j()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", f2);
                jSONObject.put("y", f3);
                jSONObject.put(bv.aD, f4);
                sVarJ.hp("accelerometer_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };

    /* renamed from: w, reason: collision with root package name */
    public SensorEventListener f19446w = new SensorEventListener() { // from class: com.byazt.es.a.12
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            s sVarJ;
            if (sensorEvent.sensor.getType() != 4 || (sVarJ = a.this.j()) == null) {
                return;
            }
            float degrees = (float) Math.toDegrees(sensorEvent.values[0]);
            float degrees2 = (float) Math.toDegrees(sensorEvent.values[1]);
            float degrees3 = (float) Math.toDegrees(sensorEvent.values[2]);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", degrees);
                jSONObject.put("y", degrees2);
                jSONObject.put(bv.aD, degrees3);
                sVarJ.hp("gyro_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public SensorEventListener f19443a = new SensorEventListener() { // from class: com.byazt.es.a.23
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            s sVarJ;
            if (sensorEvent.sensor.getType() != 10 || (sVarJ = a.this.j()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", f2);
                jSONObject.put("y", f3);
                jSONObject.put(bv.aD, f4);
                sVarJ.hp("accelerometer_grativityless_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };
    public SensorEventListener eb = new SensorEventListener() { // from class: com.byazt.es.a.34
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 1) {
                float[] fArr = sensorEvent.values;
                float[] fArr2 = e.f19449l;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            } else if (sensorEvent.sensor.getType() == 2) {
                float[] fArr3 = sensorEvent.values;
                float[] fArr4 = e.jx;
                System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
            }
            float[] fArr5 = e.f19448j;
            SensorManager.getRotationMatrix(fArr5, null, e.f19449l, e.jx);
            float[] fArr6 = e.f19450w;
            SensorManager.getOrientation(fArr5, fArr6);
            s sVarJ = a.this.j();
            if (sVarJ == null) {
                return;
            }
            float f2 = fArr6[0];
            float f3 = fArr6[1];
            float f4 = fArr6[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("alpha", f2);
                jSONObject.put("beta", f3);
                jSONObject.put("gamma", f4);
                sVarJ.hp("rotation_vector_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };

    public interface hp {
        JSONObject hp(JSONObject jSONObject) throws Throwable;
    }

    public a(s sVar) {
        this.hp = sVar.getContext();
        this.f19445l = new WeakReference<>(sVar);
        jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public s j() {
        WeakReference<s> weakReference = this.f19445l;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    private void jx() {
        this.jx.put("adInfo", new hp() { // from class: com.byazt.es.a.45
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                if (sVarJ == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectEc = sVarJ.ec();
                if (jSONObjectEc != null) {
                    jSONObjectEc.put("code", 1);
                    return jSONObjectEc;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", -1);
                return jSONObject3;
            }
        });
        this.jx.put("appInfo", new hp() { // from class: com.byazt.es.a.56
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", 1);
                jSONObject2.put(cl.f49061p, "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.5.1");
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = a.this.hp().iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject2.put("supportList", jSONArray);
                s sVarJ = a.this.j();
                if (sVarJ != null) {
                    jSONObject2.put("deviceId", sVarJ.a());
                    jSONObject2.put("netType", sVarJ.u());
                    jSONObject2.put("innerAppName", sVarJ.jx());
                    jSONObject2.put(cl.f49061p, sVarJ.j());
                    jSONObject2.put("appVersion", sVarJ.w());
                    Map<String, String> mapHp = sVarJ.hp();
                    for (String str : mapHp.keySet()) {
                        jSONObject2.put(str, mapHp.get(str));
                    }
                }
                return jSONObject2;
            }
        });
        this.jx.put("playableSDKInfo", new hp() { // from class: com.byazt.es.a.61
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", 1);
                jSONObject2.put(cl.f49061p, "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.5.1");
                jSONObject2.put(bv.f48923x, "android");
                return jSONObject2;
            }
        });
        this.jx.put("subscribe_app_ad", new hp() { // from class: com.byazt.es.a.62
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                com.byazt.es.hp hpVarW = a.this.w();
                JSONObject jSONObject2 = new JSONObject();
                if (hpVarW == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("download_app_ad", new hp() { // from class: com.byazt.es.a.63
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                com.byazt.es.hp hpVarW = a.this.w();
                JSONObject jSONObject2 = new JSONObject();
                if (hpVarW == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("isViewable", new hp() { // from class: com.byazt.es.a.2
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                if (sVarJ == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", 1);
                jSONObject3.put("viewStatus", sVarJ.s());
                return jSONObject3;
            }
        });
        this.jx.put("getVolume", new hp() { // from class: com.byazt.es.a.3
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                if (sVarJ == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", 1);
                jSONObject3.put("endcard_mute", sVarJ.eb());
                return jSONObject3;
            }
        });
        this.jx.put("getScreenSize", new hp() { // from class: com.byazt.es.a.4
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                if (sVarJ == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectVv = sVarJ.vv();
                jSONObjectVv.put("code", 1);
                return jSONObjectVv;
            }
        });
        this.jx.put("start_accelerometer_observer", new hp() { // from class: com.byazt.es.a.5
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        eb.hp("PlayableJsBridge", "invoke start_accelerometer_observer error", th);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                e.hp(a.this.hp, a.this.f19444j, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("close_accelerometer_observer", new hp() { // from class: com.byazt.es.a.6
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    e.hp(a.this.hp, a.this.f19444j);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    eb.hp("PlayableJsBridge", "invoke close_accelerometer_observer error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.jx.put("start_gyro_observer", new hp() { // from class: com.byazt.es.a.7
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        eb.hp("PlayableJsBridge", "invoke start_gyro_observer error", th);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                e.l(a.this.hp, a.this.f19446w, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("close_gyro_observer", new hp() { // from class: com.byazt.es.a.8
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    e.hp(a.this.hp, a.this.f19446w);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    eb.hp("PlayableJsBridge", "invoke close_gyro_observer error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.jx.put("start_accelerometer_grativityless_observer", new hp() { // from class: com.byazt.es.a.9
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        eb.hp("PlayableJsBridge", "invoke start_accelerometer_grativityless_observer error", th);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                e.jx(a.this.hp, a.this.f19443a, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("close_accelerometer_grativityless_observer", new hp() { // from class: com.byazt.es.a.10
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    e.hp(a.this.hp, a.this.f19443a);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    eb.hp("PlayableJsBridge", "invoke close_accelerometer_grativityless_observer error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.jx.put("start_rotation_vector_observer", new hp() { // from class: com.byazt.es.a.11
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        eb.hp("PlayableJsBridge", "invoke start_rotation_vector_observer error", th);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                e.j(a.this.hp, a.this.eb, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("close_rotation_vector_observer", new hp() { // from class: com.byazt.es.a.13
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    e.hp(a.this.hp, a.this.eb);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    eb.hp("PlayableJsBridge", "invoke close_rotation_vector_observer error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.jx.put("device_shake", new hp() { // from class: com.byazt.es.a.14
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    e.hp(a.this.hp, 300L);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    eb.hp("PlayableJsBridge", "invoke device_shake error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.jx.put("device_shake_short", new hp() { // from class: com.byazt.es.a.15
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    e.hp(a.this.hp, 150L);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    eb.hp("PlayableJsBridge", "invoke device_shake error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.jx.put("playable_style", new hp() { // from class: com.byazt.es.a.16
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectL = sVarJ.l();
                jSONObjectL.put("code", 1);
                return jSONObjectL;
            }
        });
        this.jx.put("sendReward", new hp() { // from class: com.byazt.es.a.17
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.n();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("webview_time_track", new hp() { // from class: com.byazt.es.a.18
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                return new JSONObject();
            }
        });
        this.jx.put("playable_event", new hp() { // from class: com.byazt.es.a.19
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null || jSONObject == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.l(jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null), jSONObject.optJSONObject("params"));
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("reportAd", new hp() { // from class: com.byazt.es.a.20
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("close", new hp() { // from class: com.byazt.es.a.21
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("openAdLandPageLinks", new hp() { // from class: com.byazt.es.a.22
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("get_viewport", new hp() { // from class: com.byazt.es.a.24
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectSz = sVarJ.sz();
                jSONObjectSz.put("code", 1);
                return jSONObjectSz;
            }
        });
        this.jx.put("jssdk_load_finish", new hp() { // from class: com.byazt.es.a.25
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.hq();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_material_render_result", new hp() { // from class: com.byazt.es.a.26
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.gu(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("detect_change_playable_click", new hp() { // from class: com.byazt.es.a.27
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectQ = sVarJ.q();
                jSONObjectQ.put("code", 1);
                return jSONObjectQ;
            }
        });
        this.jx.put("check_camera_permission", new hp() { // from class: com.byazt.es.a.28
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectJl = sVarJ.jl();
                jSONObjectJl.put("code", 1);
                return jSONObjectJl;
            }
        });
        this.jx.put("check_external_storage", new hp() { // from class: com.byazt.es.a.29
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectZy = sVarJ.zy();
                if (jSONObjectZy.isNull("result")) {
                    jSONObjectZy.put("code", -1);
                    return jSONObjectZy;
                }
                jSONObjectZy.put("code", 1);
                return jSONObjectZy;
            }
        });
        this.jx.put("playable_open_camera", new hp() { // from class: com.byazt.es.a.30
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.hp(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_pick_photo", new hp() { // from class: com.byazt.es.a.31
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.l(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_download_media_in_photos", new hp() { // from class: com.byazt.es.a.32
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.jx(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_preventTouchEvent", new hp() { // from class: com.byazt.es.a.33
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.j(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_settings_info", new hp() { // from class: com.byazt.es.a.35
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectK = sVarJ.k();
                jSONObjectK.put("code", 1);
                return jSONObjectK;
            }
        });
        this.jx.put("playable_load_main_scene", new hp() { // from class: com.byazt.es.a.36
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.ns();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_enter_section", new hp() { // from class: com.byazt.es.a.37
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.a(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_end", new hp() { // from class: com.byazt.es.a.38
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.cx();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_finish_play_playable", new hp() { // from class: com.byazt.es.a.39
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.b();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_transfrom_module_show", new hp() { // from class: com.byazt.es.a.40
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.di();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_transfrom_module_change_color", new hp() { // from class: com.byazt.es.a.41
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.o();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_set_scroll_rect", new hp() { // from class: com.byazt.es.a.42
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_click_area", new hp() { // from class: com.byazt.es.a.43
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.eb(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_real_play_start", new hp() { // from class: com.byazt.es.a.44
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_material_first_frame_show", new hp() { // from class: com.byazt.es.a.46
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.d();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_stuck_check_pong", new hp() { // from class: com.byazt.es.a.47
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.wv();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_material_adnormal_mask", new hp() { // from class: com.byazt.es.a.48
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                sVarJ.s(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_long_press_panel", new hp() { // from class: com.byazt.es.a.49
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_alpha_player_play", new hp() { // from class: com.byazt.es.a.50
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_transfrom_module_highlight", new hp() { // from class: com.byazt.es.a.51
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_send_click_event", new hp() { // from class: com.byazt.es.a.52
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_query_media_permission_declare", new hp() { // from class: com.byazt.es.a.53
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectQ = sVarJ.q(jSONObject);
                jSONObjectQ.put("code", 1);
                return jSONObjectQ;
            }
        });
        this.jx.put("playable_query_media_permission_enable", new hp() { // from class: com.byazt.es.a.54
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                s sVarJ = a.this.j();
                JSONObject jSONObject2 = new JSONObject();
                if (sVarJ == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectE = sVarJ.e(jSONObject);
                jSONObjectE.put("code", 1);
                return jSONObjectE;
            }
        });
        this.jx.put("playable_apply_media_permission", new hp() { // from class: com.byazt.es.a.55
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                com.byazt.es.hp hpVarW = a.this.w();
                JSONObject jSONObject2 = new JSONObject();
                if (hpVarW == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_start_kws", new hp() { // from class: com.byazt.es.a.57
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                com.byazt.es.hp hpVarW = a.this.w();
                JSONObject jSONObject2 = new JSONObject();
                if (hpVarW == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_close_kws", new hp() { // from class: com.byazt.es.a.58
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                com.byazt.es.hp hpVarW = a.this.w();
                JSONObject jSONObject2 = new JSONObject();
                if (hpVarW == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_video_preload_task_add", new hp() { // from class: com.byazt.es.a.59
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                com.byazt.es.hp hpVarW = a.this.w();
                JSONObject jSONObject2 = new JSONObject();
                if (hpVarW == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.jx.put("playable_video_preload_task_cancel", new hp() { // from class: com.byazt.es.a.60
            @Override // com.byazt.es.a.hp
            public JSONObject hp(JSONObject jSONObject) throws Throwable {
                com.byazt.es.hp hpVarW = a.this.w();
                JSONObject jSONObject2 = new JSONObject();
                if (hpVarW == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.es.hp w() {
        s sVarJ = j();
        if (sVarJ == null) {
            return null;
        }
        return sVarJ.xs();
    }

    public Set<String> hp() {
        return this.jx.keySet();
    }

    public void l() {
        e.hp(this.hp, this.f19444j);
        e.hp(this.hp, this.f19446w);
        e.hp(this.hp, this.f19443a);
        e.hp(this.hp, this.eb);
    }

    public JSONObject hp(String str, JSONObject jSONObject) {
        try {
            hp hpVar = this.jx.get(str);
            if (hpVar == null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", -1);
                return jSONObject2;
            }
            return hpVar.hp(jSONObject);
        } catch (Throwable th) {
            eb.hp("PlayableJsBridge", "invoke error", th);
            return null;
        }
    }
}

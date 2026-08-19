package com.byazt.tg;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.byazt.jkd.jl;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.C;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 755, 94})
/* loaded from: classes3.dex */
public class eb {

    /* renamed from: e, reason: collision with root package name */
    public final jl f25793e;
    public volatile SensorEventListener ec;
    public int gu;
    public volatile boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public View f25794j;
    public int jl;
    public volatile boolean jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile JSONArray f25795k;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f25796l;

    /* renamed from: n, reason: collision with root package name */
    public float[] f25797n;
    public float[] ns;

    /* renamed from: s, reason: collision with root package name */
    public volatile JSONObject f25799s;
    public final String sz;

    /* renamed from: u, reason: collision with root package name */
    public int f25800u;

    /* renamed from: v, reason: collision with root package name */
    public volatile JSONArray f25801v;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public boolean f25802w;
    public int xs;
    public volatile JSONArray zy;

    /* renamed from: a, reason: collision with root package name */
    public long f25792a = -1;
    public long eb = -1;

    /* renamed from: q, reason: collision with root package name */
    public final List<JSONObject> f25798q = new ArrayList();

    public eb(mp mpVar) {
        this.sz = mpVar.di();
        jl jlVarRo = sz.l().ro();
        this.f25793e = jlVarRo;
        com.byazt.jt.l lVarDb = mpVar.db();
        if (jlVarRo == null || lVarDb == null) {
            return;
        }
        int iSz = lVarDb.sz();
        this.hp = jlVarRo.hp(iSz);
        this.f25796l = jlVarRo.l(iSz);
        this.jx = jlVarRo.jx(iSz) && l();
    }

    private void j() {
        if (this.jx && this.ec == null) {
            this.zy = new JSONArray();
            this.f25795k = new JSONArray();
            this.f25801v = new JSONArray();
            this.f25797n = new float[9];
            this.ns = new float[3];
            this.gu = this.f25793e.l();
            this.jl = this.f25793e.jx();
            this.ec = new SensorEventListener() { // from class: com.byazt.tg.eb.1
                @Override // android.hardware.SensorEventListener
                public void onAccuracyChanged(Sensor sensor, int i2) {
                }

                @Override // android.hardware.SensorEventListener
                public void onSensorChanged(SensorEvent sensorEvent) throws JSONException {
                    eb.this.hp(sensorEvent);
                }
            };
            com.byazt.ymw.w wVarHp = com.byazt.ymw.w.hp(sz.getContext());
            wVarHp.hp(this.ec, wVarHp.hp(10), this.jl);
            wVarHp.hp(this.ec, wVarHp.hp(4), this.jl);
            wVarHp.hp(this.ec, wVarHp.hp(15), this.jl);
        }
    }

    private void jx() {
        Object objJ = com.byazt.rk.l.j(this.sz, 1);
        if (objJ instanceof JSONArray) {
            ((JSONArray) objJ).put(this.f25799s);
        } else {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.f25799s);
            com.byazt.rk.l.hp(this.sz, 1, jSONArray);
        }
        this.f25799s = null;
    }

    private boolean l() {
        com.byazt.ymw.w wVarHp = com.byazt.ymw.w.hp(sz.getContext());
        return (wVarHp.hp(10) == null || wVarHp.hp(4) == null || wVarHp.hp(15) == null) ? false : true;
    }

    public void hp(ViewGroup viewGroup, MotionEvent motionEvent, boolean z2) throws JSONException {
        if (this.hp) {
            try {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            this.f25798q.add(hp(motionEvent));
                            return;
                        } else if (action != 3) {
                            return;
                        }
                    }
                    View view = this.f25794j;
                    if (view != null && view.equals(hp(viewGroup, motionEvent.getX(), motionEvent.getY())) && this.f25802w && z2) {
                        return;
                    }
                    if (this.f25799s != null) {
                        this.f25799s.putOpt("ended", hp(motionEvent));
                        this.f25799s.putOpt("moves", hp(this.f25798q, this.f25793e.hp()));
                    }
                    jx();
                    return;
                }
                this.f25794j = hp(viewGroup, motionEvent.getX(), motionEvent.getY());
                this.f25802w = z2;
                this.f25792a = motionEvent.getEventTime();
                this.f25799s = new JSONObject();
                this.f25799s.putOpt("began", hp(motionEvent));
                this.f25798q.clear();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.xs.jx jxVar) {
        try {
            com.byazt.rk.l.hp(this.sz, 0, new hp(jxVar).hp());
        } catch (Exception unused) {
        }
    }

    private void l(JSONArray jSONArray, SensorEvent sensorEvent) throws JSONException {
        if (jSONArray == null || sensorEvent == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", Math.round(sensorEvent.values[0] * 100.0d) / 100.0d);
            jSONObject.put("y", Math.round(sensorEvent.values[1] * 100.0d) / 100.0d);
            jSONObject.put(bv.aD, Math.round(sensorEvent.values[2] * 100.0d) / 100.0d);
            jSONObject.put("ts", (sensorEvent.timestamp - this.eb) / C.MICROS_PER_SECOND);
        } catch (Exception unused) {
        }
        jSONArray.put(jSONObject);
    }

    private JSONArray hp(List<JSONObject> list, int i2) {
        if (list.isEmpty()) {
            return null;
        }
        int size = list.size();
        int i3 = 0;
        int i4 = size > i2 ? (size / i2) - 1 : 0;
        JSONArray jSONArray = new JSONArray();
        if (i4 > 0) {
            while (i3 < i2) {
                i3++;
                int i5 = (i3 * i4) - 1;
                if (i5 < size) {
                    jSONArray.put(list.get(i5));
                }
            }
        } else {
            int iMin = Math.min(size, i2);
            while (i3 < iMin) {
                jSONArray.put(list.get(i3));
                i3++;
            }
        }
        return jSONArray;
    }

    private View hp(ViewGroup viewGroup, float f2, float f3) {
        View view = null;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0 && hp(f2, f3, childAt)) {
                if (childAt instanceof ViewGroup) {
                    View viewHp = hp((ViewGroup) childAt, f2, f3);
                    if (viewHp != null) {
                        childAt = viewHp;
                    }
                    if (childAt.isClickable()) {
                        return childAt;
                    }
                    view = childAt;
                } else if (childAt.isClickable()) {
                    return childAt;
                }
            }
        }
        return view;
    }

    private boolean hp(float f2, float f3, View view) {
        return f2 >= ((float) view.getLeft()) && f2 <= ((float) view.getRight()) && f3 >= ((float) view.getTop()) && f3 <= ((float) view.getBottom());
    }

    private JSONObject hp(MotionEvent motionEvent) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("nums", motionEvent.getPointerCount());
            jSONObject.put("x", String.format("%.2f", Float.valueOf(motionEvent.getX())));
            jSONObject.put("y", String.format("%.2f", Float.valueOf(motionEvent.getY())));
            jSONObject.put("ts", motionEvent.getEventTime() - this.f25792a);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public void hp() throws JSONException {
        if (this.ec != null) {
            this.ec = null;
            com.byazt.ymw.w.hp(sz.getContext()).hp(this.ec);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("accelerometer", this.zy);
                jSONObject.putOpt("gyro", this.f25795k);
                jSONObject.putOpt("device", this.f25801v);
                com.byazt.rk.l.hp(this.sz, 2, jSONObject);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(SensorEvent sensorEvent) throws JSONException {
        int i2;
        int type = sensorEvent.sensor.getType();
        if (this.eb < 0) {
            this.eb = sensorEvent.timestamp;
        }
        if (type == 4) {
            int i3 = this.xs;
            if (i3 < this.gu) {
                this.xs = i3 + 1;
                l(this.f25795k, sensorEvent);
            }
        } else if (type == 10) {
            int i4 = this.f25800u;
            if (i4 < this.gu) {
                this.f25800u = i4 + 1;
                l(this.zy, sensorEvent);
            }
        } else if (type == 15 && (i2 = this.vv) < this.gu) {
            this.vv = i2 + 1;
            hp(this.f25801v, sensorEvent);
        }
        int i5 = this.f25800u;
        int i6 = this.gu;
        if (i5 < i6 || this.xs < i6 || this.vv < i6) {
            return;
        }
        hp();
    }

    private void hp(JSONArray jSONArray, SensorEvent sensorEvent) throws JSONException {
        float[] fArr;
        float[] fArr2;
        if (jSONArray == null || sensorEvent == null || (fArr = this.f25797n) == null || this.ns == null || (fArr2 = sensorEvent.values) == null || fArr2.length < 4) {
            return;
        }
        SensorManager.getRotationMatrixFromVector(fArr, fArr2);
        SensorManager.getOrientation(this.f25797n, this.ns);
        float degrees = (float) Math.toDegrees(this.ns[0]);
        float degrees2 = (float) Math.toDegrees(this.ns[1]);
        float degrees3 = (float) Math.toDegrees(this.ns[2]);
        float f2 = (degrees + 360.0f) % 360.0f;
        float fMax = Math.max(-90.0f, Math.min(90.0f, degrees2));
        float f3 = (degrees3 + 360.0f) % 360.0f;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pitch", Math.round(fMax * 100.0d) / 100.0d);
            jSONObject.put("roll", Math.round(f3 * 100.0d) / 100.0d);
            jSONObject.put("yaw", Math.round(f2 * 100.0d) / 100.0d);
            jSONObject.put("ts", (sensorEvent.timestamp - this.eb) / C.MICROS_PER_SECOND);
        } catch (Exception unused) {
        }
        jSONArray.put(jSONObject);
    }

    public void hp(final com.byazt.xs.jx jxVar) {
        j();
        if (this.f25796l) {
            this.f25796l = false;
            final View viewQ = jxVar.q();
            if (viewQ != null) {
                viewQ.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.tg.eb.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        viewQ.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        eb.this.l(jxVar);
                    }
                });
            }
        }
    }
}

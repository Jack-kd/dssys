package com.byazt.ql;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1306, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public String f24918a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public long f24919j;
    public List<C0349hp> jx;

    /* renamed from: l, reason: collision with root package name */
    public float f24920l;

    /* renamed from: w, reason: collision with root package name */
    public long f24921w;

    @com.byazt.kj.hp(hp = {0, 1, 1306, 170})
    /* renamed from: com.byazt.ql.hp$hp, reason: collision with other inner class name */
    public static class C0349hp {

        /* renamed from: a, reason: collision with root package name */
        public float f24922a;

        /* renamed from: e, reason: collision with root package name */
        public String f24923e;
        public float eb;
        public long hp;

        /* renamed from: j, reason: collision with root package name */
        public long f24924j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public float f24925l;

        /* renamed from: q, reason: collision with root package name */
        public String f24926q;

        /* renamed from: s, reason: collision with root package name */
        public float[] f24927s;

        /* renamed from: w, reason: collision with root package name */
        public String f24928w;

        public float a() {
            return this.eb;
        }

        public float[] eb() {
            return this.f24927s;
        }

        public String getType() {
            return this.f24928w;
        }

        public long hp() {
            return this.hp;
        }

        public long j() {
            return this.f24924j;
        }

        public String jx() {
            return this.jx;
        }

        public float l() {
            return this.f24925l;
        }

        public String q() {
            return this.f24923e;
        }

        public String s() {
            return this.f24926q;
        }

        public float w() {
            return this.f24922a;
        }

        public void hp(long j2) {
            this.hp = j2;
        }

        public void j(String str) {
            this.f24926q = str;
        }

        public void jx(float f2) {
            this.eb = f2;
        }

        public void l(long j2) {
            this.f24924j = j2;
        }

        public void hp(float f2) {
            this.f24925l = f2;
        }

        public void jx(String str) {
            this.f24923e = str;
        }

        public void l(String str) {
            this.f24928w = str;
        }

        public void hp(String str) {
            this.jx = str;
        }

        public void l(float f2) {
            this.f24922a = f2;
        }

        public void hp(float[] fArr) {
            this.f24927s = fArr;
        }

        public static C0349hp hp(JSONObject jSONObject, com.byazt.xs.jx jxVar) {
            if (jSONObject == null) {
                return null;
            }
            C0349hp c0349hp = new C0349hp();
            c0349hp.hp(jSONObject.optLong("duration"));
            String strOptString = jSONObject.optString("loop");
            if (TextUtils.equals("infinite", strOptString)) {
                c0349hp.hp(-1.0f);
            } else {
                try {
                    c0349hp.hp(Float.parseFloat(strOptString));
                } catch (NumberFormatException unused) {
                    c0349hp.hp(0.0f);
                }
            }
            c0349hp.hp(jSONObject.optString("loopMode"));
            c0349hp.l(jSONObject.optString("type"));
            if (TextUtils.equals(c0349hp.getType(), "ripple")) {
                c0349hp.jx(jSONObject.optString("rippleColor"));
            }
            View viewQ = jxVar.q();
            Context context = viewQ != null ? viewQ.getContext() : null;
            if (TextUtils.equals(c0349hp.getType(), "backgroundColor")) {
                String strHp = com.byazt.ss.l.hp(jSONObject.optString("valueTo"), jxVar.e());
                int iHp = com.byazt.xa.hp.hp(jSONObject.optString("valueFrom"));
                int iHp2 = com.byazt.xa.hp.hp(strHp);
                c0349hp.l(iHp);
                c0349hp.jx(iHp2);
            } else if ((TextUtils.equals(c0349hp.getType(), "translateX") || TextUtils.equals(c0349hp.getType(), "translateY")) && context != null) {
                try {
                    float fHp = com.byazt.xa.s.hp(context, (float) jSONObject.optDouble("valueFrom"));
                    float fHp2 = com.byazt.xa.s.hp(context, (float) jSONObject.optDouble("valueTo"));
                    c0349hp.l(fHp);
                    c0349hp.jx(fHp2);
                } catch (Exception unused2) {
                    com.byazt.ymw.u.l("animation", "animation ");
                }
            } else {
                c0349hp.l((float) jSONObject.optDouble("valueFrom"));
                c0349hp.jx((float) jSONObject.optDouble("valueTo"));
            }
            c0349hp.j(jSONObject.optString("interpolator"));
            c0349hp.l(com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONObject.optString("startDelay"), jxVar.e()), 0L));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("values");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                float[] fArr = new float[jSONArrayOptJSONArray.length()];
                int i2 = 0;
                if ((TextUtils.equals(c0349hp.getType(), "translateX") || TextUtils.equals(c0349hp.getType(), "translateY")) && context != null) {
                    while (i2 < jSONArrayOptJSONArray.length()) {
                        fArr[i2] = com.byazt.xa.s.hp(context, (float) hp.hp(jSONArrayOptJSONArray.optString(i2), jxVar.e()));
                        i2++;
                    }
                } else {
                    while (i2 < jSONArrayOptJSONArray.length()) {
                        fArr[i2] = (float) hp.hp(jSONArrayOptJSONArray.optString(i2), jxVar.e());
                        i2++;
                    }
                }
                c0349hp.hp(fArr);
            }
            return c0349hp;
        }
    }

    public String a() {
        return this.f24918a;
    }

    public String hp() {
        return this.hp;
    }

    public long j() {
        return this.f24919j;
    }

    public List<C0349hp> jx() {
        return this.jx;
    }

    public float l() {
        return this.f24920l;
    }

    public long w() {
        return this.f24921w;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void l(long j2) {
        this.f24921w = j2;
    }

    public void hp(float f2) {
        this.f24920l = f2;
    }

    public void l(String str) {
        this.f24918a = str;
    }

    public void hp(List<C0349hp> list) {
        this.jx = list;
    }

    public void hp(long j2) {
        this.f24919j = j2;
    }

    public static hp hp(String str, com.byazt.xs.jx jxVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return hp(new JSONObject(str), jxVar);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static hp hp(JSONObject jSONObject, com.byazt.xs.jx jxVar) {
        return hp(jSONObject, null, jxVar);
    }

    public static hp hp(JSONObject jSONObject, JSONObject jSONObject2, com.byazt.xs.jx jxVar) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        hp hpVar = new hp();
        hpVar.hp(jSONObject.optString("ordering"));
        String strOptString = jSONObject.optString("loop");
        if (TextUtils.equals("infinite", strOptString)) {
            hpVar.hp(-1.0f);
        } else {
            try {
                hpVar.hp(Float.parseFloat(strOptString));
            } catch (NumberFormatException unused) {
                hpVar.hp(0.0f);
            }
        }
        hpVar.hp(jSONObject.optLong("duration", 0L));
        hpVar.l(com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONObject.optString("startDelay"), jxVar.e()), 0L));
        hpVar.l(jSONObject.optString("loopMode"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("animators");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObject2 != null) {
                    com.byazt.xa.l.hp(jSONObject2, jSONObjectOptJSONObject);
                }
                arrayList.add(C0349hp.hp(jSONObjectOptJSONObject, jxVar));
            }
            hpVar.hp(arrayList);
        }
        return hpVar;
    }

    public static double hp(Object obj, JSONObject jSONObject) {
        if (obj instanceof String) {
            return com.byazt.xa.jx.hp(com.byazt.ss.l.hp((String) obj, jSONObject), 0.0d);
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Long) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Integer) {
            return ((Double) obj).doubleValue();
        }
        return 0.0d;
    }
}

package com.byazt.am;

import android.text.TextUtils;
import com.byazt.jz.sz;
import com.umeng.analytics.pro.cl;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 214, 54})
/* loaded from: classes2.dex */
public class a {
    public static volatile a hp;

    /* renamed from: a, reason: collision with root package name */
    public boolean f18036a;

    /* renamed from: j, reason: collision with root package name */
    public int f18037j;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18038l;
    public final Set<String> jx = new CopyOnWriteArraySet();

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, Long> f18039w = new ConcurrentHashMap();

    private a() {
    }

    public static a hp() {
        if (hp == null) {
            synchronized (a.class) {
                try {
                    if (hp == null) {
                        hp = new a();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void jx() {
        if (this.f18036a) {
            return;
        }
        this.f18036a = true;
        sz.l().u();
    }

    public boolean l() {
        jx();
        return this.f18038l;
    }

    public void hp(String str, int i2, int i3, String str2) {
        String str3;
        if (!l() || TextUtils.isEmpty(str) || i2 == 0) {
            return;
        }
        String strValueOf = String.valueOf(i2);
        if (i3 != 0) {
            str3 = (strValueOf + "_") + String.valueOf(i3);
        } else {
            str3 = strValueOf;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(str2, "req_exemption_error_code");
        if (this.jx.contains(strValueOf) || this.jx.contains(str3)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            jxVarHp.put(str, jCurrentTimeMillis);
            this.f18039w.put(str, Long.valueOf(jCurrentTimeMillis));
        }
    }

    public void hp(String str) {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            jSONObject = null;
        } else {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        hp(jSONObject);
    }

    public void hp(JSONObject jSONObject) {
        this.jx.clear();
        if (jSONObject != null) {
            this.f18038l = jSONObject.optBoolean(cl.f49062q, false);
            int iOptInt = jSONObject.optInt("duration", 0) * 1000;
            this.f18037j = iOptInt;
            if (iOptInt <= 0) {
                this.f18038l = false;
                return;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("error_codes");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                    if (!TextUtils.isEmpty(strOptString)) {
                        this.jx.add(strOptString);
                    }
                }
            }
            if (this.jx.isEmpty()) {
                this.f18038l = false;
                return;
            }
            return;
        }
        this.f18038l = false;
    }

    public boolean hp(String str, String str2) {
        if (!l() || TextUtils.isEmpty(str)) {
            return false;
        }
        Long lValueOf = this.f18039w.get(str);
        if (lValueOf == null) {
            long j2 = com.byazt.ry.j.hp(str2, "req_exemption_error_code").getLong(str, -1L);
            lValueOf = Long.valueOf(j2);
            if (j2 != -1) {
                this.f18039w.put(str, lValueOf);
            } else {
                lValueOf = null;
            }
        }
        if (lValueOf == null) {
            return true;
        }
        if (System.currentTimeMillis() - lValueOf.longValue() <= this.f18037j) {
            return false;
        }
        this.f18039w.remove(str);
        com.byazt.ry.j.hp(str2, "req_exemption_error_code").remove(str);
        return true;
    }
}

package com.byazt.jz;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, 166})
/* loaded from: classes.dex */
public class ns {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public Map<String, Long> f21925j = new HashMap();
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21926l;

    private ns(String str, long j2) {
        this.hp = str;
        this.f21926l = j2;
        this.jx = j2;
    }

    public static ns hp(String str) {
        return new ns(str, SystemClock.elapsedRealtime());
    }

    public long l(String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = jElapsedRealtime - this.jx;
        this.jx = jElapsedRealtime;
        this.f21925j.put(str, Long.valueOf(j2));
        return j2;
    }

    public long hp() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f21926l;
        this.f21925j.put(this.hp, Long.valueOf(jElapsedRealtime));
        return jElapsedRealtime;
    }

    public void hp(String str, long j2) {
        this.f21925j.put(str, Long.valueOf(j2));
    }

    public void hp(JSONObject jSONObject, long j2) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        for (Map.Entry<String, Long> entry : this.f21925j.entrySet()) {
            String key = entry.getKey();
            Long value = entry.getValue();
            if (!TextUtils.isEmpty(key) && (value.longValue() > j2 || key.equals("armor_load_cost"))) {
                try {
                    jSONObject.put(key, value);
                } catch (JSONException unused) {
                }
            }
        }
    }

    public long l() {
        return SystemClock.elapsedRealtime() - this.f21926l;
    }

    public JSONObject hp(long j2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        hp(jSONObject, j2);
        return jSONObject;
    }
}

package com.byazt.ymw;

import android.text.TextUtils;
import com.umeng.analytics.pro.bv;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 68, 157})
/* loaded from: classes3.dex */
public class b {

    /* renamed from: l, reason: collision with root package name */
    public static volatile b f28073l;
    public hp hp;

    /* renamed from: w, reason: collision with root package name */
    public Map<Integer, Map<String, Object>> f28075w;
    public Map<Integer, JSONObject> jx = new ConcurrentHashMap(1);

    /* renamed from: j, reason: collision with root package name */
    public boolean f28074j = false;

    public interface hp {
        void hp(int i2, Map<String, Object> map);
    }

    public static b hp() {
        if (f28073l == null) {
            synchronized (b.class) {
                try {
                    if (f28073l == null) {
                        f28073l = new b();
                    }
                } finally {
                }
            }
        }
        return f28073l;
    }

    public void jx(int i2) {
        if (this.f28074j && i2 != 0) {
            try {
                this.f28075w.remove(Integer.valueOf(i2));
            } catch (Throwable unused) {
            }
        }
    }

    public void l(int i2) {
        if (i2 == 0) {
            return;
        }
        try {
            Map<Integer, JSONObject> map = this.jx;
            if (map != null) {
                if (map.size() > 20) {
                    this.jx.clear();
                } else {
                    this.jx.remove(Integer.valueOf(i2));
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(int i2, int i3) throws JSONException {
        if (i2 == 0) {
            return;
        }
        try {
            JSONObject jSONObject = this.jx.get(Integer.valueOf(i2));
            if (jSONObject == null) {
                jSONObject = new JSONObject();
                this.jx.put(Integer.valueOf(i2), jSONObject);
            }
            jSONObject.put("click_calculation_type", i3);
            jSONObject.put("click_calculation_time", System.currentTimeMillis());
        } catch (Exception unused) {
        }
    }

    public JSONObject hp(int i2) {
        Map<Integer, JSONObject> map;
        if (i2 == 0 || (map = this.jx) == null) {
            return null;
        }
        return map.get(Integer.valueOf(i2));
    }

    public void hp(boolean z2) {
        this.f28074j = z2;
        if (z2 && this.f28075w == null) {
            this.f28075w = new ConcurrentHashMap();
        }
    }

    public void hp(int i2, int i3, float[] fArr) {
        if (!this.f28074j || i2 == 0 || this.hp == null) {
            return;
        }
        try {
            Map<String, Object> map = this.f28075w.get(Integer.valueOf(i2));
            if (map == null) {
                return;
            }
            HashMap map2 = new HashMap(map);
            map2.put("hashcode", Integer.valueOf(i2));
            map2.put("type", Integer.valueOf(i3));
            if (i3 == 1) {
                map2.put("x", Float.valueOf(fArr[0]));
                map2.put("y", Float.valueOf(fArr[1]));
                map2.put(bv.aD, Float.valueOf(fArr[2]));
            } else {
                map2.put("x", Double.valueOf(Math.toDegrees(fArr[0])));
                map2.put("y", Double.valueOf(Math.toDegrees(fArr[1])));
                map2.put(bv.aD, Double.valueOf(Math.toDegrees(fArr[2])));
            }
            this.hp.hp(i2, map2);
        } catch (Exception unused) {
        }
    }

    public void hp(int i2, String str, Object obj) {
        if (!this.f28074j || i2 == 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Map<String, Object> concurrentHashMap = this.f28075w.get(Integer.valueOf(i2));
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap<>();
                this.f28075w.put(Integer.valueOf(i2), concurrentHashMap);
            }
            concurrentHashMap.put(str, obj);
        } catch (Throwable unused) {
        }
    }

    public void hp(hp hpVar) {
        this.hp = hpVar;
    }
}

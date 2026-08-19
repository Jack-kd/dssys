package com.anythink.core.common.a;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    final String f2234a = g.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    Map<String, Integer> f2235b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    Map<String, Integer> f2236c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    int f2237d = 0;

    /* renamed from: e, reason: collision with root package name */
    int f2238e = 0;

    public final synchronized void a(f fVar) {
        if (fVar != null) {
            try {
                String strB = fVar.b();
                int iD = fVar.d();
                if (iD == 4) {
                    a(strB);
                } else if (iD == 6) {
                    b(strB);
                }
            } finally {
            }
        }
    }

    public final synchronized void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f2238e++;
            this.f2236c.put(str, Integer.valueOf(a(this.f2236c, str) + 1));
        }
    }

    public final synchronized void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f2237d++;
            this.f2235b.put(str, Integer.valueOf(a(this.f2235b, str) + 1));
        }
    }

    public final synchronized void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                Iterator<Map.Entry<String, Integer>> it = this.f2235b.entrySet().iterator();
                while (it.hasNext()) {
                    String key = it.next().getKey();
                    int iA = a(this.f2235b, key);
                    int iA2 = a(this.f2236c, key);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("dsp_id", key);
                    jSONObject2.put("show_c", iA);
                    jSONObject2.put("click_c", iA2);
                    jSONArray.put(jSONObject2);
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("ad_fc", jSONArray);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static int a(Map<String, Integer> map, String str) {
        Integer num;
        if (map == null || (num = map.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}

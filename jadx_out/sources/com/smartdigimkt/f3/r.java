package com.smartdigimkt.f3;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f40251a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f40252b = new ConcurrentHashMap();

    public final synchronized void a(q qVar) {
        try {
            qVar.toString();
            String str = TextUtils.isEmpty(qVar.f40247b) ? "" : qVar.f40247b;
            int i2 = qVar.f40249d;
            if (i2 == 4) {
                b(str);
            } else if (i2 == 6) {
                a(str);
            }
        } finally {
        }
    }

    public final synchronized void b(String str) {
        Integer num;
        try {
            if (!TextUtils.isEmpty(str)) {
                ConcurrentHashMap concurrentHashMap = this.f40251a;
                this.f40251a.put(str, Integer.valueOf(((concurrentHashMap == null || (num = (Integer) concurrentHashMap.get(str)) == null) ? 0 : num.intValue()) + 1));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(String str) {
        Integer num;
        try {
            if (!TextUtils.isEmpty(str)) {
                ConcurrentHashMap concurrentHashMap = this.f40252b;
                this.f40252b.put(str, Integer.valueOf(((concurrentHashMap == null || (num = (Integer) concurrentHashMap.get(str)) == null) ? 0 : num.intValue()) + 1));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(JSONObject jSONObject) {
        Integer num;
        Integer num2;
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.f40251a.entrySet().iterator();
            while (it.hasNext()) {
                String str = (String) ((Map.Entry) it.next()).getKey();
                ConcurrentHashMap concurrentHashMap = this.f40251a;
                int iIntValue = 0;
                int iIntValue2 = (concurrentHashMap == null || (num2 = (Integer) concurrentHashMap.get(str)) == null) ? 0 : num2.intValue();
                ConcurrentHashMap concurrentHashMap2 = this.f40252b;
                if (concurrentHashMap2 != null && (num = (Integer) concurrentHashMap2.get(str)) != null) {
                    iIntValue = num.intValue();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("dsp_id", str);
                jSONObject2.put("show_c", iIntValue2);
                jSONObject2.put("click_c", iIntValue);
                jSONArray.put(jSONObject2);
            }
            if (jSONArray.length() > 0) {
                jSONObject.put("ad_fc", jSONArray);
            }
        } catch (Throwable unused) {
        }
    }
}

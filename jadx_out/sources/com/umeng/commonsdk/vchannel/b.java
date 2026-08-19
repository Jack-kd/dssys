package com.umeng.commonsdk.vchannel;

import android.content.Context;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private String f50528b;

    /* renamed from: a, reason: collision with root package name */
    private String f50527a = "_$unknown";

    /* renamed from: c, reason: collision with root package name */
    private long f50529c = 0;

    /* renamed from: d, reason: collision with root package name */
    private long f50530d = 0;

    /* renamed from: e, reason: collision with root package name */
    private String f50531e = a.f50526j;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, Object> f50532f = null;

    public b(Context context) {
        this.f50528b = UMGlobalContext.getInstance(context).getProcessName(context);
    }

    public String a() {
        return this.f50527a;
    }

    public long b() {
        return this.f50529c;
    }

    public Map<String, Object> c() {
        return this.f50532f;
    }

    public JSONObject d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", this.f50527a);
            jSONObject.put("pn", this.f50528b);
            jSONObject.put("ds", this.f50530d);
            jSONObject.put("ts", this.f50529c);
            Map<String, Object> map = this.f50532f;
            if (map != null && map.size() > 0) {
                for (String str : this.f50532f.keySet()) {
                    jSONObject.put(str, this.f50532f.get(str));
                }
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(this.f50531e, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("ekv", jSONArray2);
            return jSONObject3;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append("id:" + this.f50527a + ",");
        sb.append("pn:" + this.f50528b + ",");
        sb.append("ts:" + this.f50529c + ",");
        Map<String, Object> map = this.f50532f;
        if (map != null && map.size() > 0) {
            for (String str : this.f50532f.keySet()) {
                Object obj = this.f50532f.get(str);
                sb.append(obj == null ? str + ": null," : str + ": " + obj.toString() + ",");
            }
        }
        sb.append("ds:" + this.f50530d + "]");
        return sb.toString();
    }

    public void a(String str) {
        this.f50527a = str;
    }

    public void a(long j2) {
        this.f50529c = j2;
    }

    public void a(Map<String, Object> map) {
        this.f50532f = map;
    }
}

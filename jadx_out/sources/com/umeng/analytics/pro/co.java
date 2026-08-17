package com.umeng.analytics.pro;

import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class co implements cu {

    /* renamed from: a, reason: collision with root package name */
    private String f49116a;

    /* renamed from: b, reason: collision with root package name */
    private ArrayList<cp> f49117b;

    public co(String str, ArrayList<cp> arrayList) {
        this.f49116a = null;
        new ArrayList();
        this.f49116a = str;
        this.f49117b = arrayList;
    }

    public String a() {
        return this.f49116a;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [int, org.json.JSONObject] */
    @Override // com.umeng.analytics.pro.cu
    public JSONObject b() {
        try {
            ?? size = this.f49117b.size();
            try {
                if (size == 0) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("actionName", this.f49116a);
                    jSONObject.put("delay", 0L);
                    return jSONObject;
                }
                for (int i2 = 0; i2 < size; i2++) {
                    if (this.f49117b.get(i2).b()) {
                        return null;
                    }
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("actionName", this.f49116a);
                jSONObject2.put("delay", 0L);
                return jSONObject2;
            } catch (Throwable unused) {
                return size;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }
}

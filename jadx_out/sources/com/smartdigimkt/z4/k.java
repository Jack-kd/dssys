package com.smartdigimkt.z4;

import java.util.ArrayList;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public h f45483a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f45484b;

    public static k a(JSONObject jSONObject) throws JSONException {
        h hVar = null;
        if (jSONObject == null) {
            return null;
        }
        k kVar = new k();
        if (jSONObject.has("interaction_global")) {
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject("interaction_global");
                if (jSONObject2 != null) {
                    hVar = new h();
                    hVar.f45466a = jSONObject2.optInt("sw", 2);
                    hVar.f45467b = jSONObject2.optLong("triggers_time", 20L);
                    hVar.f45468c = jSONObject2.optInt("daily_trigger_times", 200);
                }
                kVar.f45483a = hVar;
                Objects.toString(hVar);
            } catch (JSONException unused) {
            }
        }
        if (jSONObject.has("interaction_list")) {
            try {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("interaction_list");
                kVar.f45484b = new ArrayList();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        g gVar = new g();
                        gVar.f45462a = jSONObjectOptJSONObject.optInt("interaction_type", 1);
                        gVar.f45463b = jSONObjectOptJSONObject.optInt("trigger_rate", 50);
                        gVar.f45464c = jSONObjectOptJSONObject.optLong("triggers_time", 30L);
                        gVar.f45465d = jSONObjectOptJSONObject.optInt("daily_trigger_times", 100);
                        kVar.f45484b.add(gVar);
                        Objects.toString(gVar);
                    }
                }
                kVar.f45484b.size();
            } catch (Exception unused2) {
            }
        }
        kVar.toString();
        return kVar;
    }

    public final String toString() {
        return "InteractionStrategyConfig{cross=" + this.f45483a + ", types=" + this.f45484b + '}';
    }
}

package com.byazt.psp;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public enum l {
    INSTANCE;


    /* renamed from: l, reason: collision with root package name */
    public Map<String, jx> f24526l = new HashMap();

    l() {
    }

    public jx hp(String str) {
        return this.f24526l.get(str);
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                String next = itKeys.next();
                jSONObject2.putOpt(next, jSONObject.opt(next));
                jx jxVar = new jx(jSONObject2);
                this.f24526l.put(jxVar.jx(), jxVar);
            } catch (JSONException unused) {
            }
        }
    }
}

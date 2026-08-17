package com.anythink.core.common.h;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class o extends ax {

    /* renamed from: a, reason: collision with root package name */
    public int f4349a;

    /* renamed from: b, reason: collision with root package name */
    public bx f4350b;

    /* renamed from: c, reason: collision with root package name */
    public long f4351c;

    @Override // com.anythink.core.common.h.ax
    public final JSONObject a() throws JSONException {
        JSONObject jSONObjectO = this.f4350b.O(this.f4349a);
        if (jSONObjectO != null) {
            try {
                jSONObjectO.put(com.anythink.core.common.m.f.br, this.f4351c);
                return jSONObjectO;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return jSONObjectO;
    }
}

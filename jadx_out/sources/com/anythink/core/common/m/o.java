package com.anythink.core.common.m;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.h.az;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class o extends u {

    /* renamed from: n, reason: collision with root package name */
    private static final String f5830n = "o";

    /* renamed from: a, reason: collision with root package name */
    JSONObject f5831a;

    public o(Context context, az azVar) {
        super(context, azVar);
        this.f5831a = azVar.a();
    }

    @Override // com.anythink.core.common.m.u, com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.m.u, com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.i.a();
        return com.anythink.core.common.i.g();
    }

    @Override // com.anythink.core.common.m.u, com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() throws JSONException {
        JSONObject jSONObjectI = super.i();
        try {
            jSONObjectI.put(f.bi, this.f5831a);
        } catch (JSONException unused) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.u, com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) throws JSONException {
        try {
            if (!(obj instanceof JSONObject)) {
                return null;
            }
            JSONObject jSONObject = (JSONObject) obj;
            if (((u) this).f5875c != null) {
                jSONObject.put(u.f5865b, new JSONObject(((u) this).f5875c));
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }
}

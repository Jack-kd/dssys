package com.smartdigimkt.f;

import android.text.TextUtils;
import com.smartdigimkt.sdk.api.AdError;
import java.util.ArrayList;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class o implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f40152a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f40153b;

    public o(r rVar, long j2) {
        this.f40153b = rVar;
        this.f40152a = j2;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
        this.f40153b.f40169e = true;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        Objects.toString(obj);
        try {
            this.f40153b.f40169e = false;
            if (!(obj instanceof String) || TextUtils.isEmpty((String) obj)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(String.valueOf(obj));
            if (jSONObject.getInt("code") == 200) {
                String.valueOf(com.anythink.core.common.g.c.f3507a);
                com.smartdigimkt.y3.h.a("1", "", "", "1", "", this.f40152a);
                JSONArray jSONArrayOptJSONArray = new JSONObject(com.smartdigimkt.c5.d.d(jSONObject.getString("data"))).optJSONArray("pg_items");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                    return;
                }
                this.f40153b.f40167c = jSONArrayOptJSONArray.length();
                for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                    this.f40153b.a(jSONArrayOptJSONArray.getJSONObject(i3));
                }
                return;
            }
            String string = jSONObject.toString();
            String.valueOf(com.anythink.core.common.g.c.f3507a);
            com.smartdigimkt.y3.h.a("1", "", "", "2", string, this.f40152a);
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        this.f40153b.f40169e = false;
        String errorInfo = adError.getErrorInfo();
        String.valueOf(com.anythink.core.common.g.c.f3507a);
        com.smartdigimkt.y3.h.a("1", "", "", "2", errorInfo, this.f40152a);
        s sVar = this.f40153b.f40165a;
        if (sVar != null) {
            u.a(sVar.f40170a, new ArrayList());
        }
    }
}

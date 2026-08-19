package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class b extends d {

    /* renamed from: a, reason: collision with root package name */
    public final int f43055a;

    /* renamed from: b, reason: collision with root package name */
    public final List f43056b;

    public b(int i2, ArrayList arrayList) {
        this.f43055a = i2;
        this.f43056b = arrayList;
    }

    @Override // com.smartdigimkt.r4.d
    public final JSONObject b() {
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(4);
        try {
            jSONObjectA.put("app_id", SDKContext.getInstance().a());
            JSONArray jSONArray = new JSONArray();
            List list = this.f43056b;
            if (list != null && !list.isEmpty()) {
                for (String str : this.f43056b) {
                    if (!TextUtils.isEmpty(str)) {
                        jSONArray.put(new JSONObject(str));
                    }
                }
            }
            jSONObjectA.put("data", jSONArray);
        } catch (Throwable unused) {
        }
        return jSONObjectA;
    }

    @Override // com.smartdigimkt.r4.d
    public final int c() {
        return 4;
    }

    @Override // com.smartdigimkt.r4.d
    public final JSONObject g() {
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(4, (List) null);
        try {
            jSONObjectA.put(com.anythink.core.common.m.f.f5769S, this.f43055a);
        } catch (Throwable unused) {
        }
        return jSONObjectA;
    }

    @Override // com.smartdigimkt.r4.d
    public final byte[] h() {
        return d.a(i());
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        String str = aVarA != null ? aVarA.f39384o : "";
        return TextUtils.isEmpty(str) ? "https://da.statisticslinks.com/v1/open/da" : str;
    }
}

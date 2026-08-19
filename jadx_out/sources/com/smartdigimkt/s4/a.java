package com.smartdigimkt.s4;

import android.text.TextUtils;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.y3.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class a extends d {

    /* renamed from: c, reason: collision with root package name */
    public final List f43135c;

    /* renamed from: d, reason: collision with root package name */
    public final int f43136d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f43137e;

    public a(ArrayList arrayList) {
        this.f43135c = arrayList;
        this.f43136d = arrayList.size();
    }

    @Override // com.smartdigimkt.s4.d
    public final int a() {
        return 2;
    }

    @Override // com.smartdigimkt.s4.d
    public final byte[] b() {
        return d.a(c());
    }

    public final String c() throws JSONException {
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(4);
        JSONObject jSONObjectA2 = com.smartdigimkt.l4.a.a(4, (List) null);
        try {
            jSONObjectA.put("app_id", SDKContext.getInstance().a());
            JSONArray jSONArray = new JSONArray();
            List list = this.f43135c;
            if (list != null && list.size() > 0) {
                for (String str : this.f43135c) {
                    if (!TextUtils.isEmpty(str)) {
                        jSONArray.put(new JSONObject(str));
                    }
                }
            }
            jSONObjectA.put("data", jSONArray);
        } catch (Exception unused) {
        }
        try {
            jSONObjectA2.put(com.anythink.core.common.m.f.f5769S, this.f43140a);
            jSONObjectA2.put(com.anythink.core.common.m.f.f5771U, this.f43141b);
        } catch (Exception unused2) {
        }
        HashMap map = new HashMap();
        String strB = com.smartdigimkt.c5.d.b(jSONObjectA.toString());
        String strB2 = com.smartdigimkt.c5.d.b(jSONObjectA2.toString());
        map.put(com.anythink.core.common.m.f.f5766P, "1.0");
        map.put("p", strB);
        map.put(com.anythink.core.common.m.f.f5774X, strB2);
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.addAll(map.keySet());
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            String str2 = (String) obj;
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str2);
            sb.append("=");
            sb.append(map.get(str2));
        }
        map.put(com.anythink.core.common.m.f.f5775Y, i.a(SDKContext.getInstance().b() + sb.toString()));
        return new JSONObject(map).toString();
    }

    @Override // com.smartdigimkt.s4.d
    public final void a(int i2, String str, String str2) throws JSONException {
        if (this.f43137e) {
            s.a().a(3, "", "", c(), com.smartdigimkt.q3.d.a(1001));
        }
    }
}

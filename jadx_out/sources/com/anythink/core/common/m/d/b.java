package com.anythink.core.common.m.d;

import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.l;
import com.anythink.core.common.v.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class b extends f {

    /* renamed from: a, reason: collision with root package name */
    List<String> f5711a;

    /* renamed from: b, reason: collision with root package name */
    int f5712b;

    /* renamed from: c, reason: collision with root package name */
    boolean f5713c;

    /* renamed from: n, reason: collision with root package name */
    private final String f5714n = b.class.getSimpleName();

    public b(List<String> list) {
        this.f5711a = list;
        this.f5712b = list.size();
    }

    private int j() {
        return this.f5712b;
    }

    private String k() throws JSONException {
        JSONObject jSONObjectH = super.h();
        JSONObject jSONObjectI = super.i();
        if (jSONObjectH != null) {
            try {
                jSONObjectH.put("app_id", s.b().p());
                jSONObjectH.put("nw_ver", l.h());
                JSONArray jSONArray = new JSONArray();
                List<String> list = this.f5711a;
                if (list != null && list.size() > 0) {
                    for (String str : this.f5711a) {
                        if (!TextUtils.isEmpty(str)) {
                            jSONArray.put(new JSONObject(str));
                        }
                    }
                }
                jSONObjectH.put("data", jSONArray);
            } catch (Exception unused) {
            }
        }
        if (jSONObjectI != null) {
            try {
                jSONObjectI.put(com.anythink.core.common.m.f.f5769S, this.f5732l);
                jSONObjectI.put(com.anythink.core.common.m.f.f5771U, this.f5733m);
            } catch (Exception unused2) {
            }
        }
        HashMap map = new HashMap();
        String strA = j.a(jSONObjectH.toString());
        String strA2 = j.a(jSONObjectI.toString());
        map.put(com.anythink.core.common.m.f.f5766P, "1.0");
        map.put("p", strA);
        map.put(com.anythink.core.common.m.f.f5774X, strA2);
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
        map.put(com.anythink.core.common.m.f.f5775Y, n.c(s.b().q() + sb.toString()));
        return new JSONObject(map).toString();
    }

    @Override // com.anythink.core.common.m.d.f
    public final int a() {
        return 2;
    }

    @Override // com.anythink.core.common.m.d.f
    public final int b() {
        return 3;
    }

    @Override // com.anythink.core.common.m.d.f
    public final byte[] c() {
        return f.a(k());
    }

    @Override // com.anythink.core.common.m.d.f
    public final boolean d() {
        return false;
    }

    @Override // com.anythink.core.common.m.d.f
    public final void e() {
    }

    @Override // com.anythink.core.common.m.d.f
    public final int f() {
        return 4;
    }

    public final void g() {
        this.f5713c = true;
    }
}

package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.anythink.core.common.f.p;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class a extends d {

    /* renamed from: a, reason: collision with root package name */
    public final String f43051a;

    /* renamed from: b, reason: collision with root package name */
    public final String f43052b;

    /* renamed from: c, reason: collision with root package name */
    public final String f43053c;

    /* renamed from: d, reason: collision with root package name */
    public final String f43054d;

    public a(com.smartdigimkt.l3.a aVar) {
        this.f43051a = aVar.f41635i;
        this.f43052b = aVar.f41632f;
        this.f43053c = aVar.f41627a;
        this.f43054d = aVar.f41641o;
    }

    @Override // com.smartdigimkt.r4.d
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(34);
        try {
            jSONObjectA.put("app_id", SDKContext.getInstance().a());
            jSONObjectA.put(com.anythink.core.common.m.f.bn, this.f43053c);
            jSONObjectA.put("session_id", SDKContext.getInstance().b(this.f43053c));
            String strG = SDKContext.getInstance().g();
            if (!TextUtils.isEmpty(strG)) {
                jSONObjectA.put("sy_id", strG);
            }
            jSONObjectA.put("deny", com.smartdigimkt.c5.h.q(SDKContext.getInstance().d()));
        } catch (Exception unused) {
        }
        return jSONObjectA;
    }

    @Override // com.smartdigimkt.r4.d
    public final int c() {
        return 34;
    }

    @Override // com.smartdigimkt.r4.d
    public final HttpReqEntity f() {
        return HttpReqEntity.create("request");
    }

    @Override // com.smartdigimkt.r4.d
    public final String i() {
        HashMap map = new HashMap();
        String strB = com.smartdigimkt.c5.d.b(b().toString());
        String strB2 = com.smartdigimkt.c5.d.b(com.smartdigimkt.l4.a.a(34, (List) null).toString());
        map.put("p", strB);
        map.put(com.anythink.core.common.m.f.f5774X, strB2);
        map.put("request_id", this.f43052b);
        map.put(p.a.f3376c, this.f43051a);
        return new JSONObject(map).toString();
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        com.smartdigimkt.n3.a aVar;
        if (!TextUtils.isEmpty(this.f43054d)) {
            return this.f43054d;
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        String str = "";
        if (aVarA != null && (aVar = aVarA.f39344F) != null) {
            str = aVar.f42160a;
        }
        return TextUtils.isEmpty(str) ? "https://adx-bj.statisticslinks.com/request" : str;
    }
}

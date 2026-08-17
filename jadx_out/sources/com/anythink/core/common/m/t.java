package com.anythink.core.common.m;

import android.content.Context;
import android.os.SystemClock;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.bo;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class t extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f5859a;

    /* renamed from: b, reason: collision with root package name */
    private final bo f5860b;

    /* renamed from: c, reason: collision with root package name */
    private String f5861c;

    /* renamed from: l, reason: collision with root package name */
    private long f5862l;

    /* renamed from: m, reason: collision with root package name */
    private long f5863m;

    public t(Context context, bo boVar) {
        this.f5859a = context;
        this.f5860b = boVar;
        this.f5861c = com.anythink.core.common.d.s.b().g(boVar.d());
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.i.a();
        return com.anythink.core.common.g.c.a().a(com.anythink.core.common.i.h() ? i.e.f2614Q : i.e.f2641z);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Accept-Encoding", "gzip");
        map.put(AbstractC1114b.f5589g, "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        try {
            return k().getBytes("utf-8");
        } catch (Exception unused) {
            return k().getBytes();
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        bo boVar = this.f5860b;
        return boVar != null ? boVar.b() : "";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f5859a;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        bo boVar = this.f5860b;
        return boVar != null ? boVar.c() : "";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() {
        if (this.f5860b == null) {
            return super.i();
        }
        JSONObject jSONObjectI = super.i();
        try {
            jSONObjectI.put("app_id", this.f5860b.b());
            jSONObjectI.put(f.bn, this.f5860b.d());
            jSONObjectI.put("session_id", this.f5861c);
            jSONObjectI.put(f.bp, this.f5860b.m());
        } catch (Throwable unused) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean m() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, s sVar) {
        this.f5862l = System.currentTimeMillis();
        this.f5863m = SystemClock.elapsedRealtime();
        super.a(i2, sVar);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        bo boVar = this.f5860b;
        String strD = boVar != null ? boVar.d() : "";
        bo boVar2 = this.f5860b;
        com.anythink.core.common.u.f.a("pl_wf", adError.getPlatformCode(), adError.getPlatformMSG(), b(), strD, "", "", boVar2 != null ? boVar2.j() : null);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        bo boVar = this.f5860b;
        String strD = boVar != null ? boVar.d() : "";
        bo boVar2 = this.f5860b;
        com.anythink.core.common.u.f.a("pl_wf", strD, this.f5862l, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.f5863m, boVar2 != null ? boVar2.j() : null);
        return obj;
    }
}

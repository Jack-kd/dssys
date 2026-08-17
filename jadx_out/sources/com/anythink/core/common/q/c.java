package com.anythink.core.common.q;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.n;
import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.v.j;
import com.anythink.core.e.m;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c extends AbstractC1114b {

    /* renamed from: b, reason: collision with root package name */
    private final Context f7222b;

    /* renamed from: c, reason: collision with root package name */
    private final String f7223c;

    /* renamed from: n, reason: collision with root package name */
    private final String f7226n;

    /* renamed from: o, reason: collision with root package name */
    private final n f7227o;

    /* renamed from: p, reason: collision with root package name */
    private final m f7228p;

    /* renamed from: q, reason: collision with root package name */
    private final String f7229q;

    /* renamed from: r, reason: collision with root package name */
    private final String f7230r;

    /* renamed from: a, reason: collision with root package name */
    boolean f7221a = false;

    /* renamed from: l, reason: collision with root package name */
    private final String f7224l = s.b().p();

    /* renamed from: m, reason: collision with root package name */
    private final String f7225m = s.b().q();

    public c(Context context, String str, String str2, n nVar, m mVar, String str3, String str4) {
        this.f7222b = context;
        this.f7223c = str;
        this.f7226n = str2;
        this.f7227o = nVar;
        this.f7228p = mVar;
        this.f7229q = str3;
        this.f7230r = str4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        com.anythink.core.common.v.b.c.a().c(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cx, new Runnable() { // from class: com.anythink.core.common.q.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f7260b.u();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        a(0, this.f5593i);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        return this.f7223c;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Content-Encoding", "gzip");
        map.put(AbstractC1114b.f5589g, "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        return AbstractC1114b.a(k());
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return this.f7224l;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f7222b;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f7225m;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() throws JSONException {
        JSONObject jSONObjectI = super.i();
        JSONObject jSONObjectJ = super.j();
        try {
            jSONObjectI.put("app_id", this.f7224l);
            Iterator<String> itKeys = jSONObjectJ.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectI.put(next, jSONObjectJ.opt(next));
            }
            Map<String, Object> mapM = s.b().m();
            if (mapM != null && !mapM.isEmpty()) {
                JSONObject jSONObject = new JSONObject();
                for (String str : mapM.keySet()) {
                    Object obj = mapM.get(str);
                    if (obj != null) {
                        jSONObject.put(str, obj.toString());
                    }
                }
                jSONObjectI.put("custom", jSONObject);
            }
        } catch (Throwable unused) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() throws JSONException, NoSuchAlgorithmException {
        JSONObject jSONObject = new JSONObject();
        String strD = j.d(i().toString());
        String strC = com.anythink.core.common.v.n.c(this.f7225m + "api_ver=" + q() + "&common=" + strD + "&data=" + this.f7226n);
        try {
            jSONObject.put(com.anythink.core.common.m.f.f5776Z, strD);
            jSONObject.put("data", this.f7226n);
            jSONObject.put(com.anythink.core.common.m.f.f5766P, q());
            jSONObject.put(com.anythink.core.common.m.f.f5775Y, strC);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        try {
            if (!ErrorCode.httpStatuException.equals(adError.getCode())) {
                if (this.f7221a) {
                    com.anythink.core.common.u.f.a("1004746", this.f7229q, this.f7230r, this.f7227o, this.f7228p, adError.getPlatformCode(), adError.getPlatformMSG());
                    return;
                } else {
                    this.f7221a = true;
                    com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cw, new Runnable() { // from class: com.anythink.core.common.q.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f7259b.t();
                        }
                    }), 5000L);
                    return;
                }
            }
            com.anythink.core.common.u.f.a("1004746", this.f7229q, this.f7230r, this.f7227o, this.f7228p, adError.getPlatformCode(), adError.getPlatformMSG());
        } catch (Throwable unused) {
        }
    }
}

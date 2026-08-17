package com.anythink.core.common.q;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.n;
import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.v.j;
import com.anythink.core.e.m;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d extends AbstractC1114b {

    /* renamed from: b, reason: collision with root package name */
    private Context f7232b;

    /* renamed from: c, reason: collision with root package name */
    private int f7233c;

    /* renamed from: n, reason: collision with root package name */
    private String f7236n;

    /* renamed from: o, reason: collision with root package name */
    private n f7237o;

    /* renamed from: p, reason: collision with root package name */
    private m f7238p;

    /* renamed from: q, reason: collision with root package name */
    private String f7239q;

    /* renamed from: r, reason: collision with root package name */
    private String f7240r;

    /* renamed from: a, reason: collision with root package name */
    boolean f7231a = false;

    /* renamed from: l, reason: collision with root package name */
    private String f7234l = s.b().p();

    /* renamed from: m, reason: collision with root package name */
    private String f7235m = s.b().q();

    public d(Context context, int i2, String str, n nVar, m mVar, String str2, String str3) {
        this.f7232b = context;
        this.f7233c = i2;
        this.f7237o = nVar;
        this.f7238p = mVar;
        this.f7239q = str2;
        this.f7240r = str3;
        this.f7236n = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        com.anythink.core.common.v.b.c.a().c(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cB, new Runnable() { // from class: com.anythink.core.common.q.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f7261b.u();
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
        com.anythink.core.common.i.a();
        return com.anythink.core.common.i.c();
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
        return this.f7234l;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f7232b;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f7235m;
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
            jSONObjectI.put("app_id", this.f7234l);
            Iterator<String> itKeys = jSONObjectJ.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectI.put(next, jSONObjectJ.opt(next));
            }
            Map<String, Object> mapM = s.b().m();
            if (mapM != null && mapM.size() > 0) {
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
        String strA = j.a(i().toString());
        String strC = com.anythink.core.common.v.n.c(this.f7235m + "api_ver=2.0&common=" + strA + "&data=" + this.f7236n + "&ss_a=" + this.f7233c);
        try {
            jSONObject.put(com.anythink.core.common.m.f.f5776Z, strA);
            jSONObject.put("ss_a", this.f7233c);
            jSONObject.put("data", this.f7236n);
            jSONObject.put(com.anythink.core.common.m.f.f5766P, "2.0");
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
    public final com.anythink.core.common.m.b.d o() {
        return com.anythink.core.common.m.b.d.a("s2s_reward");
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String q() {
        return "2.0";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final List<String> r() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(i.ab.f2544a);
        return arrayList;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        try {
            if (!ErrorCode.httpStatuException.equals(adError.getCode())) {
                if (this.f7231a) {
                    com.anythink.core.common.u.f.a("1004658", this.f7239q, this.f7240r, this.f7237o, this.f7238p, adError.getPlatformCode(), adError.getPlatformMSG());
                    return;
                } else {
                    this.f7231a = true;
                    com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cA, new Runnable() { // from class: com.anythink.core.common.q.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f7262b.t();
                        }
                    }), 5000L);
                    return;
                }
            }
            com.anythink.core.common.u.f.a("1004658", this.f7239q, this.f7240r, this.f7237o, this.f7238p, adError.getPlatformCode(), adError.getPlatformMSG());
        } catch (Throwable unused) {
        }
    }
}

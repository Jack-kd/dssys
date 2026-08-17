package com.anythink.core.common.m;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.i;
import com.anythink.core.e.b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class g extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5803a = "custom";

    /* renamed from: b, reason: collision with root package name */
    private static final String f5804b = "g";

    /* renamed from: c, reason: collision with root package name */
    private String f5805c;

    /* renamed from: l, reason: collision with root package name */
    private String f5806l;

    /* renamed from: m, reason: collision with root package name */
    private String f5807m;

    /* renamed from: n, reason: collision with root package name */
    private Context f5808n;

    /* renamed from: o, reason: collision with root package name */
    private long f5809o;

    /* renamed from: p, reason: collision with root package name */
    private long f5810p;

    /* renamed from: q, reason: collision with root package name */
    private Map<String, Object> f5811q;

    /* renamed from: r, reason: collision with root package name */
    private Map<String, String> f5812r;

    /* renamed from: s, reason: collision with root package name */
    private String f5813s;

    /* renamed from: t, reason: collision with root package name */
    private String f5814t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f5815u;

    /* renamed from: v, reason: collision with root package name */
    private String f5816v;

    /* renamed from: w, reason: collision with root package name */
    private String f5817w;

    /* renamed from: x, reason: collision with root package name */
    private com.anythink.core.common.h.v f5818x;

    public g(Context context, com.anythink.core.common.h.v vVar) {
        if (vVar == null) {
            return;
        }
        this.f5818x = vVar;
        this.f5811q = com.anythink.core.common.d.s.b().m();
        this.f5805c = vVar.a();
        this.f5806l = vVar.b();
        this.f5808n = context;
        this.f5812r = vVar.d();
        this.f5807m = vVar.c();
        this.f5814t = vVar.f();
        this.f5816v = vVar.g();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        String strA;
        if (TextUtils.isEmpty(this.f5813s)) {
            com.anythink.core.common.i.a();
            strA = com.anythink.core.common.i.a(true);
        } else {
            strA = this.f5813s;
        }
        if (!TextUtils.isEmpty(strA)) {
            this.f5817w = com.anythink.core.common.v.p.e(strA);
        }
        return strA;
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
        return this.f5805c;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f5808n;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f5806l;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject i() throws JSONException {
        Object obj;
        JSONObject jSONObjectI = super.i();
        try {
            jSONObjectI.put("app_id", this.f5805c);
            jSONObjectI.put("nw_ver", com.anythink.core.common.v.l.h());
            String strD = com.anythink.core.common.d.s.b().D();
            if (!TextUtils.isEmpty(strD)) {
                jSONObjectI.put("sy_id", strD);
            }
            String strE = com.anythink.core.common.d.s.b().E();
            if (TextUtils.isEmpty(strE)) {
                com.anythink.core.common.d.s.b().k(com.anythink.core.common.d.s.b().C());
                jSONObjectI.put("bk_id", com.anythink.core.common.d.s.b().C());
            } else {
                jSONObjectI.put("bk_id", strE);
            }
            JSONObject jSONObjectA = f.a();
            if (jSONObjectA != null) {
                jSONObjectI.put("custom", jSONObjectA);
            }
            jSONObjectI.put("deny", com.anythink.core.common.v.l.m(com.anythink.core.common.d.s.b().g()));
            if (com.anythink.core.common.d.s.b().A()) {
                jSONObjectI.put("is_test", 1);
            }
            Map<String, String> map = this.f5812r;
            if (map != null && map.size() != 0) {
                try {
                    jSONObjectI.put("cached", new JSONObject(this.f5812r));
                } catch (Throwable unused) {
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                com.anythink.core.common.j.a.a().a(jSONObject);
                if (jSONObject.length() > 0) {
                    jSONObjectI.put(f.bj, jSONObject.toString());
                }
            } catch (Throwable unused2) {
            }
            jSONObjectI.putOpt(f.bk, 1);
            if (!TextUtils.isEmpty(this.f5807m)) {
                jSONObjectI.put(f.bp, this.f5807m);
            }
            jSONObjectI.put(f.bB, com.anythink.core.common.d.s.b().F());
            Pair<Integer, List<String>> pairI = com.anythink.core.common.d.s.b().I();
            if (pairI != null && (obj = pairI.first) != null) {
                jSONObjectI.put(f.bC, ((Integer) obj).intValue());
            }
            com.anythink.core.common.d.s.b();
            JSONObject jSONObject2 = new JSONObject();
            com.anythink.core.common.d.s.b();
            jSONObject2.put("t_type", 100);
            jSONObject2.put(b.a.f8705H, com.anythink.core.common.g.c.a().b());
            jSONObject2.put(b.a.f8706I, com.anythink.core.common.g.c.a().c());
            jSONObjectI.put("open_ns", jSONObject2);
            if (!TextUtils.isEmpty(this.f5816v)) {
                if (this.f5815u) {
                    this.f5816v += "_cdn";
                }
                jSONObjectI.put(f.bT, this.f5816v);
            }
            com.anythink.core.common.h.v vVar = this.f5818x;
            if (vVar != null && !TextUtils.isEmpty(vVar.f())) {
                jSONObjectI.put(f.bS, this.f5818x.f());
            }
            if (!TextUtils.isEmpty(this.f5817w)) {
                jSONObjectI.put(f.bU, this.f5817w);
            }
        } catch (JSONException unused3) {
        }
        return jSONObjectI;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final JSONObject j() {
        return super.j();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean m() {
        return true;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public int n() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_ABR_PROBE_COUNT;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final com.anythink.core.common.m.b.d o() {
        return com.anythink.core.common.m.b.d.a("app_strategy", this.f5805c);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final List<String> r() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(i.ab.f2544a);
        arrayList.add("http_type");
        return arrayList;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(int i2, s sVar) {
        this.f5809o = System.currentTimeMillis();
        this.f5810p = SystemClock.elapsedRealtime();
        super.a(i2, sVar);
    }

    private g c(String str) {
        this.f5814t = str;
        return this;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) throws JSONException {
        try {
            if (obj instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj;
                if (this.f5811q != null) {
                    jSONObject.put("custom", new JSONObject(this.f5811q));
                }
            }
        } catch (Exception unused) {
        }
        com.anythink.core.common.u.f.a("app", (String) null, this.f5809o, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.f5810p, (ATAdRequest) null, this.f5814t);
        return obj;
    }

    public final g b(String str) {
        this.f5813s = str;
        return this;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        com.anythink.core.common.u.f.a("app", adError.getPlatformCode(), adError.getPlatformMSG(), b(), "", "", "", (ATAdRequest) null, this.f5814t, 0);
    }

    public final g a(boolean z2) {
        this.f5815u = z2;
        return this;
    }
}

package com.anythink.core.common.m;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.bo;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class u extends AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5864a = "u";

    /* renamed from: b, reason: collision with root package name */
    public static final String f5865b = "sdk_custom";

    /* renamed from: n, reason: collision with root package name */
    private static final String f5866n = "YXBpdjQ=";

    /* renamed from: A, reason: collision with root package name */
    private JSONObject f5867A;

    /* renamed from: B, reason: collision with root package name */
    private ATAdRequest f5868B;

    /* renamed from: C, reason: collision with root package name */
    private String f5869C;

    /* renamed from: D, reason: collision with root package name */
    private boolean f5870D;

    /* renamed from: E, reason: collision with root package name */
    private final bo f5871E;

    /* renamed from: F, reason: collision with root package name */
    private String f5872F;

    /* renamed from: G, reason: collision with root package name */
    private String f5873G;

    /* renamed from: H, reason: collision with root package name */
    private String f5874H;

    /* renamed from: c, reason: collision with root package name */
    Map<String, Object> f5875c;

    /* renamed from: l, reason: collision with root package name */
    long f5876l;

    /* renamed from: m, reason: collision with root package name */
    long f5877m;

    /* renamed from: o, reason: collision with root package name */
    private String f5878o;

    /* renamed from: p, reason: collision with root package name */
    private String f5879p;

    /* renamed from: q, reason: collision with root package name */
    private String f5880q;

    /* renamed from: r, reason: collision with root package name */
    private Context f5881r;

    /* renamed from: s, reason: collision with root package name */
    private String f5882s;

    /* renamed from: t, reason: collision with root package name */
    private String f5883t;

    /* renamed from: u, reason: collision with root package name */
    private String f5884u;

    /* renamed from: v, reason: collision with root package name */
    private Map<String, Object> f5885v;

    /* renamed from: w, reason: collision with root package name */
    private Map<String, String> f5886w;

    /* renamed from: x, reason: collision with root package name */
    private int f5887x;

    /* renamed from: y, reason: collision with root package name */
    private JSONObject f5888y;

    /* renamed from: z, reason: collision with root package name */
    private String f5889z;

    public u(Context context, bo boVar) {
        this.f5888y = null;
        this.f5871E = boVar;
        if (boVar != null) {
            this.f5882s = boVar.b();
            this.f5883t = boVar.c();
            this.f5881r = context;
            this.f5880q = boVar.d();
            this.f5878o = com.anythink.core.common.d.s.b().r();
            this.f5879p = com.anythink.core.common.d.s.b().g(this.f5880q);
            this.f5884u = boVar.e();
            this.f5875c = boVar.f();
            this.f5885v = boVar.g();
            this.f5887x = boVar.h();
            this.f5886w = boVar.i();
            this.f5888y = boVar.l();
            this.f5889z = boVar.m();
            this.f5867A = boVar.n();
            this.f5868B = boVar.j();
            this.f5874H = boVar.k();
            this.f5872F = boVar.p();
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public String b() {
        String strB;
        if (TextUtils.isEmpty(this.f5869C)) {
            com.anythink.core.common.i.a();
            strB = com.anythink.core.common.i.b(true);
        } else {
            strB = this.f5869C;
        }
        if (!TextUtils.isEmpty(strB)) {
            this.f5873G = com.anythink.core.common.v.p.e(strB);
        }
        return strB;
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
        return this.f5882s;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return this.f5881r;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return this.f5883t;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public JSONObject i() throws JSONException {
        Object obj;
        Object obj2;
        JSONObject jSONObjectI = super.i();
        try {
            jSONObjectI.put("app_id", this.f5882s);
            jSONObjectI.put(f.bn, this.f5880q);
            jSONObjectI.put("session_id", this.f5879p);
            jSONObjectI.put("nw_ver", com.anythink.core.common.v.l.h());
            jSONObjectI.put("exclude_myofferid", com.anythink.core.common.r.a().a(this.f5881r));
            if (com.anythink.core.common.d.s.b().l() != null) {
                jSONObjectI.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.EXCLUDE_OFFER, com.anythink.core.common.d.s.b().l());
            }
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
            JSONObject jSONObjectA = f.a(this.f5875c);
            if (jSONObjectA != null) {
                jSONObjectI.put("custom", jSONObjectA);
            }
            jSONObjectI.put("deny", com.anythink.core.common.v.l.m(com.anythink.core.common.d.s.b().g()));
            if (com.anythink.core.common.d.s.b().A()) {
                com.anythink.core.common.d.s.b().B().fillRequestParam(jSONObjectI);
            }
            Map<String, Object> map = this.f5885v;
            if (map != null && (obj2 = map.get(ATAdConst.KEY.CP_PLACEMENT_ID)) != null) {
                jSONObjectI.put(f.aj, obj2.toString());
            }
            Map<String, String> map2 = this.f5886w;
            if (map2 != null && map2.size() != 0) {
                try {
                    jSONObjectI.put("cached", new JSONObject(this.f5886w));
                } catch (Throwable unused) {
                }
            }
            jSONObjectI.put(f.ar, this.f5887x);
            JSONObject jSONObjectA2 = com.anythink.core.d.b.a().a(this.f5880q);
            if (jSONObjectA2 != null) {
                jSONObjectI.put(f.as, jSONObjectA2);
            }
            if (com.anythink.core.common.v.a().a(this.f5880q)) {
                jSONObjectI.put(f.at, 2);
            } else {
                jSONObjectI.put(f.at, 1);
            }
            if (ATAdxSetting.getInstance().isAdxNetworkMode(this.f5880q)) {
                jSONObjectI.put(f.bh, 1);
            }
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = this.f5888y;
                if (jSONObject2 != null && jSONObject2.length() > 0) {
                    Iterator<String> itKeys = this.f5888y.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObject.put(next, this.f5888y.get(next));
                    }
                }
                if (jSONObject.length() > 0) {
                    jSONObjectI.put(f.bj, jSONObject.toString());
                }
            } catch (Throwable unused2) {
            }
            jSONObjectI.put(f.bm, new JSONArray(ATAdConst.AD_SUPPORT_SDK_DSP_ID_ARRAY));
            if (!TextUtils.isEmpty(this.f5889z)) {
                jSONObjectI.put(f.bp, this.f5889z);
                JSONObject jSONObject3 = this.f5867A;
                if (jSONObject3 != null) {
                    jSONObjectI.put(f.bq, jSONObject3);
                }
            }
            ATAdRequest aTAdRequest = this.f5868B;
            if (aTAdRequest != null) {
                jSONObjectI.put(f.bB, aTAdRequest.getChannelSource());
            } else {
                jSONObjectI.put(f.bB, com.anythink.core.common.d.s.b().F());
            }
            Pair<Integer, List<String>> pairI = com.anythink.core.common.d.s.b().I();
            if (pairI != null && (obj = pairI.first) != null) {
                jSONObjectI.put(f.bC, ((Integer) obj).intValue());
            }
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
            if (bVarB != null) {
                String strE2 = bVarB.e();
                if (!TextUtils.isEmpty(strE2)) {
                    jSONObjectI.put(f.bD, strE2);
                }
            }
            if (!TextUtils.isEmpty(this.f5872F)) {
                if (this.f5870D) {
                    this.f5872F += "_cdn";
                }
                jSONObjectI.put(f.bT, this.f5872F);
            }
            bo boVar = this.f5871E;
            if (boVar != null && !TextUtils.isEmpty(boVar.k())) {
                jSONObjectI.put(f.bS, this.f5871E.k());
            }
            if (!TextUtils.isEmpty(this.f5873G)) {
                jSONObjectI.put(f.bU, this.f5873G);
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
    public final int n() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_EGL_NEED_WORKAROUND;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final com.anythink.core.common.m.b.d o() {
        return com.anythink.core.common.m.b.d.a("placement_strategy", this.f5880q);
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
        this.f5876l = System.currentTimeMillis();
        this.f5877m = SystemClock.elapsedRealtime();
        super.a(i2, sVar);
    }

    private void a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectA = com.anythink.core.d.b.a().a(this.f5880q);
        if (jSONObjectA != null) {
            jSONObject.put(f.as, jSONObjectA);
        }
    }

    public final u b(String str) {
        this.f5869C = str;
        return this;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public Object a(Object obj) {
        try {
            bo boVar = this.f5871E;
            if (boVar != null) {
                boVar.b(this.f5870D);
            }
            com.anythink.core.common.u.f.a("placement", this.f5880q, this.f5876l, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.f5877m, this.f5868B, this.f5874H);
            if (obj instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj;
                if (this.f5875c != null) {
                    jSONObject.put(f5865b, new JSONObject(this.f5875c));
                }
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public void a(AdError adError) {
        com.anythink.core.common.u.f.a("placement", adError.getPlatformCode(), adError.getPlatformMSG(), b(), this.f5880q, "", "", this.f5868B, this.f5874H, 0);
    }

    public final u a(boolean z2) {
        this.f5870D = z2;
        return this;
    }
}

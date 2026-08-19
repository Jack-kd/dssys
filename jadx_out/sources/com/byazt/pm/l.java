package com.byazt.pm;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.fy.eb;
import com.byazt.fy.s;
import com.byazt.xci.a;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.xci.sz;
import com.byazt.xci.ux;
import com.byazt.xci.xs;
import com.byazt.zn.ky;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1191, 34})
/* loaded from: classes3.dex */
public class l implements j {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.gog.hp f24439a;
    public final mp hp;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final jx f24441l;

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, com.byazt.gog.jx> f24440j = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public boolean f24443w = true;
    public boolean eb = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f24442s = false;

    private l(jx jxVar, mp mpVar, boolean z2) {
        this.f24441l = jxVar;
        this.hp = mpVar;
        this.jx = z2;
    }

    @Override // com.byazt.pm.j
    public void jx() {
        l();
        for (com.byazt.gog.jx jxVar : this.f24440j.values()) {
            if (jxVar != null) {
                jxVar.jx();
            }
        }
        this.f24440j.clear();
    }

    public static l hp(jx jxVar, mp mpVar, boolean z2) {
        return new l(jxVar, mpVar, z2);
    }

    @Override // com.byazt.pm.j
    public void l() {
        Iterator<com.byazt.gog.jx> it = this.f24440j.values().iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.byazt.pm.j
    public void hp() {
        for (com.byazt.gog.jx jxVar : this.f24440j.values()) {
            if (jxVar != null) {
                jxVar.l();
            }
        }
    }

    @Override // com.byazt.pm.j
    public void l(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || this.f24441l == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        com.byazt.gog.jx jxVar = this.f24440j.get(hp(this.hp, jSONObjectOptJSONObject, (String) null).v().l());
        if (jxVar != null) {
            jxVar.w();
        }
    }

    public static mp hp(mp mpVar, JSONObject jSONObject, String str) {
        String strOptString;
        boolean z2;
        mp mpVarHp;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        if (jSONObject != null) {
            strOptString = jSONObject.optString("download_url");
            z2 = true;
        } else {
            strOptString = "";
            z2 = false;
        }
        if (TextUtils.isEmpty(strOptString)) {
            z2 = false;
        }
        boolean z3 = (mpVar.v() == null || mpVar.v().l() == null || !mpVar.v().l().equals(strOptString)) ? z2 : false;
        if (jSONObject != null && (jSONObjectOptJSONObject2 = jSONObject.optJSONObject("download_config_json")) != null && !jSONObjectOptJSONObject2.optBoolean("has_valid_download_url", true)) {
            z3 = true;
        }
        if (z3) {
            mpVarHp = new mp();
            mpVarHp.pu(mpVar.xq());
            mpVarHp.a(mpVar.nu());
            mpVarHp.dy(mpVar.bf());
            mpVarHp.nu(mpVar.cd());
            mpVarHp.dy(jSONObject.optInt("lp_down_rule"));
            mpVarHp.ky(4);
            mpVarHp.cx(jSONObject.optString("id"));
            mpVarHp.u(jSONObject.optString(n.f36449l));
            com.byazt.xci.w wVar = new com.byazt.xci.w();
            wVar.j(jSONObject.optString(g.a.f3270g));
            wVar.jx(jSONObject.optString("name"));
            wVar.l(strOptString);
            mpVarHp.hp(wVar);
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("download_config_json");
            if (jSONObjectOptJSONObject3 != null) {
                mpVarHp.hp(new sz(jSONObjectOptJSONObject3));
                if (!jSONObjectOptJSONObject3.optBoolean("has_valid_download_url", true)) {
                    mpVarHp.zy(true);
                }
            }
            String strOptString2 = jSONObject.optString("market_url");
            if (!TextUtils.isEmpty(strOptString2)) {
                mpVarHp.hq(strOptString2);
            }
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("app_manage_json");
            if (jSONObjectOptJSONObject4 != null) {
                a aVarVv = mpVarHp.vv();
                if (aVarVv == null) {
                    aVarVv = new a();
                }
                aVarVv.hp(jSONObjectOptJSONObject4.optInt("score"));
                aVarVv.hp(jSONObjectOptJSONObject4.optJSONArray("creative_tags"));
                mpVarHp.hp(aVarVv);
                mpVarHp.v(jSONObjectOptJSONObject4.toString());
                dy dyVarNq = mpVarHp.nq();
                if (dyVarNq == null) {
                    dyVarNq = new dy();
                }
                dyVarNq.hp(jSONObjectOptJSONObject4.optString(g.a.f3279p));
                mpVarHp.hp(dyVarNq);
                mpVarHp.n(jSONObjectOptJSONObject4.optString("desc"));
            }
            JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("app_manage_type_json");
            if (jSONObjectOptJSONObject5 != null) {
                mpVarHp.nu(jSONObjectOptJSONObject5.optInt("app_manage_type"));
            }
            int iOptInt = jSONObject.optInt("live_interaction_type");
            String strOptString3 = jSONObject.optString("live_room_id");
            if (iOptInt > 0 && !TextUtils.isEmpty(strOptString3)) {
                mpVarHp.pc(iOptInt);
                mpVarHp.xh(strOptString3);
            }
            mpVarHp.an(jSONObject.optInt("ad_type"));
            ux uxVarHp = ux.hp(jSONObject.optJSONObject("wc_miniapp_info"));
            if (uxVarHp != null) {
                mpVarHp.hp(uxVarHp);
            }
            String strOptString4 = jSONObject.optString("quick_app_url");
            if (!TextUtils.isEmpty(strOptString4)) {
                com.byazt.xci.w wVarV = mpVarHp.v() != null ? mpVarHp.v() : new com.byazt.xci.w();
                wVarV.hp(strOptString4);
                mpVarHp.hp(wVarV);
            }
        } else {
            mpVarHp = com.byazt.jz.hp.hp(mpVar.ij());
        }
        if (!TextUtils.isEmpty(str)) {
            mpVarHp.b(str);
        }
        if (jSONObject != null && (jSONObjectOptJSONObject = jSONObject.optJSONObject(MeishuOpenDeepLinkActivity.KEY_DEEP_LINK)) != null) {
            xs xsVar = new xs();
            if (mpVar.k() != null) {
                xsVar.hp(mpVar.k());
            }
            xsVar.hp(new xs(jSONObjectOptJSONObject));
            mpVarHp.hp(xsVar);
        }
        return mpVarHp;
    }

    @Override // com.byazt.pm.j
    public void jx(boolean z2) {
        this.f24442s = z2;
    }

    @com.byazt.kj.hp(hp = {0, 1, 1191, 123})
    public static class hp {
        public static ConcurrentHashMap<String, JSONObject> hp = new ConcurrentHashMap<>();

        public static synchronized JSONObject hp(String str) {
            if (TextUtils.isEmpty(str)) {
                return new JSONObject();
            }
            ConcurrentHashMap<String, JSONObject> concurrentHashMap = hp;
            if (concurrentHashMap == null) {
                return new JSONObject();
            }
            JSONObject jSONObject = concurrentHashMap.get(str);
            if (jSONObject != null) {
                return jSONObject;
            }
            return new JSONObject();
        }

        public static synchronized void hp(String str, int i2, int i3) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (hp == null) {
                    hp = new ConcurrentHashMap<>();
                }
                JSONObject jSONObject = hp.get(str);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                    hp.put(str, jSONObject);
                }
                try {
                    jSONObject.put("downloadStatus", i2);
                    jSONObject.put("downloadProcessRate", i3);
                    jSONObject.put("code", 0);
                    jSONObject.put("codeMsg", "get ad_down_load_id success");
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.pm.j
    public void l(boolean z2) {
        this.eb = z2;
    }

    @Override // com.byazt.pm.j
    public void hp(Context context, JSONObject jSONObject, String str, int i2, boolean z2, boolean z3) {
        JSONObject jSONObjectOptJSONObject;
        if (context == null || jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        mp mpVarHp = hp(this.hp, jSONObjectOptJSONObject, hp(jSONObjectOptJSONObject, str));
        hp(context, mpVarHp, jSONObjectOptJSONObject, i2, z2 ? s.hp(mpVarHp) : 0, z3);
    }

    private void hp(Context context, mp mpVar, JSONObject jSONObject, int i2, int i3, boolean z2) {
        if (context == null || mpVar == null || mpVar.v() == null || jSONObject == null || this.f24441l == null) {
            return;
        }
        com.byazt.gog.jx jxVar = this.f24440j.get(mpVar.v().l());
        if (jxVar != null) {
            jxVar.hp(i3);
            return;
        }
        String strHp = ky.hp(i2);
        if (TextUtils.isEmpty(strHp)) {
            return;
        }
        com.byazt.gog.jx jxVarHp = hp(context, mpVar, jSONObject, strHp);
        jxVarHp.hp(i3);
        if (jxVarHp instanceof com.byazt.fy.w) {
            ((com.byazt.fy.w) jxVarHp).a(z2);
        }
        this.f24440j.put(mpVar.v().l(), jxVarHp);
    }

    @Override // com.byazt.pm.j
    public void hp(Context context, JSONObject jSONObject, String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        if (context == null || jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        hp(context, hp(this.hp, jSONObjectOptJSONObject, hp(jSONObjectOptJSONObject, str2)), str);
    }

    private String hp(JSONObject jSONObject, String str) {
        String strOptString = jSONObject != null ? jSONObject.optString(n.f36450m) : null;
        return TextUtils.isEmpty(strOptString) ? str : strOptString;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void hp(Context context, mp mpVar, String str) {
        if (context == 0 || mpVar == null) {
            return;
        }
        if (mpVar.v() == null) {
            com.byazt.gog.jx jxVarL = com.byazt.ff.s.l(context, mpVar, str);
            if (jxVarL instanceof com.byazt.fy.hp) {
                ((com.byazt.fy.hp) jxVarL).a(this.jx);
                jxVarL.j(this.f24442s);
            }
            jxVarL.hp(mpVar, false);
        } else {
            final String strJ = mpVar.j();
            com.byazt.gog.jx jxVar = this.f24440j.get(mpVar.v().l());
            if (jxVar != null) {
                jxVar.l(this.eb);
                jxVar.j(this.f24442s);
                if (jxVar instanceof com.byazt.fy.hp) {
                    ((com.byazt.fy.hp) jxVar).s().hp(this.f24443w);
                } else if (jxVar instanceof eb) {
                    ((eb) jxVar).s().hp(this.f24443w);
                }
                jxVar.hp(mpVar, false);
                jxVar.hp(new com.byazt.gog.hp() { // from class: com.byazt.pm.l.1
                    @Override // com.byazt.gog.hp
                    public void hp() {
                        com.byazt.pm.hp.hp(strJ);
                    }

                    @Override // com.byazt.gog.hp
                    public void jx(long j2, long j3, String str2, String str3) {
                        com.byazt.pm.hp.jx(strJ, j2, j3);
                    }

                    @Override // com.byazt.gog.hp
                    public void l(long j2, long j3, String str2, String str3) {
                        com.byazt.pm.hp.l(strJ, j2, j3);
                    }

                    @Override // com.byazt.gog.hp
                    public void hp(long j2, long j3, String str2, String str3) {
                        com.byazt.pm.hp.hp(strJ, j2, j3);
                    }

                    @Override // com.byazt.gog.hp
                    public void hp(long j2, String str2, String str3) {
                        com.byazt.pm.hp.l(strJ);
                    }

                    @Override // com.byazt.gog.hp
                    public void hp(String str2, String str3) {
                        com.byazt.pm.hp.jx(strJ);
                    }
                });
            }
        }
        if (context instanceof com.byazt.ij.l) {
            ((com.byazt.ij.l) context).hp(1);
        }
    }

    @Override // com.byazt.pm.j
    public void hp(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        hp(hp(this.hp, jSONObjectOptJSONObject, (String) null), jSONObjectOptJSONObject);
    }

    private void hp(mp mpVar, JSONObject jSONObject) throws JSONException {
        if (this.f24441l == null || mpVar == null || mpVar.v() == null) {
            return;
        }
        String strL = mpVar.v().l();
        if (this.f24440j.containsKey(strL)) {
            com.byazt.gog.jx jxVarRemove = this.f24440j.remove(strL);
            if (jxVarRemove != null) {
                try {
                    jxVarRemove.jx();
                } catch (JSONException unused) {
                    return;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("message", cb.f11292o);
            jSONObject2.put("status", "unsubscribed");
            jSONObject2.put("appad", jSONObject);
            this.f24441l.l("app_ad_event", jSONObject2);
        }
    }

    @Override // com.byazt.pm.j
    public void hp(boolean z2) {
        this.f24443w = z2;
    }

    @Override // com.byazt.pm.j
    public void hp(String str, boolean z2) {
        com.byazt.gog.jx jxVar;
        if (TextUtils.isEmpty(str) || (jxVar = this.f24440j.get(str)) == null) {
            return;
        }
        jxVar.hp(z2);
    }

    private com.byazt.gog.jx hp(Context context, mp mpVar, final JSONObject jSONObject, String str) {
        com.byazt.gog.jx jxVarL = com.byazt.ff.s.l(context, mpVar, str);
        if (jxVarL instanceof com.byazt.fy.hp) {
            ((com.byazt.fy.hp) jxVarL).a(this.jx);
        }
        final String strJ = mpVar.j();
        jxVarL.hp(new com.byazt.gog.hp() { // from class: com.byazt.pm.l.2
            @Override // com.byazt.gog.hp
            public void hp() throws JSONException {
                com.byazt.pm.hp.hp(strJ);
                hp("status", "idle");
                if (l.this.f24439a == null) {
                    return;
                }
                l.this.f24439a.hp();
            }

            @Override // com.byazt.gog.hp
            public void jx(long j2, long j3, String str2, String str3) throws JSONException {
                com.byazt.pm.hp.jx(strJ, j2, j3);
                hp("status", PointCategory.DOWNLOAD_FAILED, "total_bytes", String.valueOf(j2), "current_bytes", String.valueOf(j3));
                if (l.this.f24439a == null) {
                    return;
                }
                l.this.f24439a.jx(j2, j3, str2, str3);
            }

            @Override // com.byazt.gog.hp
            public void l(long j2, long j3, String str2, String str3) throws JSONException {
                com.byazt.pm.hp.l(strJ, j2, j3);
                hp("status", "download_paused", "total_bytes", String.valueOf(j2), "current_bytes", String.valueOf(j3));
                if (l.this.f24439a == null) {
                    return;
                }
                l.this.f24439a.l(j2, j3, str2, str3);
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, long j3, String str2, String str3) throws JSONException {
                com.byazt.pm.hp.hp(strJ, j2, j3);
                hp("status", "download_active", "total_bytes", String.valueOf(j2), "current_bytes", String.valueOf(j3));
                if (l.this.f24439a == null) {
                    return;
                }
                l.this.f24439a.hp(j2, j3, str2, str3);
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, String str2, String str3) throws JSONException {
                com.byazt.pm.hp.l(strJ);
                hp("status", "download_finished", "total_bytes", String.valueOf(j2), "current_bytes", String.valueOf(j2));
                if (l.this.f24439a == null) {
                    return;
                }
                l.this.f24439a.hp(j2, str2, str3);
            }

            @Override // com.byazt.gog.hp
            public void hp(String str2, String str3) throws JSONException {
                com.byazt.pm.hp.jx(strJ);
                hp("status", "installed");
                if (l.this.f24439a == null) {
                    return;
                }
                l.this.f24439a.hp(str2, str3);
            }

            private void hp(String... strArr) throws JSONException {
                if (strArr == null || strArr.length % 2 != 0) {
                    return;
                }
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("message", cb.f11292o);
                    jSONObject2.put("appad", jSONObject);
                    for (int i2 = 0; i2 < strArr.length; i2 += 2) {
                        jSONObject2.put(strArr[i2], strArr[i2 + 1]);
                    }
                    l.this.f24441l.l("app_ad_event", jSONObject2);
                } catch (JSONException unused) {
                }
            }
        });
        return jxVarL;
    }
}

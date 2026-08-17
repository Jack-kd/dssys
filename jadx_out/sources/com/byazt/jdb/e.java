package com.byazt.jdb;

import android.text.TextUtils;
import com.anythink.core.common.f.a;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.xci.hd;
import com.byazt.xci.jd;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 169, 45})
/* loaded from: classes.dex */
public class e implements com.byazt.tq.hp {

    /* renamed from: a, reason: collision with root package name */
    public Boolean f21325a;

    /* renamed from: e, reason: collision with root package name */
    public JSONArray f21326e;
    public Boolean eb;
    public boolean gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f21327j;
    public int jl;
    public mp jx;

    /* renamed from: k, reason: collision with root package name */
    public JSONObject f21328k;

    /* renamed from: l, reason: collision with root package name */
    public String f21329l;

    /* renamed from: q, reason: collision with root package name */
    public JSONArray f21330q;

    /* renamed from: s, reason: collision with root package name */
    public JSONObject f21331s;

    /* renamed from: u, reason: collision with root package name */
    public volatile boolean f21332u;

    /* renamed from: v, reason: collision with root package name */
    public volatile int f21333v;

    /* renamed from: w, reason: collision with root package name */
    public Boolean f21334w;
    public AtomicLong zy;

    public e(String str, mp mpVar, JSONObject jSONObject, JSONObject jSONObject2) {
        this.f21329l = com.byazt.ih.l.AD_TAG_FEED;
        Boolean bool = Boolean.FALSE;
        this.f21334w = bool;
        this.f21325a = bool;
        this.eb = bool;
        this.gu = false;
        this.zy = new AtomicLong();
        this.f21333v = 0;
        this.f21332u = false;
        this.f21329l = str;
        this.jx = mpVar;
        this.f21331s = jSONObject;
        this.f21330q = new JSONArray();
        this.f21326e = new JSONArray();
        this.f21327j = jSONObject2;
        this.hp = mpVar == null ? com.byazt.el.hp.j() : mpVar.xq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean vv() {
        if (this.eb.booleanValue()) {
            return true;
        }
        return this.f21325a.booleanValue() && this.f21334w.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject xs() {
        JSONObject jSONObject = this.f21327j;
        if (jSONObject != null && jSONObject.has("xSize")) {
            Object objOpt = this.f21327j.opt("xSize");
            if (objOpt instanceof JSONObject) {
                JSONObject jSONObject2 = (JSONObject) objOpt;
                if (jSONObject2.has("width") && jSONObject2.has("height")) {
                    JSONObject jSONObject3 = new JSONObject();
                    try {
                        jSONObject3.putOpt("width", Double.valueOf(((JSONObject) objOpt).optDouble("width")));
                        jSONObject3.putOpt("height", Double.valueOf(((JSONObject) objOpt).optDouble("height")));
                        return jSONObject3;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return null;
    }

    public void gu() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.15
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e.this.hp(jSONObject, "type", "native_enterBackground");
                    e eVar = e.this;
                    eVar.hp(eVar.f21330q, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void jl() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.16
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e.this.hp(jSONObject, "type", "native_enterForeground");
                    e eVar = e.this;
                    eVar.hp(eVar.f21330q, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.jx
    public void k() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.22
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "render_failed", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.tq.hp
    public void u() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.25
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    if (e.this.vv() && !e.this.gu) {
                        if (e.this.f21330q != null && e.this.f21330q.length() != 0) {
                            try {
                                e.this.f21331s.put("native_switchBackgroundAndForeground", e.this.f21330q);
                            } catch (Exception unused) {
                            }
                        }
                        if (e.this.f21326e != null && e.this.f21326e.length() != 0) {
                            try {
                                e.this.f21331s.put("intercept_source", e.this.f21326e);
                            } catch (Exception unused2) {
                            }
                        }
                        HashMap map = new HashMap();
                        map.put("webview_time_track", e.this.f21331s);
                        com.byazt.jz.s.u().f();
                        j.eb(e.this.jx, e.this.f21329l, "webview_time_track", map);
                        e.this.gu = true;
                    }
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.tq.hp
    public void v() {
        this.f21334w = Boolean.TRUE;
    }

    @Override // com.byazt.sh.l
    public void zy() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.21
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "no_native_render", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.j
    public void a() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.9
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "webview_load_start", (Object) jSONObject, false);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void e() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.14
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "native_endcard_close", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.j
    public void eb() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.10
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "webview_load_success", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.hp
    public void j(final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.2
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.l
    public void jx() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.27
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "native_render_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.jx
    public void l() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.12
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "render_success", jSONObject);
                    if (e.this.f21329l.equals("splash_ad") || e.this.f21329l.equals("cache_splash_ad") || e.this.f21331s.optInt("webview_source", -1) == 2) {
                        return;
                    }
                    com.byazt.sf.hp.hp().hp("ugen_render", "h5_render_success", String.valueOf(jCurrentTimeMillis) + "0", e.this.hp);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void q() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.13
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "native_endcard_show", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.j
    public void s() {
        l((JSONObject) null);
    }

    @Override // com.byazt.sh.hp
    public void w(final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.3
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, str, jSONObject);
                    if (e.this.f21329l.equals("splash_ad") || e.this.f21329l.equals("cache_splash_ad")) {
                        return;
                    }
                    com.byazt.sf.hp.hp().hp("ugen_render", "native_render_success", String.valueOf(jCurrentTimeMillis) + "0", e.this.hp);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.j
    public void a(final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.19
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e.this.hp(jSONObject, "jsb", str);
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "webview_jsb_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.j
    public void eb(final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.20
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e.this.hp(jSONObject, "jsb", str);
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "webview_jsb_end", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void j() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.7
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "native_render_end", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.hp
    public void jx(final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.30
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, str, jSONObject);
                    if (e.this.f21329l.equals("splash_ad") || e.this.f21329l.equals("cache_splash_ad")) {
                        return;
                    }
                    com.byazt.sf.hp.hp().hp("ugen_render", "native_render_success", String.valueOf(jCurrentTimeMillis) + "0", e.this.hp);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.hp
    public void l(final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.29
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.l
    public void w() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.8
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "native_render_end", jSONObject);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    JSONObject jSONObject2 = new JSONObject();
                    e.this.hp(jSONObject2, "ts", Long.valueOf(jCurrentTimeMillis2));
                    e eVar2 = e.this;
                    eVar2.hp(eVar2.f21331s, "render_success", jSONObject2);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.jx
    public void hp() {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.1
                @Override // java.lang.Runnable
                public void run() {
                    e.this.zy.set(System.currentTimeMillis());
                    JSONObject jSONObject = new JSONObject();
                    e eVar = e.this;
                    eVar.hp(jSONObject, "ts", Long.valueOf(eVar.zy.get()));
                    e eVar2 = e.this;
                    eVar2.hp(jSONObject, "render_sequence", Integer.valueOf(hd.l(eVar2.jx)));
                    e eVar3 = e.this;
                    eVar3.hp(jSONObject, "render_timeout", Integer.valueOf(eVar3.jl));
                    e.this.hp(jSONObject, "webview_count", Integer.valueOf(com.byazt.wx.w.hp().w()));
                    e.this.hp(jSONObject, "available_cache_count", Integer.valueOf(com.byazt.wx.w.hp().jx()));
                    jd jdVarEb = hd.eb(e.this.jx);
                    if (jdVarEb != null) {
                        e.this.hp(jSONObject, a.C0051a.f3218o, jdVarEb.s());
                    } else {
                        e.this.hp(jSONObject, a.C0051a.f3218o, "0");
                    }
                    JSONObject jSONObjectXs = e.this.xs();
                    if (jSONObjectXs != null) {
                        e.this.hp(jSONObject, "size", jSONObjectXs);
                    }
                    e eVar4 = e.this;
                    eVar4.hp(eVar4.f21331s, "render_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.tq.hp
    public void j(final JSONObject jSONObject) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.24
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject2;
                    if (e.this.f21331s == null || (jSONObject2 = jSONObject) == null) {
                        return;
                    }
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        e eVar = e.this;
                        eVar.hp(eVar.f21331s, next, jSONObject.opt(next));
                    }
                    e.this.f21325a = Boolean.TRUE;
                    e.this.u();
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.hp
    public void jx(final int i2, final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.4
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e.this.hp(jSONObject, "code", Integer.valueOf(i2));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, str, jSONObject);
                    if (e.this.f21329l.equals("splash_ad") || e.this.f21329l.equals("cache_splash_ad")) {
                        return;
                    }
                    com.byazt.sf.hp.hp().hp("ugen_render", "native_render_fail", String.valueOf(jCurrentTimeMillis) + "1", e.this.hp);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.hp
    public void l(final int i2, final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.31
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e.this.hp(jSONObject, "code", Integer.valueOf(i2));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, str, jSONObject);
                    if (e.this.f21329l.equals("splash_ad") || e.this.f21329l.equals("cache_splash_ad")) {
                        return;
                    }
                    com.byazt.sf.hp.hp().hp("ugen_render", "native_render_fail", String.valueOf(jCurrentTimeMillis) + "1", e.this.hp);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.jx
    public void hp(final int i2, final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.26
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e.this.hp(jSONObject, "code", Integer.valueOf(i2));
                    String str2 = str;
                    if (str2 != null) {
                        e.this.hp(jSONObject, MediationConstant.KEY_REASON, str2);
                    }
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "render_error", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.jx
    public void jx(final JSONObject jSONObject) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.23
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                    }
                    e.this.hp(jSONObject2, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "render_did_finish", jSONObject2);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void l(final JSONObject jSONObject) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.11
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                    }
                    e.this.hp(jSONObject2, "ts", Long.valueOf(System.currentTimeMillis()));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "webview_load_error", jSONObject2);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.hp
    public void hp(final String str) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.28
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.j
    public void l(final String str, final long j2, final long j3, final int i2) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.18
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str) || j3 < j2) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "start_ts", Long.valueOf(j2));
                    e.this.hp(jSONObject, "end_ts", Long.valueOf(j3));
                    e.this.hp(jSONObject, "intercept_type", Integer.valueOf(i2));
                    e.this.hp(jSONObject, "type", "intercept_js");
                    e.this.hp(jSONObject, "url", str);
                    e.this.hp(jSONObject, "duration", Long.valueOf(j3 - j2));
                    e eVar = e.this;
                    eVar.hp(eVar.f21326e, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.hp
    public void hp(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.5
                @Override // java.lang.Runnable
                public void run() {
                    e.this.hp(jSONObject, "ts", Long.valueOf(System.currentTimeMillis()));
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "render_exception", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.tq.hp
    public void l(boolean z2) throws JSONException {
        try {
            if (!this.f21332u && this.jx != null) {
                this.f21332u = true;
                if (hd.l(this.jx) == 0 && this.f21333v != 0) {
                    if (this.f21328k == null) {
                        this.f21328k = new JSONObject();
                    }
                    this.f21328k.put("render_sequence", hd.l(this.jx));
                    this.f21328k.put("render_control", hd.hp(this.jx));
                    this.f21328k.put("fetch_tpl_time_out", sz.l().hp(this.f21329l, hd.l(this.jx)));
                    this.f21328k.put("req_id", this.jx.ns());
                    this.f21328k.put("ad_id", this.jx.j());
                    this.f21328k.put("ad_slot_type", ky.jl(this.jx));
                    if (z2) {
                        this.f21328k.put("webview_time_cost", System.currentTimeMillis() - this.zy.get());
                        this.f21328k.put("webview_result", 2);
                    }
                    k.hp().hp(this.f21328k);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.sh.j
    public void hp(final int i2) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.6
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    e.this.hp(jSONObject, "isWebViewCache", Integer.valueOf(i2));
                    if (e.this.jx != null) {
                        if (hd.s(e.this.jx)) {
                            e.this.hp(jSONObject, "engine_version", "v3");
                        } else {
                            e.this.hp(jSONObject, "engine_version", "v1");
                        }
                    }
                    e eVar = e.this;
                    eVar.hp(eVar.f21331s, "before_webview_request", jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.sh.j
    public void hp(final String str, final long j2, final long j3, final int i2) {
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jdb.e.17
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str) || j3 < j2) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    e.this.hp(jSONObject, "start_ts", Long.valueOf(j2));
                    e.this.hp(jSONObject, "end_ts", Long.valueOf(j3));
                    e.this.hp(jSONObject, "intercept_type", Integer.valueOf(i2));
                    e.this.hp(jSONObject, "type", "intercept_html");
                    e.this.hp(jSONObject, "url", str);
                    e.this.hp(jSONObject, "duration", Long.valueOf(j3 - j2));
                    e eVar = e.this;
                    eVar.hp(eVar.f21326e, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public e() {
        this.f21329l = com.byazt.ih.l.AD_TAG_FEED;
        Boolean bool = Boolean.FALSE;
        this.f21334w = bool;
        this.f21325a = bool;
        this.eb = bool;
        this.gu = false;
        this.zy = new AtomicLong();
        this.f21333v = 0;
        this.f21332u = false;
    }

    @Override // com.byazt.tq.hp
    public void hp(boolean z2) {
        this.eb = Boolean.valueOf(z2);
    }

    @Override // com.byazt.tq.hp
    public void hp(boolean z2, int i2) throws JSONException {
        try {
            if (this.f21328k == null) {
                this.f21328k = new JSONObject();
            }
            this.f21328k.put("error_code", i2);
            this.f21328k.put("webview_time_cost", System.currentTimeMillis() - this.zy.get());
            this.f21328k.put("webview_result", !z2 ? 1 : 0);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.tq.hp
    public void hp(int i2, int i3, String str) throws JSONException {
        try {
            this.f21333v = i2;
            if (this.f21328k == null) {
                this.f21328k = new JSONObject();
            }
            this.f21328k.put("render_type", i2);
            this.f21328k.put("error_code", i3);
        } catch (Exception unused) {
        }
    }

    public void l(int i2) {
        this.jl = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(JSONObject jSONObject, String str, Object obj, boolean z2) throws JSONException {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!z2) {
            try {
                if (jSONObject.has(str)) {
                    return;
                }
            } catch (Exception e2) {
                e2.getMessage();
                return;
            }
        }
        jSONObject.put(str, obj);
    }

    public void hp(JSONObject jSONObject, String str, Object obj) {
        hp(jSONObject, str, obj, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(JSONArray jSONArray, Object obj) {
        if (jSONArray == null || jSONArray.length() >= 10) {
            return;
        }
        try {
            jSONArray.put(obj);
        } catch (Exception e2) {
            e2.getMessage();
        }
    }
}

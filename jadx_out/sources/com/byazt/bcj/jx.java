package com.byazt.bcj;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.bki.u;
import com.byazt.ctq.w;
import com.byazt.lyn.k;
import com.byazt.owd.a;
import com.byazt.tgw.e;
import com.byazt.tgw.j;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kuaishou.weapon.p0.bg;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 577, 30})
/* loaded from: classes2.dex */
public class jx implements hp {

    /* renamed from: a, reason: collision with root package name */
    public String f18479a;
    public int as;

    /* renamed from: e, reason: collision with root package name */
    public int f18482e;
    public String eb;
    public long ec;

    /* renamed from: f, reason: collision with root package name */
    public com.byazt.xoi.l f18483f;
    public String gu;

    /* renamed from: j, reason: collision with root package name */
    public long f18484j;
    public com.byazt.xzd.l jd;
    public String jl;
    public String jx;
    public String kg;

    /* renamed from: m, reason: collision with root package name */
    public int f18487m;
    public int mp;
    public int nu;

    /* renamed from: q, reason: collision with root package name */
    public String f18491q;

    /* renamed from: s, reason: collision with root package name */
    public String f18493s;
    public long sz;

    /* renamed from: w, reason: collision with root package name */
    public long f18496w;
    public volatile JSONObject wt;

    /* renamed from: y, reason: collision with root package name */
    public com.byazt.wgi.l f18497y;
    public boolean yj;
    public int zx;
    public int zy;
    public int hp = 259200000;

    /* renamed from: l, reason: collision with root package name */
    public final List<Object> f18486l = new CopyOnWriteArrayList();

    /* renamed from: k, reason: collision with root package name */
    public String f18485k = null;

    /* renamed from: v, reason: collision with root package name */
    public String f18495v = null;

    /* renamed from: u, reason: collision with root package name */
    public boolean f18494u = false;
    public int xs = 0;
    public String vv = "log-api.pangolin-sdk-toutiao.com/service/2/app_log/";

    /* renamed from: n, reason: collision with root package name */
    public int f18489n = Integer.MAX_VALUE;
    public final List<u> ns = new CopyOnWriteArrayList();
    public Map<String, Boolean> cx = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f18480b = new AtomicBoolean(false);
    public final AtomicBoolean di = new AtomicBoolean(false);

    /* renamed from: o, reason: collision with root package name */
    public int f18490o = 0;

    /* renamed from: d, reason: collision with root package name */
    public Map<String, String> f18481d = new ConcurrentHashMap();
    public Map<String, List<String>> wv = new ConcurrentHashMap();
    public double hq = 0.0d;
    public boolean ud = false;
    public Map<String, com.byazt.tgw.jx> dy = new ConcurrentHashMap();
    public int lv = 0;

    /* renamed from: r, reason: collision with root package name */
    public final Map<String, List<com.byazt.tgw.jx>> f18492r = new ConcurrentHashMap();
    public final Map<String, j> pu = new ConcurrentHashMap();
    public final Map<String, Integer> ky = new ConcurrentHashMap();
    public final Map<String, Integer> xh = new ConcurrentHashMap();

    /* renamed from: ms, reason: collision with root package name */
    public int f18488ms = 0;
    public int yr = 0;
    public int rz = 0;
    public int nd = 0;
    public int hd = 0;
    public int vq = 0;
    public int ea = 0;
    public int su = 0;
    public boolean rv = false;
    public boolean qu = false;
    public boolean an = false;
    public boolean pc = false;
    public long fi = Long.MIN_VALUE;
    public long nr = Long.MIN_VALUE;
    public long rk = Long.MIN_VALUE;
    public int ru = 0;
    public final AtomicInteger gd = new AtomicInteger(0);
    public int tw = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void bu() {
        com.byazt.lto.hp.hp().put("app_simple_abtest", this.f18495v);
    }

    private void jd() {
        this.f18479a = "";
        this.eb = "";
        this.f18493s = "";
        this.f18491q = "";
        this.gu = "0";
        this.jl = "0";
        this.sz = 10000L;
        com.byazt.qca.hp.hp().hp(this.ec, this.sz);
    }

    private boolean qh() {
        Boolean bool = this.cx.get("active_control");
        return bool == null || !bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.byazt.ky.hp.hp().j();
        if (ms()) {
            Iterator<u> it = this.ns.iterator();
            while (it.hasNext()) {
                it.next().hp();
            }
            this.ns.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x() {
        w wVarHp = com.byazt.lto.hp.hp();
        wVarHp.put("cache_refresh_interval", this.fi);
        wVarHp.put("splash_ad_timeout", this.nr);
        wVarHp.put("non_splash_ad_timeout", this.rk);
        wVarHp.put("app_simple_abtest", this.f18495v);
    }

    public int an() {
        return this.hp;
    }

    public boolean as() {
        if (this.f18489n == Integer.MAX_VALUE) {
            this.f18489n = 1;
        }
        return this.f18489n == 1;
    }

    public Map<String, com.byazt.tgw.jx> ea() {
        return this.dy;
    }

    public Map<String, Integer> fi() {
        return this.ky;
    }

    public boolean gd() {
        return this.nd == 1 && this.hd == 1;
    }

    public com.byazt.xoi.l hd() {
        return this.f18483f;
    }

    public boolean kg() {
        return this.f18490o == 1;
    }

    public Map<String, List<String>> m() {
        return this.wv;
    }

    public Map<String, String> mp() {
        return this.f18481d;
    }

    public boolean nd() {
        return this.zx == 1;
    }

    public Map<String, Integer> nr() {
        return this.xh;
    }

    public int pc() {
        com.byazt.xoi.l lVar = this.f18483f;
        if (lVar != null) {
            return lVar.hp();
        }
        return 0;
    }

    public boolean qu() {
        return this.lv == 1;
    }

    public int rk() {
        return this.yr;
    }

    public boolean ru() {
        com.byazt.aw.l.l("TMe", "enable_bid_result_return = " + this.nd);
        com.byazt.aw.l.l("TMe", "enable_bid_result_return_for_baidu = " + this.hd);
        return gd() || yj();
    }

    public String rv() {
        return this.kg;
    }

    public boolean rz() {
        return this.f18487m == 1;
    }

    public boolean su() {
        return this.as == 1;
    }

    public boolean tw() {
        com.byazt.aw.l.l("TMe", "enable_bid_result_return = " + this.nd);
        com.byazt.aw.l.l("TMe", "enable_bid_result_return_for_ks = " + this.vq);
        return this.nd == 1 && this.vq == 1;
    }

    public int vq() {
        return this.nu;
    }

    public int wt() {
        return this.rz;
    }

    public boolean y() {
        return this.nu == 1;
    }

    public boolean yj() {
        return this.nd == 1 && this.hd == 2;
    }

    public boolean yr() {
        return this.mp == 1;
    }

    public com.byazt.wgi.l zx() {
        if (nd()) {
            return this.f18497y;
        }
        return null;
    }

    public boolean a() {
        return this.an;
    }

    public boolean b() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("type_banner_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean cx() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("ad_event_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean d() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("type_splash_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean di() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("type_interaction_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean dy() {
        return this.f18482e > 0;
    }

    public boolean e() {
        return this.su == 1;
    }

    public boolean eb() {
        return this.pc;
    }

    public boolean ec() {
        return this.f18494u;
    }

    public double f() {
        return this.hq;
    }

    public int gu() {
        return com.byazt.dl.hp.hp(this.gd.get());
    }

    public void hp(boolean z2) {
        this.an = z2;
    }

    public boolean hq() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("type_reward_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean j() {
        return this.rv;
    }

    public String jl() {
        return this.f18493s;
    }

    public boolean jx() {
        w wVarHp;
        if (this.tw == -1 && (wVarHp = com.byazt.lto.hp.hp()) != null) {
            String string = wVarHp.getString("app_abtest", null);
            if (!TextUtils.isEmpty(string)) {
                this.f18485k = string;
                try {
                    s(new JSONObject(this.f18485k));
                } catch (JSONException unused) {
                }
            }
        }
        return this.tw == 1;
    }

    public String k() {
        if (this.jx == null) {
            this.jx = com.byazt.lto.hp.hp().getString(f.f37325c, null);
        }
        return this.jx;
    }

    public long ky() {
        return com.byazt.dl.l.hp().jx();
    }

    public int l() {
        return this.ea;
    }

    public boolean lv() {
        try {
            return Integer.valueOf(this.gu).intValue() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean ms() {
        if (TextUtils.isEmpty(com.byazt.di.hp.jl().zy())) {
            return false;
        }
        com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "--==----- isConfigLoadAndAdnInit: " + q());
        if (com.byazt.dl.j.hp().jx() || !q()) {
            com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "--==----- isConfigLoadAndAdnInit 2");
            return false;
        }
        com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "--==----- isConfigLoadAndAdnInit 1");
        return true;
    }

    public long n() {
        if (this.nr == Long.MIN_VALUE) {
            this.nr = com.byazt.lto.hp.hp().getLong("splash_ad_timeout", 0L);
        }
        return this.nr;
    }

    public long ns() {
        if (this.rk == Long.MIN_VALUE) {
            this.rk = com.byazt.lto.hp.hp().getLong("non_splash_ad_timeout", 0L);
        }
        return this.rk;
    }

    public boolean nu() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("type_native_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean o() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("type_interactionfull_control");
        return bool == null || !bool.booleanValue();
    }

    public int pu() {
        return com.byazt.dl.l.hp().l();
    }

    public boolean q() {
        return this.f18480b.get();
    }

    public boolean r() {
        return Integer.valueOf(this.gu).intValue() > 1;
    }

    public boolean s() {
        return this.ru == 1;
    }

    public long sz() {
        if (this.fi == Long.MIN_VALUE) {
            this.fi = com.byazt.lto.hp.hp().getLong("cache_refresh_interval", 12L);
        }
        return this.fi * bg.f30873s;
    }

    public boolean u() {
        return this.zy == 1;
    }

    public boolean ud() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("type_full_control");
        return bool == null || !bool.booleanValue();
    }

    public String v() {
        return this.vv;
    }

    public String vv() {
        return this.f18495v;
    }

    public boolean w() {
        return this.qu;
    }

    public boolean wv() {
        if (!qh()) {
            return false;
        }
        Boolean bool = this.cx.get("type_feed_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean xh() {
        return (com.byazt.dl.j.hp().jx() || com.byazt.dl.jx.hp().j()) ? false : true;
    }

    public String xs() {
        return this.f18485k;
    }

    public String zy() {
        return this.f18491q;
    }

    private String a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.dy.put(next, com.byazt.tgw.jx.hp(next, jSONObject.optJSONObject(next)));
        }
        return jSONObject.toString();
    }

    private void e(JSONObject jSONObject) {
        this.wv.clear();
        if (jSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                        ArrayList arrayList = new ArrayList();
                        if (jSONArrayOptJSONArray != null) {
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                if (jSONArrayOptJSONArray.get(i2) != null) {
                                    arrayList.add(jSONArrayOptJSONArray.get(i2).toString());
                                }
                            }
                        }
                        if (!TextUtils.isEmpty(next) && !arrayList.isEmpty()) {
                            this.wv.put(next, arrayList);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private String eb(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.zy = jSONObject.optInt("fetch_ad_type", 0);
        return jSONObject.toString();
    }

    private String gu(JSONObject jSONObject) {
        this.cx.clear();
        if (jSONObject == null) {
            return null;
        }
        try {
            if (jSONObject.optBoolean("ad_event_control")) {
                this.cx.put("ad_event_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_banner_control")) {
                this.cx.put("type_banner_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_interaction_control")) {
                this.cx.put("type_interaction_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_interactionfull_control")) {
                this.cx.put("type_interactionfull_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_splash_control")) {
                this.cx.put("type_splash_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_feed_control")) {
                this.cx.put("type_feed_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_reward_control")) {
                this.cx.put("type_reward_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_full_control")) {
                this.cx.put("type_full_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_native_control")) {
                this.cx.put("type_native_control", Boolean.TRUE);
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private String j(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.f18497y = new com.byazt.wgi.l(jSONObject);
        return jSONObject.toString();
    }

    private void jl(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.ky.clear();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.ky.put(next, Integer.valueOf(jSONObject.optInt(next)));
        }
    }

    private void q(JSONObject jSONObject) {
        this.f18481d.clear();
        this.f18490o = 0;
        if (jSONObject == null) {
            return;
        }
        this.f18490o = jSONObject.optInt("if_sample", 0);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("call_stack_path");
        if (jSONObjectOptJSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        String strOptString = jSONObjectOptJSONObject.optString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(strOptString)) {
                            this.f18481d.put(next, strOptString);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private void s(JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("app_ab_version");
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString.trim()) || TextUtils.equals(strOptString.trim(), "null")) {
                jSONObject.remove("app_ab_version");
            }
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("app_ab_params"));
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("mediation_settings");
            if (jSONObjectOptJSONObject != null) {
                this.f18488ms = jSONObjectOptJSONObject.optInt("ad_request_optmize");
                boolean z2 = true;
                this.rv = jSONObjectOptJSONObject.optInt("applog_cypher") == 2;
                this.qu = jSONObjectOptJSONObject.optInt("reward_cypher") == 2;
                this.an = jSONObjectOptJSONObject.optInt("config_cypher") == 2;
                if (jSONObjectOptJSONObject.optInt("exchange_cypher") != 2) {
                    z2 = false;
                }
                this.pc = z2;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("init_opt");
            if (jSONObjectOptJSONObject2 != null) {
                this.tw = jSONObjectOptJSONObject2.optInt("init_7600");
            } else {
                this.tw = 0;
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("event_upload_settings");
            if (jSONObjectOptJSONObject3 != null) {
                this.su = jSONObjectOptJSONObject3.optInt("show_upload");
            }
        } catch (Throwable unused) {
        }
    }

    private String w(JSONObject jSONObject) throws JSONException {
        if (jSONObject != null && jSONObject.length() != 0) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray(next);
                    if (jSONArray.length() > 0) {
                        ArrayList arrayList = new ArrayList();
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            arrayList.add(com.byazt.tgw.jx.hp(next, jSONArray.optJSONObject(i2)));
                        }
                        this.f18492r.put(next, arrayList);
                    }
                } catch (Exception unused) {
                }
            }
            return jSONObject.toString();
        }
        return "";
    }

    private void zy(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.xh.clear();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.xh.put(next, Integer.valueOf(jSONObject.optInt(next)));
        }
    }

    public com.byazt.tgw.l hp(String str, int i2, int i3) {
        return com.byazt.dl.j.hp().hp(str, i2, i3);
    }

    public com.byazt.tgw.hp l(String str) {
        return com.byazt.dl.jx.hp().hp(str);
    }

    private void l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.fi = jSONObject.optLong("cache_refresh_interval", 12L);
        this.nr = jSONObject.optLong("splash_ad_timeout", 0L);
        this.rk = jSONObject.optLong("non_splash_ad_timeout", 0L);
    }

    public long hp(int i2, String str) {
        com.byazt.tgw.l lVarHp = hp(str, i2, 101);
        if (lVarHp != null) {
            return lVarHp.mp();
        }
        return 3000L;
    }

    public void j(String str) {
        try {
            w wVarHp = com.byazt.lto.hp.hp();
            if ("2".equals(str)) {
                this.cx.put("active_control", Boolean.TRUE);
                wVarHp.put("all_active_control", true);
            } else {
                this.cx.put("active_control", Boolean.FALSE);
                wVarHp.put("all_active_control", false);
            }
        } catch (Exception unused) {
        }
    }

    public com.byazt.tgw.hp hp(String str) {
        return com.byazt.dl.jx.hp().hp(str);
    }

    public boolean hp(String str, String str2, int i2) {
        List<e> listRz;
        com.byazt.tgw.l lVarHp = com.byazt.dl.j.hp().hp(str, i2, 101);
        if (lVarHp == null || (listRz = lVarHp.rz()) == null) {
            return false;
        }
        for (e eVar : listRz) {
            if (eVar != null && TextUtils.equals(eVar.vv(), str2)) {
                return eVar.as();
            }
        }
        return false;
    }

    public boolean l(String str, int i2) {
        return (com.byazt.dl.jx.hp().j() || com.byazt.dl.j.hp().jx() || com.byazt.dl.j.hp().hp(str, i2, 101) == null) ? false : true;
    }

    private String l(JSONArray jSONArray) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONArray != null) {
            ConcurrentHashMap<String, com.byazt.lyn.l> concurrentHashMap = new ConcurrentHashMap<>();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("break_request_error_code")) != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                        arrayList.add(jSONArrayOptJSONArray.optString(i3));
                    }
                    com.byazt.lyn.l lVar = new com.byazt.lyn.l();
                    lVar.hp(jSONObjectOptJSONObject.optLong("break_request_duration"));
                    lVar.hp(arrayList);
                    concurrentHashMap.put(jSONObjectOptJSONObject.optString(MediationConstant.EXTRA_ADN_NAME), lVar);
                }
            }
            com.byazt.lyn.jx.hp().hp(concurrentHashMap);
            return jSONArray.toString();
        }
        com.byazt.lyn.jx.hp().hp(null);
        return null;
    }

    public List<com.byazt.tgw.jx> a(String str) {
        return this.f18492r.get(str);
    }

    public boolean jx(String str) {
        return com.byazt.dl.jx.hp().l(str);
    }

    private String jx(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.f18483f = new com.byazt.xoi.l(jSONObject);
        return jSONObject.toString();
    }

    public void j(int i2) {
        this.nu = i2;
    }

    private String jx(JSONArray jSONArray) {
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArrayOptJSONArray2;
        if (jSONArray != null) {
            ConcurrentHashMap<String, List<com.byazt.lyn.l>> concurrentHashMap = new ConcurrentHashMap<>();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString(MediationConstant.EXTRA_ADN_NAME);
                    if (!TextUtils.isEmpty(strOptString) && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("break_request_error_code")) != null && (jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("rit_list")) != null) {
                        ArrayList arrayList = new ArrayList();
                        for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                            arrayList.add(jSONArrayOptJSONArray.optString(i3));
                        }
                        com.byazt.lyn.l lVar = new com.byazt.lyn.l();
                        lVar.hp(jSONObjectOptJSONObject.optLong("break_request_duration"));
                        lVar.hp(arrayList);
                        ArrayList arrayList2 = new ArrayList();
                        for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                            arrayList2.add(jSONArrayOptJSONArray2.optString(i4));
                        }
                        lVar.l(arrayList2);
                        List<com.byazt.lyn.l> arrayList3 = concurrentHashMap.get(strOptString);
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList<>();
                        }
                        arrayList3.add(lVar);
                        concurrentHashMap.put(strOptString, arrayList3);
                    }
                }
            }
            k.hp().hp(concurrentHashMap);
            return jSONArray.toString();
        }
        k.hp().hp(null);
        return null;
    }

    public boolean hp(String str, int i2) {
        com.byazt.tgw.l lVarHp;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return com.byazt.dl.j.hp().jx() || (lVarHp = com.byazt.dl.j.hp().hp(str, i2, 101)) == null || lVarHp.xh() == i2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(35:5|(4:102|7|8|(1:(4:11|(1:13)|14|15)(3:(1:17)|18|19))(1:20))(1:(1:23)(1:24))|25|(1:27)(1:28)|29|(1:32)|33|(1:36)|37|(1:40)|41|(1:43)(1:44)|45|(1:49)|50|(1:52)(1:53)|54|94|55|98|56|57|104|58|59|96|60|(1:62)(1:65)|66|67|100|68|69|70|(4:72|(2:74|75)|14|15)(4:76|(1:78)|79|80)) */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02b4, code lost:
    
        r4 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x02b6, code lost:
    
        r0 = null;
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x031b, code lost:
    
        r4 = r26;
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x031f, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0321, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0329, code lost:
    
        if (com.byazt.fct.jx.jx() != false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x032c, code lost:
    
        if (r24 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x032e, code lost:
    
        com.byazt.owd.hp.hp().jx();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0335, code lost:
    
        hp(r3, r4, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0338, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x032c  */
    @Override // com.byazt.bcj.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(org.json.JSONObject r23, final boolean r24, boolean r25, org.json.JSONObject r26) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 825
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.bcj.jx.hp(org.json.JSONObject, boolean, boolean, org.json.JSONObject):void");
    }

    public j w(String str) {
        return this.pu.get(str);
    }

    public boolean l(int i2) {
        if (!qh()) {
            return false;
        }
        if (i2 == 1) {
            return b();
        }
        if (i2 == 2) {
            return di();
        }
        if (i2 == 3) {
            return d();
        }
        if (i2 == 5) {
            return wv() && nu();
        }
        if (i2 == 10) {
            return o();
        }
        if (i2 == 7) {
            return hq();
        }
        if (i2 != 8) {
            return true;
        }
        return ud();
    }

    public void jx(int i2) {
        this.f18489n = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    @Override // com.byazt.bcj.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(org.json.JSONObject r6, org.json.JSONObject r7, boolean r8) throws org.json.JSONException {
        /*
            r5 = this;
            if (r6 != 0) goto L4
            goto L8b
        L4:
            r0 = 0
            r1 = 0
            java.lang.String r2 = "app_abtest"
            org.json.JSONObject r2 = r6.optJSONObject(r2)     // Catch: java.lang.Throwable -> L82
            if (r2 == 0) goto L15
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L82
            r5.f18495v = r2     // Catch: java.lang.Throwable -> L82
            goto L19
        L15:
            java.lang.String r2 = ""
            r5.f18495v = r2     // Catch: java.lang.Throwable -> L82
        L19:
            if (r8 != 0) goto L36
            z.a r6 = new z.a     // Catch: java.lang.Throwable -> L82
            r6.<init>()     // Catch: java.lang.Throwable -> L82
            com.byazt.aw.w.j(r6)     // Catch: java.lang.Throwable -> L82
            if (r8 == 0) goto L8b
            boolean r6 = com.byazt.fct.jx.jx()
            if (r6 == 0) goto L2e
        L2b:
            r5.hp(r1, r7, r0)
        L2e:
            com.byazt.owd.hp r6 = com.byazt.owd.hp.hp()
            r6.l()
            return
        L36:
            java.util.concurrent.atomic.AtomicInteger r2 = r5.gd     // Catch: java.lang.Throwable -> L82
            int r2 = r2.get()     // Catch: java.lang.Throwable -> L82
            r3 = 3
            if (r2 < r3) goto L48
            if (r8 == 0) goto L8b
            boolean r6 = com.byazt.fct.jx.jx()
            if (r6 == 0) goto L2e
            goto L2b
        L48:
            r5.wt = r6     // Catch: java.lang.Throwable -> L82
            r5.hp(r3)     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = "adn_init_conf"
            org.json.JSONObject r2 = r6.optJSONObject(r2)     // Catch: java.lang.Throwable -> L82
            com.byazt.dl.jx r3 = com.byazt.dl.jx.hp()     // Catch: java.lang.Throwable -> L82
            r3.hp(r2)     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = "rit_conf"
            org.json.JSONArray r2 = r6.optJSONArray(r2)     // Catch: java.lang.Throwable -> L82
            com.byazt.dl.j r3 = com.byazt.dl.j.hp()     // Catch: java.lang.Throwable -> L82
            r4 = 1
            r3.hp(r2, r1, r4)     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = "app_common_config"
            org.json.JSONObject r6 = r6.optJSONObject(r2)     // Catch: java.lang.Throwable -> L82
            r5.l(r6)     // Catch: java.lang.Throwable -> L82
            z.b r6 = new z.b     // Catch: java.lang.Throwable -> L82
            r6.<init>()     // Catch: java.lang.Throwable -> L82
            com.byazt.aw.w.j(r6)     // Catch: java.lang.Throwable -> L82
            if (r8 == 0) goto L8b
            boolean r6 = com.byazt.fct.jx.jx()
            if (r6 == 0) goto L2e
            goto L2b
        L82:
            if (r8 == 0) goto L8b
            boolean r6 = com.byazt.fct.jx.jx()
            if (r6 == 0) goto L2e
            goto L2b
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.bcj.jx.hp(org.json.JSONObject, org.json.JSONObject, boolean):void");
    }

    private String hp(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                j.hp(jSONArray.optJSONObject(i2), this.pu);
            } catch (Exception unused) {
                com.byazt.aw.l.jx(MediationConstant.TAG, "maybe some rit parse dynamic rules fail .....");
            }
        }
        return jSONArray.toString();
    }

    public void hp(com.byazt.xzd.l lVar) {
        this.jd = lVar;
    }

    public void hp(final boolean z2, final JSONObject jSONObject, com.byazt.xzd.l lVar) throws JSONException {
        if (lVar != null) {
            this.jd = lVar;
        }
        final boolean zXh = xh();
        if (zXh) {
            a.hp(jSONObject, "s-config_done");
        }
        final int iGu = gu();
        com.byazt.uhd.hp.l().hp(com.byazt.di.l.getContext(), z2, zXh, jSONObject, new com.byazt.xzd.l() { // from class: com.byazt.bcj.jx.2
            @Override // com.byazt.xzd.l
            public void hp() throws JSONException {
                com.byazt.aw.l.j("TTMediationSDK_SDK_Init", "MSDK init finish.........hasConfig:" + zXh);
                if (zXh) {
                    jx.this.f18480b.set(true);
                    jx.this.t();
                    a.hp(jSONObject, "s-end");
                    if (jx.this.jd != null) {
                        jx.this.jd.hp();
                    }
                    com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.bcj.jx.2.1
                        @Override // java.lang.Runnable
                        public void run() throws JSONException {
                            if (!jx.this.di.get()) {
                                jx.this.di.set(true);
                                int iHp = com.byazt.uhd.hp.hp();
                                long jElapsedRealtime = SystemClock.elapsedRealtime() - com.byazt.fct.jx.hp();
                                a.hp(jSONObject, "s-event_end");
                                a.hp();
                                HashMap map = new HashMap();
                                map.put("config_use_type", Integer.valueOf(iGu));
                                if (jx.this.yj) {
                                    map.put("is_import_cfg", Boolean.valueOf(jx.this.yj));
                                }
                                if (com.byazt.fct.j.hp()) {
                                    com.byazt.aw.l.hp("TMe", "-----==---- 正常上报sdk_init_end");
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    com.byazt.fct.j.hp(jElapsedRealtime, iHp, z2 ? 1 : 0, -1L, jSONObject, map);
                                } else {
                                    com.byazt.aw.l.hp("TMe", "-----==---- 延时上报sdk_init_end");
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    com.byazt.fct.j.hp(jElapsedRealtime, iHp, z2 ? 1 : 0, jSONObject, map);
                                }
                                com.byazt.xoi.hp.hp();
                                com.byazt.aw.l.hp(MediationConstant.TAG, "sdk init end, duration: " + jElapsedRealtime + ", initAdnCount: " + iHp + ", isFromLocalConfig: " + z2);
                            }
                            l.hp(com.byazt.di.l.l()).hp(new com.byazt.bki.w() { // from class: com.byazt.bcj.jx.2.1.1
                                @Override // com.byazt.bki.w
                                public void hp(List<String> list) {
                                    com.byazt.aw.l.hp("TMe", "初始化更新pangle配置成功");
                                }
                            });
                        }
                    });
                }
            }
        });
    }

    @Override // com.byazt.bcj.hp
    public void hp(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.optInt("state_code") != 30004) {
            return;
        }
        w wVarHp = com.byazt.lto.hp.hp();
        this.f18484j = jSONObject.optLong("max_age");
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.f18484j;
        this.f18496w = jCurrentTimeMillis + j2;
        wVarHp.put("max_age", j2);
        wVarHp.put("max_expire_time", this.f18496w);
    }

    public void hp(int i2) {
        if (i2 == 3) {
            if (this.gd.get() == 1) {
                i2 = 5;
            } else if (this.gd.get() == 2) {
                i2 = 4;
            }
        }
        if (i2 < this.gd.get()) {
            return;
        }
        this.gd.set(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0105 A[Catch: all -> 0x0138, TryCatch #0 {all -> 0x0138, blocks: (B:3:0x0005, B:5:0x0012, B:7:0x001c, B:10:0x002c, B:12:0x0036, B:14:0x003c, B:19:0x004a, B:20:0x005f, B:22:0x006d, B:24:0x0077, B:26:0x008b, B:28:0x0097, B:29:0x009c, B:40:0x00db, B:41:0x00e1, B:42:0x00fa, B:44:0x0105, B:47:0x010e, B:45:0x0109, B:16:0x0042), top: B:69:0x0005, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0109 A[Catch: all -> 0x0138, TryCatch #0 {all -> 0x0138, blocks: (B:3:0x0005, B:5:0x0012, B:7:0x001c, B:10:0x002c, B:12:0x0036, B:14:0x003c, B:19:0x004a, B:20:0x005f, B:22:0x006d, B:24:0x0077, B:26:0x008b, B:28:0x0097, B:29:0x009c, B:40:0x00db, B:41:0x00e1, B:42:0x00fa, B:44:0x0105, B:47:0x010e, B:45:0x0109, B:16:0x0042), top: B:69:0x0005, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010e A[Catch: all -> 0x0138, TRY_LEAVE, TryCatch #0 {all -> 0x0138, blocks: (B:3:0x0005, B:5:0x0012, B:7:0x001c, B:10:0x002c, B:12:0x0036, B:14:0x003c, B:19:0x004a, B:20:0x005f, B:22:0x006d, B:24:0x0077, B:26:0x008b, B:28:0x0097, B:29:0x009c, B:40:0x00db, B:41:0x00e1, B:42:0x00fa, B:44:0x0105, B:47:0x010e, B:45:0x0109, B:16:0x0042), top: B:69:0x0005, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0120  */
    @Override // com.byazt.bcj.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(boolean r14, org.json.JSONObject r15) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.bcj.jx.hp(boolean, org.json.JSONObject):void");
    }

    private void hp(w wVar) throws JSONException {
        this.ea = wVar.getInt("is_trusteeship_monetize", 0);
        this.ru = wVar.getInt("share_cache_enable", 0);
        this.jx = wVar.getString(f.f37325c, null);
        this.f18484j = wVar.getLong("max_age", 0L);
        this.f18496w = wVar.getLong("max_expire_time", 0L);
        this.f18479a = wVar.getString("ab_version", "");
        this.eb = wVar.getString("ab_params", "");
        this.f18493s = wVar.getString(bv.f48888O, "");
        this.f18491q = wVar.getString("transparent_params", "");
        this.nu = wVar.getInt("if_test", 0);
        this.f18482e = wVar.getInt("network_permission", 0);
        this.gu = wVar.getString("ecpm_precision_level", "0");
        this.jl = wVar.getString("fetch_primerit_level", "0");
        this.vv = wVar.getString("tt_app_log_url", "log-api.pangolin-sdk-toutiao.com/service/2/app_log/");
        this.ec = wVar.getLong("break_request_times", 0L);
        this.sz = wVar.getLong("break_request_hold_time", 10000L);
        this.as = wVar.getInt("ex_info", 0);
        this.lv = wVar.getInt("if_enable_label", 0);
        this.hp = wVar.getInt("cpm_expire_time", 259200000);
        this.hq = wVar.getFloat("custom_adn_sample_ratio", 0.0f);
        this.mp = wVar.getInt("enable_label_return", 0);
        this.f18487m = wVar.getInt("dynamic_policy_enable", 0);
        this.zx = wVar.getInt("behavior_policy_enable", 0);
        this.yr = wVar.getInt("limit_p_a", 0);
        this.rz = wVar.getInt("limit_p_r", 0);
        this.nd = wVar.getInt("enable_bid_result_return", 0);
        this.hd = wVar.getInt("enable_bid_result_return_for_baidu", 0);
        this.vq = wVar.getInt("enable_bid_result_return_for_ks", 0);
        com.byazt.qca.hp.hp().hp(this.ec, this.sz);
        String string = wVar.getString("network_conf", null);
        if (!TextUtils.isEmpty(string)) {
            eb(new JSONObject(string));
        }
        String string2 = wVar.getString("adn_control_conf", null);
        if (!TextUtils.isEmpty(string2)) {
            if (!string2.startsWith("[") && !string2.startsWith("{")) {
                string2 = com.byazt.zg.hp.l(string2, com.byazt.zg.l.hp());
            }
            l(new JSONArray(string2));
        }
        String string3 = wVar.getString("rit_adn_control_conf", null);
        if (!TextUtils.isEmpty(string3)) {
            jx(new JSONArray(string3));
        }
        String string4 = wVar.getString("module_control", null);
        if (!TextUtils.isEmpty(string4)) {
            gu(new JSONObject(string4));
        }
        boolean z2 = wVar.getBoolean("all_active_control", false);
        if (z2) {
            this.cx.put("active_control", Boolean.valueOf(z2));
        }
        String string5 = wVar.getString("call_stack", null);
        if (!TextUtils.isEmpty(string5)) {
            q(new JSONObject(string5));
        }
        String string6 = wVar.getString("custom_adn_feature", null);
        if (!TextUtils.isEmpty(string6)) {
            e(new JSONObject(string6));
        }
        String string7 = wVar.getString("timeout_req", null);
        if (!TextUtils.isEmpty(string7)) {
            jl(new JSONObject(string7));
        }
        String string8 = wVar.getString("is_callback", null);
        if (!TextUtils.isEmpty(string8)) {
            zy(new JSONObject(string8));
        }
        String string9 = wVar.getString("key_supervisor_feature", null);
        if (!TextUtils.isEmpty(string9)) {
            com.byazt.zg.k.hp(true);
            com.byazt.zg.k.hp(new JSONObject(string9));
        } else {
            com.byazt.zg.k.hp(false);
        }
        String string10 = wVar.getString("label_outputs", null);
        if (!TextUtils.isEmpty(string10)) {
            if (!string10.startsWith("[") && !string10.startsWith("{")) {
                string10 = com.byazt.zg.hp.l(string10, com.byazt.zg.l.hp());
            }
            if (!TextUtils.isEmpty(string10)) {
                a(new JSONObject(string10));
            }
        }
        String string11 = wVar.getString("label_group_infos", null);
        if (!TextUtils.isEmpty(string11)) {
            if (!string11.startsWith("[") && !string11.startsWith("{")) {
                string11 = com.byazt.zg.hp.l(string11, com.byazt.zg.l.hp());
            }
            if (!TextUtils.isEmpty(string11)) {
                w(new JSONObject(string11));
            }
        }
        String string12 = wVar.getString("dynamic_rules", null);
        if (!TextUtils.isEmpty(string12)) {
            if (!string12.startsWith("[") && !string12.startsWith("{")) {
                string12 = com.byazt.zg.hp.l(string12, com.byazt.zg.l.hp());
            }
            if (!TextUtils.isEmpty(string12)) {
                hp(new JSONArray(string12));
            }
        }
        String string13 = wVar.getString("dynamic_policy", null);
        if (!TextUtils.isEmpty(string13)) {
            if (!string13.startsWith("[") && !string13.startsWith("{")) {
                string13 = com.byazt.zg.hp.l(string13, com.byazt.zg.l.hp());
            }
            if (!TextUtils.isEmpty(string13)) {
                jx(new JSONObject(string13));
            }
        }
        String string14 = wVar.getString("behavior_policy", null);
        if (!TextUtils.isEmpty(string14)) {
            if (!string14.startsWith("[") && !string14.startsWith("{")) {
                string14 = com.byazt.zg.hp.l(string14, com.byazt.zg.l.hp());
            }
            if (!TextUtils.isEmpty(string14)) {
                j(new JSONObject(string14));
            }
        }
        String string15 = wVar.getString("inter_full_refresh_cfg", null);
        if (!TextUtils.isEmpty(string15)) {
            String strL = com.byazt.zg.hp.l(string15, com.byazt.zg.l.hp());
            if (!TextUtils.isEmpty(strL)) {
                com.byazt.bbe.hp.hp(strL);
            }
        }
        String string16 = wVar.getString("gm_req_sr", null);
        if (!TextUtils.isEmpty(string16)) {
            String strL2 = com.byazt.zg.hp.l(string16, com.byazt.zg.l.hp());
            if (!TextUtils.isEmpty(strL2)) {
                try {
                    com.byazt.mey.w.hp(new JSONArray(strL2));
                } catch (JSONException unused) {
                }
            }
        }
        String string17 = wVar.getString("ex_", null);
        if (!TextUtils.isEmpty(string17) && !string17.startsWith("[") && !string17.startsWith("{")) {
            this.kg = com.byazt.zg.hp.l(string17, com.byazt.zg.l.hp());
        }
        String string18 = wVar.getString("app_simple_abtest", null);
        if (!TextUtils.isEmpty(string18)) {
            this.f18495v = string18;
        }
        if (TextUtils.isEmpty(this.f18485k)) {
            String string19 = wVar.getString("app_abtest", null);
            if (TextUtils.isEmpty(string19)) {
                return;
            }
            this.f18485k = string19;
            try {
                s(new JSONObject(this.f18485k));
            } catch (JSONException unused2) {
            }
        }
    }

    @Override // com.byazt.bcj.hp
    public void hp() {
        this.f18494u = xh();
    }

    public List<String> hp(List<String> list) {
        if (list != null && list.size() > 0) {
            if (com.byazt.dl.j.hp().jx()) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (com.byazt.dl.j.hp().hp(str, 0, 101) == null) {
                    arrayList.add(str);
                }
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
        }
        return null;
    }

    public void hp(u uVar) {
        if (uVar == null) {
            return;
        }
        if (ms()) {
            uVar.hp();
            return;
        }
        synchronized (this.ns) {
            try {
                if (!this.ns.contains(uVar)) {
                    this.ns.add(uVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean hp(long j2) {
        return j2 < ((long) this.hp);
    }
}

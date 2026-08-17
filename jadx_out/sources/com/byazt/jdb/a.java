package com.byazt.jdb;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.byazt.jz.sz;
import com.byazt.kfp.hp;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.mp;
import com.byazt.ymw.k;
import com.byazt.ymw.u;
import com.byazt.zn.kg;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 169, 54})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final mp f21309a;
    public com.byazt.tq.hp cx;

    /* renamed from: d, reason: collision with root package name */
    public long f21311d;
    public WeakReference<l> dy;

    /* renamed from: j, reason: collision with root package name */
    public String f21313j;
    public JSONObject ns;
    public com.byazt.ikh.j sz;
    public String ud;

    /* renamed from: w, reason: collision with root package name */
    public String f21322w;
    public Runnable wv;
    public int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f21315l = false;
    public int jx = -1;
    public String eb = "landingpage";

    /* renamed from: s, reason: collision with root package name */
    public long f21319s = 0;

    /* renamed from: q, reason: collision with root package name */
    public long f21318q = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f21312e = 0;
    public long gu = 0;
    public long jl = 0;
    public boolean zy = false;

    /* renamed from: k, reason: collision with root package name */
    public long f21314k = 0;

    /* renamed from: v, reason: collision with root package name */
    public long f21321v = 0;

    /* renamed from: u, reason: collision with root package name */
    public long f21320u = 0;
    public long xs = -1;
    public boolean vv = false;
    public AtomicInteger ec = new AtomicInteger(0);

    /* renamed from: n, reason: collision with root package name */
    public boolean f21316n = false;

    /* renamed from: b, reason: collision with root package name */
    public AtomicBoolean f21310b = new AtomicBoolean(false);
    public boolean di = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f21317o = true;
    public final AtomicBoolean hq = new AtomicBoolean(false);
    public final Map<String, kg.hp> nu = new ConcurrentHashMap();

    @com.byazt.kj.hp(hp = {0, 1, 169, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {
        public final AtomicInteger hp;

        /* renamed from: l, reason: collision with root package name */
        public final WeakReference<l> f21324l;

        public hp(AtomicInteger atomicInteger, WeakReference<l> weakReference) {
            this.hp = atomicInteger;
            this.f21324l = weakReference;
        }

        @JavascriptInterface
        public String getUrl() {
            return "";
        }

        @JavascriptInterface
        public void readHtml(String str, String str2) {
        }

        @JavascriptInterface
        public void readPercent(String str) {
            int i2 = 0;
            try {
                int iIntValue = Float.valueOf(str).intValue();
                if (iIntValue > 100) {
                    i2 = 100;
                } else if (iIntValue >= 0) {
                    i2 = iIntValue;
                }
            } catch (Throwable unused) {
            }
            AtomicInteger atomicInteger = this.hp;
            if (atomicInteger != null) {
                atomicInteger.set(i2);
            }
            WeakReference<l> weakReference = this.f21324l;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f21324l.get().hp(str);
        }
    }

    public interface l {
        void hp(String str);
    }

    public a(mp mpVar, com.byazt.ikh.j jVar) {
        this.f21309a = mpVar;
        this.sz = jVar;
        if (jVar != null) {
            jVar.addJavascriptInterface(new hp(this.ec, this.dy), "JS_LANDING_PAGE_LOG_OBJ");
        }
        this.f21311d = System.currentTimeMillis();
        this.ud = String.valueOf(SystemClock.elapsedRealtime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        try {
            if (!TextUtils.isEmpty(com.byazt.kfp.hp.hp) && this.f21309a != null) {
                StringBuilder sb = new StringBuilder(com.byazt.kfp.hp.hp);
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("cid", this.f21309a.j());
                jSONObject.putOpt("ad_id", this.f21309a.cx());
                jSONObject.put("log_extra", this.f21309a.w_());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("web_init_time", this.f21320u);
                jSONObject2.put("click_time", this.f21321v);
                jSONObject2.put("web_url", this.f21309a.s());
                jSONObject.put("client_info", jSONObject2);
                com.byazt.kfp.hp.hp(sb, "\"/** adInfo **/\"", jSONObject.toString());
                String string = sb.toString();
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                String strConcat = "javascript:".concat(String.valueOf(string));
                com.byazt.ikh.j jVar = this.sz;
                if (jVar != null) {
                    k.hp(jVar, strConcat);
                }
            }
        } catch (Throwable th) {
            u.hp(th.getMessage());
        }
    }

    public void a() {
        com.byazt.ikh.j jVar = this.sz;
        if (jVar != null) {
            jVar.removeJavascriptInterface("JS_LANDING_PAGE_LOG_OBJ");
        }
        this.sz = null;
        if (!this.f21310b.get() && this.f21315l) {
            j.jx(this.f21309a, this.eb, System.currentTimeMillis() - this.f21314k);
        }
        if ("landingpage".equals(this.eb) || "landingpage_endcard".equals(this.eb)) {
            com.byazt.mb.jx.jx().hp("landingFinish", this.f21309a, this.ud);
        }
        this.wv = null;
        if (this.nu.isEmpty()) {
            return;
        }
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.jdb.a.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws JSONException {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("web_cache_hit_report");
                if (a.this.f21309a != null) {
                    lVarHp.a(a.this.f21309a.ns());
                }
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                for (kg.hp hpVar : a.this.nu.values()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("url", hpVar.jx());
                        jSONObject2.put("hit", hpVar.j());
                        jSONObject2.put("miss", hpVar.w());
                        jSONArray.put(jSONObject2);
                    } catch (JSONException unused) {
                    }
                }
                try {
                    jSONObject.put("hit_records", jSONArray);
                } catch (JSONException unused2) {
                }
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "web_cache_hit_report");
    }

    public void eb() {
        com.byazt.vfd.hp hpVarQh;
        com.byazt.ikh.j jVar;
        if (this.hp != 2 || !this.zy || (hpVarQh = sz.l().qh()) == null || (jVar = this.sz) == null) {
            return;
        }
        hpVarQh.hp(jVar.getWebView(), this.f21309a);
    }

    public a j(long j2) {
        this.xs = j2;
        return this;
    }

    public Map<String, kg.hp> s() {
        return this.nu;
    }

    public void w() {
        if (this.f21317o) {
            this.f21317o = false;
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.f21311d);
                jSONObject.put("end", System.currentTimeMillis());
                com.byazt.nwu.hp.hp(jSONObject, this.f21309a);
            } catch (JSONException unused) {
            }
            j.hp(this.f21309a, "landingpage", "agg_stay_page", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.a.1
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject2) throws JSONException {
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
                }
            });
        }
        if (this.hp == 2) {
            if (this.f21312e > 0 || !l()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.f21318q = jCurrentTimeMillis;
                long jMax = jCurrentTimeMillis - Math.max(this.f21319s, this.f21312e);
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("load_status", this.hp);
                    jSONObject2.put("max_scroll_percent", this.ec.get());
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                } catch (JSONException unused2) {
                }
                hp("stay_page", jSONObject2, Math.min(jMax, 600000L));
                com.byazt.mb.jx.jx().hp("landingPause", this.f21309a, this.ud);
            }
        }
    }

    public void hp(l lVar) {
        this.dy = new WeakReference<>(lVar);
    }

    public void j() {
        this.f21319s = System.currentTimeMillis();
        if (this.f21314k == 0) {
            this.f21314k = System.currentTimeMillis();
        }
        if ("landingpage".equals(this.eb) || "landingpage_endcard".equals(this.eb)) {
            if (this.hq.compareAndSet(false, true)) {
                com.byazt.mb.jx.jx().hp("landingStart", this.f21309a, this.ud);
            } else {
                com.byazt.mb.jx.jx().hp("landingContinue", this.f21309a, this.ud);
            }
        }
    }

    public com.byazt.tq.hp jx() {
        return this.cx;
    }

    public boolean l() {
        return this.di;
    }

    public void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.eb = str;
    }

    public a jx(long j2) {
        this.f21320u = j2;
        return this;
    }

    public a l(boolean z2) {
        this.f21316n = z2;
        return this;
    }

    public a l(long j2) {
        this.f21321v = j2;
        return this;
    }

    public String hp() {
        return this.eb;
    }

    public void l(String str) throws JSONException {
        if (this.f21316n) {
            if ("load_finish".equals(str) && "landingpage".equals(this.eb)) {
                Runnable runnable = new Runnable() { // from class: com.byazt.jdb.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.q();
                    }
                };
                this.wv = runnable;
                com.byazt.kfp.hp.hp(new hp.RunnableC0296hp(runnable));
            }
            long j2 = this.jl - this.gu;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", this.jx);
                jSONObject.put("error_msg", this.f21313j);
                jSONObject.put("error_url", this.f21322w);
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
                long j3 = this.f21321v;
                if (j3 > 0) {
                    jSONObject.put("exp_duration", this.jl - j3);
                }
                long j4 = this.f21320u;
                if (j4 > 0) {
                    jSONObject.put("web_duration", this.jl - j4);
                }
                long j5 = this.xs;
                if (j5 >= 0) {
                    jSONObject.put("webview_duration", j5);
                }
            } catch (Exception unused) {
            }
            hp(str, jSONObject, Math.min(j2, 600000L));
        }
    }

    public void hp(long j2) {
        this.f21312e = j2;
    }

    public void hp(boolean z2) {
        this.di = z2;
    }

    public void hp(com.byazt.tq.hp hpVar) {
        this.cx = hpVar;
    }

    public void hp(JSONObject jSONObject) {
        this.ns = jSONObject;
    }

    public void hp(WebView webView, int i2) {
        if (this.gu == 0 && i2 > 0) {
            this.hp = 1;
            this.gu = System.currentTimeMillis();
        } else {
            if (i2 != 100 || this.zy) {
                return;
            }
            this.zy = true;
            this.jl = System.currentTimeMillis();
            if (!"landingpage".equals(this.eb) || this.hp == 3) {
                return;
            }
            l("landingpage_load_hundred");
        }
    }

    public void hp(WebView webView, String str, Bitmap bitmap) {
        com.byazt.tq.hp hpVar = this.cx;
        if (hpVar != null) {
            hpVar.a();
        }
        if (this.f21315l) {
            return;
        }
        this.f21314k = System.currentTimeMillis();
        this.f21315l = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "h5");
            jSONObject.putOpt("render_type_2", 0);
        } catch (Exception unused) {
        }
        hp("load_start", jSONObject);
    }

    public void hp(WebView webView) {
        com.byazt.tq.hp hpVar = this.cx;
        if (hpVar != null) {
            hpVar.eb();
        }
        if (this.jl <= 0) {
            this.jl = System.currentTimeMillis();
        }
        if (webView != null && !this.vv && this.f21316n) {
            this.vv = true;
            k.hp(webView, "javascript:\n    function sendScroll() {\n        try {\n            var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n            var clientH = window.innerHeight || document.documentElement.clientHeight;\n            var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n            var validH = scrollH + clientH;\n            var result = (validH / totalH * 100).toFixed(2);\n            console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n            window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n        } catch (e) {\n            console.log('sendScroll error' + e)\n        }\n    }\nsendScroll();\nwindow.addEventListener('scroll', function (e) {\n    sendScroll();\n});");
        }
        if (this.f21310b.get()) {
            return;
        }
        if (this.hp != 3) {
            this.hp = 2;
        }
        this.f21310b.set(true);
        this.f21319s = System.currentTimeMillis();
        if (this.hp == 2) {
            l("load_finish");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error_code", this.jx);
            jSONObject.put("error_msg", this.f21313j);
            jSONObject.put("error_url", this.f21322w);
            jSONObject.putOpt("render_type", "h5");
            jSONObject.putOpt("render_type_2", 0);
        } catch (Exception unused) {
        }
        hp("load_fail", jSONObject);
    }

    public void hp(int i2, String str, String str2, String str3) {
        com.byazt.tq.hp hpVar = this.cx;
        if (hpVar != null) {
            hpVar.s();
        }
        if ((str3 == null || !str3.startsWith("image")) && this.hp != 2) {
            this.hp = 3;
        }
        this.jx = i2;
        this.f21313j = str;
        this.f21322w = str2;
    }

    private void hp(String str, JSONObject jSONObject) throws JSONException {
        hp(str, jSONObject, -1L);
    }

    private void hp(String str, JSONObject jSONObject, long j2) throws JSONException {
        if (!this.f21316n || this.f21309a == null || TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject2 = null;
        if (jSONObject != null) {
            try {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                    if (j2 > 0) {
                        jSONObject3.put("duration", j2);
                    }
                } catch (JSONException unused) {
                }
                jSONObject2 = jSONObject3;
            } catch (JSONException unused2) {
            }
        }
        j.jx(this.f21309a, this.eb, str, jSONObject2);
    }
}

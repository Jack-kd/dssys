package com.byazt.qk;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.byazt.ek.ThemeStatusBroadcastReceiver;
import com.byazt.es.s;
import com.byazt.jz.ud;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.ky;
import com.byazt.zn.pu;
import com.byazt.zn.r;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 64, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes3.dex */
public class o extends com.byazt.wx.hp implements k, v {

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, com.byazt.gog.jx> f24877a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.tq.hp f24878e;
    public Context eb;
    public eb ec;
    public String gu;
    public com.byazt.jdb.a jl;

    /* renamed from: k, reason: collision with root package name */
    public int f24879k;

    /* renamed from: n, reason: collision with root package name */
    public u f24880n;
    public long ns;

    /* renamed from: q, reason: collision with root package name */
    public mp f24881q;

    /* renamed from: s, reason: collision with root package name */
    public String f24882s;
    public com.byazt.fub.q sz;

    /* renamed from: u, reason: collision with root package name */
    public boolean f24883u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f24884v;
    public com.byazt.es.s vv;
    public com.byazt.zn.hp xs;
    public ud zy;

    public o(Context context, com.byazt.fub.zy zyVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.byazt.tq.hp hpVar, mp mpVar, com.byazt.fub.q qVar, u uVar) {
        super(context, zyVar, themeStatusBroadcastReceiver);
        this.f24877a = Collections.synchronizedMap(new HashMap());
        this.f24879k = 8;
        this.f24884v = true;
        this.f24883u = true;
        this.ns = -1L;
        this.eb = context;
        this.f24882s = zyVar.a();
        this.f24881q = mpVar;
        this.f24878e = hpVar;
        this.hp = zyVar.w();
        String strHp = hp(mpVar);
        this.gu = strHp;
        this.sz = qVar;
        this.f24880n = uVar;
        hp(pu.jx(pu.l(strHp)));
        themeStatusBroadcastReceiver.hp(this);
        jl();
        zy();
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ec() {
        com.byazt.rs.hp.hp(this.zy, this.f24879k == 0, this.f24884v, this.f24883u);
    }

    private void u() {
        if (this.f24881q == null || this.jx == null) {
            return;
        }
        if (TextUtils.equals(this.f24882s, "rewarded_video") || TextUtils.equals(this.f24882s, "fullscreen_interstitial_ad")) {
            String strN = this.f24881q.n();
            if (TextUtils.isEmpty(strN)) {
                return;
            }
            com.byazt.ikh.hp.hp(strN, this.jx.getInnerIWebView());
        }
    }

    private void vv() {
        if (this.zy == null || ((ViewGroup) this.jx.getParent()) == null) {
            return;
        }
        ud udVar = this.zy;
        udVar.hp(new d(this.jx, udVar, this.f24881q));
    }

    private boolean xs() {
        return !TextUtils.isEmpty(this.f24882s) && this.f24882s.equals("splash_ad");
    }

    @Override // com.byazt.qk.v
    public ud J_() {
        return this.zy;
    }

    @Override // com.byazt.ek.hp
    public void b_(int i2) throws JSONException {
        if (this.zy == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", i2);
        } catch (JSONException unused) {
        }
        this.zy.l("themeChange", jSONObject);
    }

    @Override // com.byazt.wx.hp
    public void e() {
        super.e();
        com.byazt.zn.hp hpVar = this.xs;
        if (hpVar != null) {
            hpVar.l(this);
        }
    }

    public void jl() {
        if (this.jx == null) {
            return;
        }
        u();
        ud udVar = new ud(this.eb);
        this.zy = udVar;
        udVar.l(this.jx).hp(this.f24881q).l(this.f24881q.j()).j(this.f24881q.w_()).hp(this.f24882s).jx(ky.j(this.f24882s)).w(ky.sz(this.f24881q)).hp(this).j(this.hp).hp(this.f24880n).hp(this.jx).hp(this.f24878e);
    }

    public void k() {
        if (this.jx == null || this.vv != null) {
            return;
        }
        com.byazt.rl.jx jxVar = new com.byazt.rl.jx();
        com.byazt.rl.j jVar = new com.byazt.rl.j();
        com.byazt.rl.w wVar = new com.byazt.rl.w(this.zy);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.f24881q.j());
            jSONObject.put("log_extra", this.f24881q.w_());
        } catch (Throwable unused) {
        }
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        hashSet.add("sendReward");
        this.vv = jxVar.hp(com.byazt.jz.sz.getContext(), this.jx, wVar, jVar, hashSet, com.byazt.ih.l.AD_TAG_FEED.equals(this.f24882s) ? s.hp.FEED : s.hp.OTHER).w(this.gu).j(com.byazt.ij.hp.s()).hp(com.byazt.ij.hp.hp()).w(jSONObject).hp("sdkEdition", com.byazt.ij.hp.jx()).l(com.byazt.ij.hp.a()).jx(com.byazt.ij.hp.w()).jx(false);
        eb ebVar = new eb(this.eb, this.zy, this.f24881q, this.jl, xs(), this.vv, gu());
        this.ec = ebVar;
        this.jx.setWebViewClient(ebVar);
        com.byazt.fub.q qVar = this.sz;
        if (qVar instanceof e) {
            ((e) qVar).hp(this.vv);
        }
        Set<String> setE = this.vv.e();
        if (this.zy == null || setE == null || setE.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.vv);
        Iterator<String> it = setE.iterator();
        while (it.hasNext()) {
            this.zy.a().hp(it.next(), (com.byazt.oa.w<?, ?>) new com.byazt.oa.w<JSONObject, JSONObject>() { // from class: com.byazt.qk.o.2
                @Override // com.byazt.oa.w
                public JSONObject hp(JSONObject jSONObject2, com.byazt.oa.a aVar) throws Exception {
                    try {
                        com.byazt.es.s sVar = (com.byazt.es.s) weakReference.get();
                        if (sVar == null) {
                            return null;
                        }
                        return sVar.j(hp(), jSONObject2);
                    } catch (Throwable unused2) {
                        return null;
                    }
                }
            });
        }
    }

    @Override // com.byazt.wx.hp
    public void q() {
        com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
        this.xs = hpVarJx;
        hpVarJx.hp(this);
    }

    @Override // com.byazt.wx.hp, com.byazt.qk.k
    public void s() throws JSONException {
        super.s();
        if (this.zy == null) {
            return;
        }
        vv();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("expressShow", true);
            this.zy.l("expressShow", jSONObject);
        } catch (Exception unused) {
        }
    }

    public eb v() {
        return this.ec;
    }

    public void zy() {
        SSWebView sSWebView = this.jx;
        if (sSWebView == null) {
            return;
        }
        sSWebView.setMaterialMeta(r.hp(this.f24881q));
        try {
            this.jx.setBackgroundColor(0);
            this.jx.setBackgroundResource(R.color.transparent);
        } catch (Exception unused) {
        }
        hp(this.jx);
        if (hp() != null) {
            this.jl = new com.byazt.jdb.a(this.f24881q, hp()).l(false);
        }
        this.jl.hp(this.f24878e);
        this.jx.setWebChromeClient(new com.byazt.cf.jx(this.zy, this.jl));
        this.jx.setDownloadListener(new DownloadListener() { // from class: com.byazt.qk.o.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
                if (!o.this.f24877a.containsKey(str)) {
                    com.byazt.gog.jx jxVarHp = com.byazt.ff.s.hp(o.this.eb, str, o.this.f24881q, o.this.f24882s);
                    o.this.f24877a.put(str, jxVarHp);
                    jxVarHp.hp(ky.cx(o.this.f24881q), false);
                } else {
                    com.byazt.gog.jx jxVar = (com.byazt.gog.jx) o.this.f24877a.get(str);
                    if (jxVar != null) {
                        jxVar.hp(ky.cx(o.this.f24881q), false);
                    }
                }
            }
        });
        if ("rewarded_video".equals(this.f24882s) || "fullscreen_interstitial_ad".equals(this.f24882s)) {
            xh.hp((com.byazt.ikh.j) this.jx);
        }
        com.byazt.wx.w.hp().hp(this.jx, this.zy);
    }

    @Override // com.byazt.wx.hp
    public void a() throws JSONException {
        ud udVar = this.zy;
        if (udVar == null) {
            return;
        }
        udVar.l("expressWebviewRecycle", (JSONObject) null);
    }

    @Override // com.byazt.wx.hp
    public void j() {
        if (this.f27151w.get()) {
            return;
        }
        com.byazt.jdb.a aVar = this.jl;
        if (aVar != null) {
            aVar.a();
        }
        SSWebView sSWebView = this.jx;
        if (sSWebView != null) {
            sSWebView.O_();
            this.jx.setOnShakeListener(null);
        }
        ud udVar = this.zy;
        if (udVar != null) {
            udVar.w();
        }
        super.j();
        this.f24877a.clear();
        this.zy = null;
        com.byazt.es.s sVar = this.vv;
        if (sVar == null) {
            return;
        }
        sVar.lv();
    }

    @Override // com.byazt.wx.hp
    public void w() {
        if (hp() == null) {
            return;
        }
        try {
            hp().resumeTimers();
        } catch (Exception unused) {
        }
    }

    public static String hp(mp mpVar) {
        return com.byazt.ir.l.l(hd.s(mpVar) ? "v3" : null);
    }

    @Override // com.byazt.wx.hp, com.byazt.fub.j
    public int jx() {
        return hd.l(this.f24881q);
    }

    @Override // com.byazt.wx.hp, com.byazt.qk.k
    public void l(final int i2) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qk.o.3
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                o.this.jx(i2);
                o.this.j(i2);
                if (i2 == o.this.f24879k) {
                    return;
                }
                o.this.f24879k = i2;
                o.this.j(i2 == 0);
                o.this.ec();
            }
        });
    }

    public void jx(final boolean z2) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qk.o.5
            @Override // java.lang.Runnable
            public void run() {
                boolean z3 = o.this.f24883u;
                boolean z4 = z2;
                if (z3 != (!z4)) {
                    o.this.f24883u = !z4;
                    o.this.ec();
                }
            }
        });
    }

    public void l(final boolean z2) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qk.o.4
            @Override // java.lang.Runnable
            public void run() {
                o.this.f24884v = z2;
                o.this.ec();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(int i2) throws JSONException {
        com.byazt.es.s sVar = this.vv;
        if (sVar == null) {
            return;
        }
        if (i2 == 0) {
            sVar.l(true);
            this.vv.hp(false);
        } else {
            sVar.l(false);
            this.vv.hp(true);
        }
    }

    public static void hp(Map<String, Object> map, mp mpVar, NativeExpressView nativeExpressView) {
        try {
            map.put("dynamic_show_type", Integer.valueOf(nativeExpressView.getDynamicShowType()));
            byte showDLFactorsEventParams = nativeExpressView.getShowDLFactorsEventParams();
            if (showDLFactorsEventParams != -1) {
                map.put("biz_type", Byte.valueOf(showDLFactorsEventParams));
            }
            int renderEngineCacheType = nativeExpressView.getRenderEngineCacheType();
            if (hd.a(mpVar) != null && !TextUtils.isEmpty(hd.a(mpVar).gu())) {
                map.put("engine_version", hd.a(mpVar).gu());
            }
            map.put("engine_type", Integer.valueOf(renderEngineCacheType));
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    private void hp(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.byazt.cf.l.hp(this.eb).hp(false).hp(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            if (com.byazt.jz.sz.l().cv()) {
                sSWebView.clearCache(true);
            }
            sSWebView.clearHistory();
            com.byazt.zn.sz.hp(sSWebView, com.byazt.jz.d.f21856j, mp.w(this.f24881q));
            sSWebView.setMixedContentMode(0);
            sSWebView.setJavaScriptEnabled(true);
            sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
            sSWebView.setDomStorageEnabled(true);
            sSWebView.setDatabaseEnabled(true);
            sSWebView.setAppCacheEnabled(true);
            sSWebView.setAllowFileAccess(false);
            sSWebView.setSupportZoom(true);
            sSWebView.setBuiltInZoomControls(true);
            sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            sSWebView.setUseWideViewPort(true);
        } catch (Exception e2) {
            com.byazt.ymw.u.l("WebViewRender", e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(boolean z2) throws JSONException {
        if (this.zy == null || this.jx == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adVisible", z2);
            this.zy.l("expressAdShow", jSONObject);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(int i2) {
        try {
            if (com.byazt.jz.d.hp() && i2 == 0) {
                long jCs = com.byazt.jz.sz.l().cs();
                if (this.ns != -1 && System.currentTimeMillis() - this.ns > jCs) {
                    SSWebView sSWebViewHp = hp();
                    WebView webView = sSWebViewHp.getWebView();
                    sSWebViewHp.removeView(webView);
                    sSWebViewHp.addView(webView);
                }
                this.ns = -1L;
                return;
            }
            this.ns = System.currentTimeMillis();
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.wx.hp
    public SSWebView hp() {
        return this.jx;
    }

    @Override // com.byazt.wx.hp
    public void hp(boolean z2, int i2) {
        super.hp(z2, i2);
        com.byazt.tq.hp hpVar = this.f24878e;
        if (hpVar != null) {
            hpVar.hp(z2, i2);
            this.f24878e.l(false);
        }
    }

    @Override // com.byazt.wx.hp
    public void hp(float f2, float f3) {
        float f4 = this.eb.getResources().getDisplayMetrics().density;
        float f5 = Resources.getSystem().getDisplayMetrics().density;
        super.hp(xh.l(f4, xh.hp(f5, f2)), xh.l(f4, xh.hp(f5, f3)));
    }
}

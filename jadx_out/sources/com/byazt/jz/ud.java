package com.byazt.jz;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.view.View;
import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import com.anythink.core.common.f.f;
import com.byazt.ay.eb;
import com.byazt.du.as;
import com.byazt.du.f;
import com.byazt.du.kg;
import com.byazt.du.m;
import com.byazt.du.ms;
import com.byazt.du.pu;
import com.byazt.du.rz;
import com.byazt.du.yr;
import com.byazt.go.j;
import com.byazt.pg.r;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.b;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.ux;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.cl;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, 591})
/* loaded from: classes.dex */
public class ud implements com.byazt.wx.l, r.hp, com.byazt.pm.jx {
    public static volatile boolean ea;
    public static final Map<String, Boolean> jx;

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference<Context> f21961a;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference<com.byazt.ko.hp> f21962b;
    public WeakReference<com.byazt.cey.w> cx;

    /* renamed from: d, reason: collision with root package name */
    public WeakReference<com.byazt.cey.jx> f21963d;
    public JSONObject di;

    /* renamed from: e, reason: collision with root package name */
    public String f21964e;
    public com.byazt.pm.j eb;
    public int gu;
    public List<JSONObject> hd;
    public Map<String, Object> hp;
    public List<mp> hq;

    /* renamed from: j, reason: collision with root package name */
    public WeakReference<SSWebView> f21966j;
    public String jl;

    /* renamed from: k, reason: collision with root package name */
    public String f21967k;
    public boolean kg;
    public com.byazt.cf.hp ky;
    public com.byazt.tq.hp lv;

    /* renamed from: ms, reason: collision with root package name */
    public boolean f21970ms;

    /* renamed from: n, reason: collision with root package name */
    public WeakReference<com.byazt.pm.w> f21971n;
    public JSONObject nd;
    public WeakReference<com.byazt.cey.hp> ns;

    /* renamed from: o, reason: collision with root package name */
    public WeakReference<com.byazt.cey.l> f21972o;
    public WeakReference<com.byazt.cey.a> pc;
    public String pu;

    /* renamed from: q, reason: collision with root package name */
    public WeakReference<View> f21973q;

    /* renamed from: r, reason: collision with root package name */
    public com.byazt.oa.xs f21974r;
    public AtomicBoolean rv;
    public com.byazt.la.l rz;

    /* renamed from: s, reason: collision with root package name */
    public String f21975s;
    public JSONObject sz;
    public HashMap<String, q> ud;
    public WeakReference<com.byazt.ar.q> vq;
    public SoftReference<com.byazt.fub.gu> vv;
    public WeakReference<com.byazt.cey.eb> wv;

    /* renamed from: y, reason: collision with root package name */
    public WeakReference<com.byazt.qk.u> f21979y;
    public eb.hp yr;
    public WeakReference<com.byazt.dy.l> zx;
    public mp zy;

    /* renamed from: l, reason: collision with root package name */
    public boolean f21968l = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f21977v = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f21976u = true;
    public boolean xs = true;
    public final com.byazt.qk.jl ec = new com.byazt.qk.jl();
    public boolean nu = false;
    public boolean dy = false;
    public boolean xh = false;
    public boolean as = false;
    public boolean mp = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f21969m = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f21965f = false;
    public byte su = -1;
    public final AtomicBoolean qu = new AtomicBoolean(false);
    public final Map<String, com.byazt.gog.jx> an = new ConcurrentHashMap();

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.ymw.ud f21978w = new com.byazt.ymw.ud(Looper.getMainLooper(), this);

    @com.byazt.kj.hp(hp = {0, 1, 40, 1098})
    public static class hp {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public JSONObject f21989j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f21990l;

        /* renamed from: w, reason: collision with root package name */
        public int f21991w;
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        jx = concurrentHashMap;
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put("log_event", bool);
        concurrentHashMap.put("private", bool);
        concurrentHashMap.put("dispatch_message", bool);
        concurrentHashMap.put("custom_event", bool);
        concurrentHashMap.put("log_event_v3", bool);
        ea = false;
    }

    public ud(Context context) {
        this.f21961a = new WeakReference<>(context);
        ky.a();
    }

    private com.byazt.ikh.j as() {
        WeakReference<SSWebView> weakReference = this.f21966j;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private void f() {
        WeakReference<com.byazt.cey.eb> weakReference = this.wv;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.wv.get().l();
    }

    private boolean hd() {
        mp mpVar = this.zy;
        if (mpVar == null || mpVar.el() == null || com.byazt.zn.n.l(this.zy) || this.nu || this.zy.el().optInt("parent_type") != 2) {
            return false;
        }
        int iJl = ky.jl(this.zy);
        if (iJl != 8 && iJl != 7) {
            return false;
        }
        this.nu = true;
        return true;
    }

    private JSONObject kg() {
        View view;
        SSWebView sSWebView;
        try {
            view = this.f21973q.get();
            sSWebView = this.f21966j.get();
        } catch (Throwable unused) {
        }
        if (view == null || sSWebView == null) {
            com.byazt.ymw.u.l("TTAndroidObject", "setCloseButtonInfo error closeButton is null");
            return null;
        }
        int[] iArrL = xh.l(view);
        int[] iArrL2 = xh.l(sSWebView);
        if (iArrL != null && iArrL2 != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", xh.j(sz.getContext(), iArrL[0] - iArrL2[0]));
            jSONObject.put("y", xh.j(sz.getContext(), iArrL[1] - iArrL2[1]));
            jSONObject.put("w", xh.j(sz.getContext(), view.getWidth()));
            jSONObject.put("h", xh.j(sz.getContext(), view.getHeight()));
            jSONObject.put("isExist", true);
            return jSONObject;
        }
        com.byazt.ymw.u.l("TTAndroidObject", "setCloseButtonInfo error position or webViewPosition is null");
        return null;
    }

    private void m() {
        WeakReference<com.byazt.cey.eb> weakReference = this.wv;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.wv.get().hp();
    }

    private static List<String> mp() {
        return Arrays.asList("appInfo", "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    private void ms() {
        mp mpVar;
        WeakReference<SSWebView> weakReference = this.f21966j;
        if (weakReference == null || weakReference.get() == null || (mpVar = this.zy) == null) {
            return;
        }
        int iRm = mpVar.rm();
        int iKq = this.zy.kq();
        int iAj = this.zy.aj();
        int iCs = this.zy.cs();
        int iGv = this.zy.gv();
        JSONObject jSONObjectKi = this.zy.ki();
        JSONObject jSONObjectWj = this.zy.wj();
        JSONObject jSONObjectSf = this.zy.sf();
        this.f21966j.get().setShakeValue(iRm);
        this.f21966j.get().setDeepShakeValue(iKq);
        this.f21966j.get().setWriggleValue(iAj);
        this.f21966j.get().setTwistConfig(jSONObjectKi);
        this.f21966j.get().setShakeInteractConf(jSONObjectWj);
        this.f21966j.get().setTwistInteractConf(jSONObjectSf);
        this.f21966j.get().setCalculationMethod(iCs);
        this.f21966j.get().setCalculationTwistMethod(iGv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nd() {
        Context context;
        List<mp> list = this.hq;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.ud = new HashMap<>();
        WeakReference<SSWebView> weakReference = this.f21966j;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        WeakReference<Context> weakReference2 = this.f21961a;
        if (weakReference2 == null || (context = weakReference2.get()) == null) {
            return;
        }
        for (mp mpVar : this.hq) {
            this.ud.put(mpVar.j(), new q(context, mpVar, sSWebView, this.pu));
        }
    }

    private void rz() {
        ux uxVarA_;
        Context context;
        mp mpVar = this.zy;
        if (mpVar != null && (uxVarA_ = mpVar.A_()) != null && uxVarA_.l() == 1 && uxVarA_.a() == 1) {
            zx();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("data", new JSONObject());
            } catch (Throwable unused) {
            }
            WeakReference<Context> weakReference = this.f21961a;
            if (weakReference == null || (context = weakReference.get()) == null) {
                return;
            }
            this.eb.hp(context, jSONObject, this.f21964e, this.gu, this.f21977v, true);
            hp(jSONObject, false);
        }
    }

    private void v(JSONObject jSONObject) {
        WeakReference<com.byazt.cey.l> weakReference = this.f21972o;
        if (weakReference == null || jSONObject == null || weakReference.get() == null) {
            return;
        }
        this.f21972o.get().hp(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt("code", -1), jSONObject.optString("msg", ""));
    }

    private boolean xh() {
        return s.u().f();
    }

    private boolean y() {
        return this.vq != null;
    }

    private JSONObject yr() {
        return hp(this.zy, this.rv);
    }

    private void zx() {
        if (this.eb == null) {
            this.eb = com.byazt.pm.l.hp(this, this.zy, this.mp);
        }
    }

    public com.byazt.oa.xs a() {
        return this.f21974r;
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void adAnalysisData(String str) {
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject = zy();
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            hp(jSONObject, ky.jl(this.zy));
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    public boolean b() {
        mp mpVar = this.zy;
        return mpVar != null && com.byazt.xci.sz.gu(mpVar) == 1;
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void changeVideoState(final String str) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.ud.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ud.this.a(new JSONObject(str));
                } catch (Exception unused) {
                }
            }
        });
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void clickEvent(final String str) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.ud.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ud.this.q(new JSONObject(str));
                } catch (Exception unused) {
                }
            }
        });
    }

    public boolean cx() {
        return this.xh;
    }

    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        mp mpVar = this.zy;
        if (mpVar != null) {
            String strMt = mpVar.mt();
            if (!TextUtils.isEmpty(strMt)) {
                try {
                    return new JSONObject(strMt);
                } catch (Exception unused) {
                }
            }
        }
        return jSONObject;
    }

    public void di() {
        mp mpVar = this.zy;
        if (mpVar == null) {
            return;
        }
        com.byazt.zn.w.l(mpVar, this.f21961a.get(), wv());
    }

    public void dy() {
        WeakReference<com.byazt.cey.w> weakReference = this.cx;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.cx.get().hp();
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            gu(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    public WeakReference<com.byazt.cey.w> e() {
        return this.cx;
    }

    public boolean eb() {
        return this.f21969m;
    }

    public void ec() {
        this.ec.w();
    }

    public Context getContext() {
        return this.f21961a.get();
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public String getCurrentVideoState() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        u(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public String getData(String str) {
        if (TextUtils.isEmpty(str)) {
            return this.sz.toString();
        }
        try {
            JSONObject jSONObjectHp = com.byazt.yp.l.hp(this.sz, new JSONObject(str));
            return jSONObjectHp == null ? this.sz.toString() : jSONObjectHp.toString();
        } catch (Exception unused) {
            return this.sz.toString();
        }
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public String getTemplateInfo() {
        l("getTemplateInfo", true);
        try {
            v();
            l("getTemplateInfo", false);
            return this.sz.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public boolean gu() {
        return this.f21968l;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message != null && message.what == 11) {
            Object obj = message.obj;
            if (obj instanceof hp) {
                try {
                    hp((hp) obj, 1);
                } catch (Exception unused) {
                }
            }
        }
    }

    public void hq() throws JSONException {
        com.byazt.pm.j jVar = this.eb;
        if (jVar != null) {
            jVar.hp();
        }
        if (hd()) {
            n();
        }
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void initRenderFinish() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.jz.ud.10
            @Override // java.lang.Runnable
            public void run() {
                if (ud.this.ky != null) {
                    com.byazt.cf.hp unused = ud.this.ky;
                }
            }
        });
    }

    public JSONObject jl() {
        return this.nd;
    }

    public void k() {
        WeakReference<com.byazt.cey.jx> weakReference = this.f21963d;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f21963d.get().hp();
    }

    public byte ky() {
        return this.su;
    }

    public int lv() {
        if (this.ec.gu() == null) {
            return 0;
        }
        return this.ec.gu().jx();
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void muteVideo(final String str) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.ud.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ud.this.w(new JSONObject(str));
                } catch (Exception unused) {
                }
            }
        });
    }

    public void n() throws JSONException {
        hp((JSONObject) null, new com.byazt.cey.j() { // from class: com.byazt.jz.ud.2
            @Override // com.byazt.cey.j
            public void hp(boolean z2, List<mp> list, boolean z3) throws JSONException {
                ud.this.hq = list;
                ud.this.nd();
                ud.this.ns();
            }
        });
    }

    public void ns() throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ClickCommon.CLICK_AREA_MATERIAL, hp(this.hq));
            l("materialMeta", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void nu() {
        w();
        com.byazt.pm.j jVar = this.eb;
        if (jVar != null) {
            jVar.jx();
        }
        for (com.byazt.gog.jx jxVar : this.an.values()) {
            if (jxVar != null) {
                jxVar.jx();
            }
        }
        this.an.clear();
        WeakReference<SSWebView> weakReference = this.f21966j;
        if (weakReference != null) {
            weakReference.clear();
        }
        WeakReference<View> weakReference2 = this.f21973q;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        WeakReference<Context> weakReference3 = this.f21961a;
        if (weakReference3 != null) {
            weakReference3.clear();
        }
        this.ky = null;
        this.rz = null;
    }

    public void o() {
        mp mpVar = this.zy;
        if (mpVar == null) {
            return;
        }
        com.byazt.zn.w.jx(mpVar, this.f21961a.get(), wv());
    }

    public void pu() {
        if (this.ec.gu() != null) {
            this.ec.gu().s();
        }
    }

    public boolean q() {
        mp mpVar = this.zy;
        return mpVar != null && mpVar.ed();
    }

    public void r() {
        WeakReference<com.byazt.cey.a> weakReference = this.pc;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.pc.get().hp();
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            e(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public void reportJsbBridgeMissing(String str) {
        if (this.qu.compareAndSet(false, true)) {
            final JSONObject jSONObject = new JSONObject();
            try {
                if (!TextUtils.isEmpty(str)) {
                    JSONObject jSONObject2 = new JSONObject(str);
                    jSONObject.putOpt(MediationConstant.KEY_REASON, jSONObject2.optString(MediationConstant.KEY_REASON));
                    jSONObject.putOpt("msg_type", jSONObject2.optString("msg_type"));
                    jSONObject.putOpt("event_id", jSONObject2.optString("event_id"));
                }
                jSONObject.putOpt("tag", this.pu);
                com.byazt.ikh.j jVarAs = as();
                if (jVarAs != null) {
                    jSONObject.putOpt("url", jVarAs.getUrl());
                }
            } catch (Throwable unused) {
            }
            com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.jz.ud.11
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() {
                    com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("jsb_bridge_missing");
                    lVarHp.l(jSONObject.toString());
                    if (ud.this.zy != null) {
                        lVarHp.a(ud.this.zy.ns());
                    }
                    return lVarHp;
                }
            }, "jsb_bridge_missing");
        }
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void requestPauseVideo(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.ec.hp(jSONObject.optInt("time"), jSONObject.optString("flag"));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("state_type", 2);
            jSONObject2.put("jsb_name", "requestPauseVideo");
            com.byazt.lf.k.hp().hp(this.zy, jSONObject2);
        } catch (JSONException unused) {
        }
    }

    public void s(boolean z2) {
        this.f21965f = z2;
    }

    @Override // com.byazt.wx.l
    @JavascriptInterface
    public void skipVideo() {
        com.byazt.lf.k.hp().j(this.zy, "stats_reward_full_call_skip_video");
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.ud.9
            @Override // java.lang.Runnable
            public void run() {
                ud.this.u();
            }
        });
    }

    public void sz() {
        WeakReference<com.byazt.ko.hp> weakReference = this.f21962b;
        if (weakReference == null || weakReference.get() == null) {
            this.ec.e();
        } else {
            this.f21962b.get().hp();
        }
    }

    public void u() {
        com.byazt.lf.k.hp().j(this.zy, "stats_reward_full_deal_skip_video");
        this.ec.a();
    }

    public void ud() {
        com.byazt.pm.j jVar = this.eb;
        if (jVar != null) {
            jVar.l();
        }
        this.as = false;
    }

    public void vv() {
        this.ec.j();
    }

    public String wv() {
        return ky.hp(this.gu);
    }

    public void xs() {
        this.ec.eb();
    }

    public JSONObject zy() throws Exception {
        return com.byazt.yp.l.hp(this.zy, this.f21967k);
    }

    private void ec(JSONObject jSONObject) {
        WeakReference<com.byazt.pm.w> weakReference;
        com.byazt.pm.w wVar;
        if (jSONObject == null || (weakReference = this.f21971n) == null || (wVar = weakReference.get()) == null) {
            return;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("temaiProductIds");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                wVar.hp(false, null);
            } else {
                wVar.hp(true, jSONArrayOptJSONArray);
            }
        } catch (Exception unused) {
            wVar.hp(false, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(JSONObject jSONObject) {
        com.byazt.ikh.j jVarAs = as();
        if (jVarAs != null) {
            com.byazt.ymw.k.hp(jVarAs, "javascript:(function(){var __msg=" + jSONObject.toString() + ";var b=window.ToutiaoJSBridge;if(b&&typeof b._handleMessageFromToutiao==='function'){b._handleMessageFromToutiao(__msg);}else{var r=b?'handle_not_function':'bridge_null';var g=window.SDK_INJECT_GLOBAL;if(g&&typeof g.reportJsbBridgeMissing==='function'){g.reportJsbBridgeMissing(JSON.stringify({reason:r,msg_type:__msg.__msg_type,event_id:__msg.__event_id}));}}})();");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean vv(JSONObject jSONObject) {
        return jSONObject.has("borderRadiusTopLeft") && jSONObject.has("borderRadiusBottomLeft") && jSONObject.has("borderRadiusTopRight") && jSONObject.has("borderRadiusBottomRight");
    }

    private int xs(JSONObject jSONObject) {
        if (jSONObject == null) {
            return -1;
        }
        return jSONObject.optInt("forceShowDownloadDialog", -1);
    }

    public ud a(boolean z2) {
        this.dy = z2;
        return this;
    }

    public void e(final JSONObject jSONObject) {
        com.byazt.tq.hp hpVar = this.lv;
        if (hpVar != null) {
            hpVar.jx(jSONObject);
        }
        com.byazt.uid.w.l(new com.byazt.uid.eb("renderDidFinish") { // from class: com.byazt.jz.ud.12
            @Override // java.lang.Runnable
            public void run() {
                int i2;
                double dOptDouble;
                double dOptDouble2;
                boolean z2;
                double d2;
                double d3;
                int i3;
                double d4;
                double d5;
                double d6;
                if (ud.this.vv == null || ud.this.vv.get() == null || jSONObject == null || ud.this.f21961a == null) {
                    return;
                }
                com.byazt.fub.k kVar = new com.byazt.fub.k();
                kVar.hp(1);
                try {
                    boolean zOptBoolean = jSONObject.optBoolean("isRenderSuc");
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("AdSize");
                    if (jSONObjectOptJSONObject != null) {
                        dOptDouble = jSONObjectOptJSONObject.optDouble("width");
                        dOptDouble2 = jSONObjectOptJSONObject.optDouble("height");
                    } else {
                        dOptDouble = 0.0d;
                        dOptDouble2 = 0.0d;
                    }
                    JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("videoInfo");
                    if (jSONObjectOptJSONObject2 != null) {
                        float f2 = ((Context) ud.this.f21961a.get()).getResources().getDisplayMetrics().density;
                        float f3 = Resources.getSystem().getDisplayMetrics().density;
                        double dOptDouble3 = jSONObjectOptJSONObject2.optDouble("x");
                        z2 = zOptBoolean;
                        i3 = 101;
                        try {
                            double dOptDouble4 = jSONObjectOptJSONObject2.optDouble("y");
                            d3 = dOptDouble2;
                            double dOptDouble5 = jSONObjectOptJSONObject2.optDouble("width");
                            double dOptDouble6 = jSONObjectOptJSONObject2.optDouble("height");
                            if (ud.this.vv(jSONObjectOptJSONObject2)) {
                                d2 = dOptDouble;
                                double dOptDouble7 = jSONObjectOptJSONObject2.optDouble("borderRadiusTopLeft");
                                d5 = dOptDouble6;
                                double dOptDouble8 = jSONObjectOptJSONObject2.optDouble("borderRadiusTopRight");
                                d6 = dOptDouble5;
                                double dOptDouble9 = jSONObjectOptJSONObject2.optDouble("borderRadiusBottomLeft");
                                d4 = dOptDouble4;
                                double dOptDouble10 = jSONObjectOptJSONObject2.optDouble("borderRadiusBottomRight");
                                if (sz.l().xq()) {
                                    kVar.hp(xh.l(f2, xh.hp(f3, (float) dOptDouble7)));
                                    kVar.l(xh.l(f2, xh.hp(f3, (float) dOptDouble8)));
                                    kVar.jx(xh.l(f2, xh.hp(f3, (float) dOptDouble9)));
                                    kVar.j(xh.l(f2, xh.hp(f3, (float) dOptDouble10)));
                                } else {
                                    kVar.hp((float) dOptDouble7);
                                    kVar.l((float) dOptDouble8);
                                    kVar.jx((float) dOptDouble9);
                                    kVar.j((float) dOptDouble10);
                                }
                            } else {
                                d4 = dOptDouble4;
                                d5 = dOptDouble6;
                                d2 = dOptDouble;
                                d6 = dOptDouble5;
                            }
                            if (sz.l().xq()) {
                                kVar.jx(xh.l(f2, xh.hp(f3, (float) dOptDouble3)));
                                kVar.j(xh.l(f2, xh.hp(f3, (float) d4)));
                                kVar.w(xh.l(f2, xh.hp(f3, (float) d6)));
                                kVar.a(xh.l(f2, xh.hp(f3, (float) d5)));
                            } else {
                                kVar.jx(dOptDouble3);
                                kVar.j(d4);
                                kVar.w(d6);
                                kVar.a(d5);
                            }
                        } catch (Exception unused) {
                            i2 = 101;
                            kVar.l(i2);
                            kVar.hp(eb.hp(i2));
                            ((com.byazt.fub.gu) ud.this.vv.get()).hp(kVar);
                        }
                    } else {
                        z2 = zOptBoolean;
                        d2 = dOptDouble;
                        d3 = dOptDouble2;
                        i3 = 101;
                    }
                    String strOptString = jSONObject.optString("msg", eb.hp(i3));
                    i2 = i3;
                    try {
                        int iOptInt = jSONObject.optInt("code", i2);
                        kVar.hp(z2);
                        kVar.hp(d2);
                        kVar.l(d3);
                        kVar.hp(strOptString);
                        kVar.l(iOptInt);
                        ((com.byazt.fub.gu) ud.this.vv.get()).hp(kVar);
                    } catch (Exception unused2) {
                        kVar.l(i2);
                        kVar.hp(eb.hp(i2));
                        ((com.byazt.fub.gu) ud.this.vv.get()).hp(kVar);
                    }
                } catch (Exception unused3) {
                    i2 = 101;
                }
            }
        });
    }

    public void eb(boolean z2) {
        this.f21969m = z2;
    }

    public void gu(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Uri uri = Uri.parse(jSONObject.optString("trackData"));
            if ("bytedance".equals(uri.getScheme().toLowerCase())) {
                com.byazt.zn.sz.hp(uri, this);
            }
        } catch (Exception unused) {
        }
    }

    public boolean j() {
        WeakReference<SSWebView> weakReference = this.f21966j;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        return this.f21966j.get().N_();
    }

    public boolean jl(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("creatives", hp(this.hq));
        } catch (Exception unused) {
        }
        return true;
    }

    public com.byazt.ar.q jx() {
        WeakReference<com.byazt.ar.q> weakReference = this.vq;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void q(boolean z2) {
        this.f21968l = z2;
    }

    public mp s() {
        return this.zy;
    }

    public int w(boolean z2) {
        if (!this.as && com.byazt.xci.r.hp(this.zy) != 0 && z2) {
            return 2;
        }
        if (this.f21970ms) {
            return 1;
        }
        return this.kg ? com.byazt.xci.r.hp(this.zy) == 2 ? 2 : 1 : com.byazt.xci.r.hp(this.zy) == 0 ? 1 : 2;
    }

    public JSONObject zy(JSONObject jSONObject) throws JSONException {
        com.byazt.jt.l lVarDb;
        if (this.hp != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                String strOptString = jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, null);
                if (strOptString != null) {
                    jSONObject2 = new JSONObject(strOptString);
                }
                if (d.s()) {
                    try {
                        mp mpVar = this.zy;
                        if (mpVar != null && (lVarDb = mpVar.db()) != null) {
                            String strZy = lVarDb.zy();
                            if (!TextUtils.isEmpty(strZy)) {
                                jSONObject2.putOpt("media_extra", strZy);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                for (Map.Entry<String, Object> entry : this.hp.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            } catch (Exception e2) {
                com.byazt.ymw.u.hp(e2.toString());
            }
        }
        return jSONObject;
    }

    private boolean u(JSONObject jSONObject) throws JSONException {
        if (this.ec.gu() != null && jSONObject != null) {
            double dHp = this.ec.gu().hp();
            int iL = this.ec.gu().l();
            try {
                jSONObject.put("currentTime", dHp / 1000.0d);
                jSONObject.put("state", iL);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void a(JSONObject jSONObject) throws JSONException {
        if (this.ec.gu() == null || jSONObject == null) {
            return;
        }
        try {
            int iOptInt = jSONObject.optInt("stateType", -1);
            this.ec.gu().hp(iOptInt);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("jsb_name", "changeVideoState");
            jSONObject2.put("state_type", iOptInt);
            com.byazt.lf.k.hp().hp(this.zy, jSONObject2);
        } catch (Exception unused) {
        }
    }

    public int eb(JSONObject jSONObject) {
        if (jSONObject.optBoolean("interactShowDownloadDialog", false)) {
            this.zy.jx(true);
            return 2;
        }
        if (jSONObject.optInt("downloadDialogStatus") != 1) {
            return 0;
        }
        if (this.zy.u_().hp() == 2) {
            this.zy.jx(true);
        }
        return 1;
    }

    public void k(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f21975s = jSONObject.optString("cid");
        this.f21964e = jSONObject.optString("log_extra");
    }

    public JSONObject l() {
        WeakReference<com.byazt.ar.q> weakReference = this.vq;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.vq.get().getCreativeVideoViewInfo();
    }

    public void q(JSONObject jSONObject) throws JSONException {
        ud udVar;
        int iOptInt;
        double d2;
        double d3;
        double d4;
        double d5;
        double dOptDouble;
        String str;
        String str2;
        String str3;
        int i2;
        JSONObject jSONObject2;
        double d6;
        double d7;
        double d8;
        double d9;
        com.byazt.xci.b bVarHp;
        SoftReference<com.byazt.fub.gu> softReference;
        if (jSONObject == null) {
            return;
        }
        try {
            String strOptString = jSONObject.optString("adId");
            iOptInt = jSONObject.optInt("areaType", 1);
            String strOptString2 = jSONObject.optString("clickAreaType");
            String strOptString3 = jSONObject.optString("clickAreaId");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("clickInfo");
            String strOptString4 = jSONObject.optString("subConvertLinkTag");
            int iOptInt2 = jSONObject.optInt("dpaPosition", -1);
            JSONObject jSONObject3 = new JSONObject();
            com.byazt.xci.xs.hp(jSONObject.optString("clickScene"));
            jSONObject3.put("convertActionType", jSONObject.optInt("convertActionType", Integer.MIN_VALUE));
            jSONObject3.put("live_saas_param_interaction_type", jSONObject.optInt("live_saas_param_interaction_type", -1));
            jSONObject3.put("is_compliant_download", jSONObject.optBoolean("is_compliant_download"));
            double d10 = -1.0d;
            if (jSONObjectOptJSONObject != null) {
                double dOptDouble2 = jSONObjectOptJSONObject.optDouble("down_x", -1.0d);
                double dOptDouble3 = jSONObjectOptJSONObject.optDouble("down_y", -1.0d);
                double dOptDouble4 = jSONObjectOptJSONObject.optDouble("up_x", -1.0d);
                double dOptDouble5 = jSONObjectOptJSONObject.optDouble("up_y", -1.0d);
                double dOptDouble6 = jSONObjectOptJSONObject.optDouble("down_time", -1.0d);
                double dOptDouble7 = jSONObjectOptJSONObject.optDouble("up_time", -1.0d);
                double dOptDouble8 = jSONObjectOptJSONObject.optDouble("button_x", -1.0d);
                double dOptDouble9 = jSONObjectOptJSONObject.optDouble("button_y", -1.0d);
                double dOptDouble10 = jSONObjectOptJSONObject.optDouble("button_width", -1.0d);
                str2 = strOptString2;
                d7 = dOptDouble4;
                dOptDouble = jSONObjectOptJSONObject.optDouble("button_height", -1.0d);
                d10 = dOptDouble2;
                str3 = strOptString4;
                d3 = dOptDouble3;
                d2 = dOptDouble6;
                d8 = dOptDouble7;
                d4 = dOptDouble9;
                d5 = dOptDouble10;
                str = strOptString;
                d6 = dOptDouble5;
                i2 = iOptInt2;
                jSONObject2 = jSONObject3;
                d9 = dOptDouble8;
            } else {
                d2 = -1.0d;
                d3 = -1.0d;
                d4 = -1.0d;
                d5 = -1.0d;
                dOptDouble = -1.0d;
                str = strOptString;
                str2 = strOptString2;
                str3 = strOptString4;
                i2 = iOptInt2;
                jSONObject2 = jSONObject3;
                d6 = -1.0d;
                d7 = -1.0d;
                d8 = -1.0d;
                d9 = -1.0d;
            }
            bVarHp = new b.hp().j((float) d10).jx((float) d3).l((float) d7).hp((float) d6).l((long) d2).hp((long) d8).hp((int) d9).l((int) d4).jx((int) d5).j((int) dOptDouble).hp(str2).l(strOptString3).hp(true).hp((SparseArray<j.hp>) null).hp(jSONObject2).w(str3).w(i2).hp();
            udVar = this;
        } catch (Exception unused) {
            udVar = this;
        }
        try {
            if (!udVar.hp(str, iOptInt, bVarHp) && (softReference = udVar.vv) != null && softReference.get() != null) {
                udVar.vv.get().hp(null, iOptInt, bVarHp, xs(jSONObject));
            } else {
                udVar.rz();
            }
        } catch (Exception unused2) {
            SoftReference<com.byazt.fub.gu> softReference2 = udVar.vv;
            if (softReference2 != null && softReference2.get() != null) {
                udVar.vv.get().hp(null, -1, null, -1);
            } else {
                udVar.rz();
            }
        }
    }

    public void s(JSONObject jSONObject) throws JSONException {
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        double dOptDouble;
        String str;
        String str2;
        double d8;
        double d9;
        if (jSONObject == null) {
            return;
        }
        try {
            String strOptString = jSONObject.optString("adId");
            int iOptInt = jSONObject.optInt("areaType", 1);
            String strOptString2 = jSONObject.optString("subConvertLinkTag");
            int iOptInt2 = jSONObject.optInt("dpaPosition", -1);
            String strOptString3 = jSONObject.optString("clickAreaType");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("clickInfo");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("is_compliant_download", jSONObject.optBoolean("is_compliant_download"));
            jSONObject2.put("convertActionType", jSONObject.optInt("convertActionType", Integer.MIN_VALUE));
            double d10 = -1.0d;
            if (jSONObjectOptJSONObject != null) {
                double dOptDouble2 = jSONObjectOptJSONObject.optDouble("down_x", -1.0d);
                double dOptDouble3 = jSONObjectOptJSONObject.optDouble("down_y", -1.0d);
                double dOptDouble4 = jSONObjectOptJSONObject.optDouble("up_x", -1.0d);
                double dOptDouble5 = jSONObjectOptJSONObject.optDouble("up_y", -1.0d);
                double dOptDouble6 = jSONObjectOptJSONObject.optDouble("down_time", -1.0d);
                double dOptDouble7 = jSONObjectOptJSONObject.optDouble("up_time", -1.0d);
                double dOptDouble8 = jSONObjectOptJSONObject.optDouble("button_x", -1.0d);
                double dOptDouble9 = jSONObjectOptJSONObject.optDouble("button_y", -1.0d);
                double dOptDouble10 = jSONObjectOptJSONObject.optDouble("button_width", -1.0d);
                dOptDouble = jSONObjectOptJSONObject.optDouble("button_height", -1.0d);
                str = strOptString;
                d10 = dOptDouble2;
                d2 = dOptDouble3;
                d8 = dOptDouble4;
                d3 = dOptDouble6;
                d4 = dOptDouble7;
                d5 = dOptDouble8;
                d6 = dOptDouble9;
                d7 = dOptDouble10;
                str2 = strOptString2;
                d9 = dOptDouble5;
            } else {
                d2 = -1.0d;
                d3 = -1.0d;
                d4 = -1.0d;
                d5 = -1.0d;
                d6 = -1.0d;
                d7 = -1.0d;
                dOptDouble = -1.0d;
                str = strOptString;
                str2 = strOptString2;
                d8 = -1.0d;
                d9 = -1.0d;
            }
            com.byazt.xci.b bVarHp = new b.hp().j((int) d10).jx((int) d2).l((int) d8).hp((int) d9).l((long) d3).hp((long) d4).hp((int) d5).l((int) d6).jx((int) d7).j((int) dOptDouble).hp(strOptString3).hp(true).hp(jSONObject2).hp((SparseArray<j.hp>) null).w(str2).w(iOptInt2).hp();
            SoftReference<com.byazt.fub.gu> softReference = this.vv;
            if (softReference != null && softReference.get() != null) {
                this.vv.get().l(null, iOptInt, bVarHp, eb(jSONObject));
            }
            hp(str, iOptInt, bVarHp);
        } catch (Exception unused) {
            SoftReference<com.byazt.fub.gu> softReference2 = this.vv;
            if (softReference2 == null || softReference2.get() == null) {
                return;
            }
            this.vv.get().l(null, -1, null, 0);
        }
    }

    private void sz(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            n(jSONObject);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.jz.ud.3
                @Override // java.lang.Runnable
                public void run() {
                    ud.this.n(jSONObject);
                }
            });
        }
    }

    public void j(boolean z2) {
        this.kg = z2;
    }

    public void jl(boolean z2) {
        this.rv = new AtomicBoolean(z2);
    }

    public void jx(boolean z2) {
        this.f21970ms = z2;
        this.as = z2;
    }

    public static void l(boolean z2) {
        ea = z2;
    }

    public void e(boolean z2) {
        this.xh = z2;
    }

    public ud j(String str) {
        this.f21964e = str;
        return this;
    }

    public static JSONArray hp(List<mp> list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                jSONArray.put(list.get(i2).ij());
            }
        }
        return jSONArray;
    }

    public ud j(JSONObject jSONObject) {
        this.sz = jSONObject;
        return this;
    }

    public ud jx(String str) {
        this.f21967k = str;
        return this;
    }

    public ud l(SSWebView sSWebView) {
        this.f21966j = new WeakReference<>(sSWebView);
        return this;
    }

    public void gu(boolean z2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("visibleState", !z2 ? 1 : 0);
        } catch (Exception e2) {
            com.byazt.ymw.u.l("TTAndroidObject", e2.getMessage());
        }
        w("visibleStateChange", jSONObject);
    }

    public void j(int i2) {
        this.ec.l(i2);
    }

    public ud jx(int i2) {
        this.gu = i2;
        return this;
    }

    public ud l(String str) {
        this.f21975s = str;
        return this;
    }

    public void w() {
        com.byazt.oa.xs xsVar = this.f21974r;
        if (xsVar == null) {
            return;
        }
        xsVar.hp();
        this.f21974r = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(String str, JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "callback");
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            sz(jSONObject2);
        } catch (Exception unused) {
        }
    }

    public com.byazt.gog.jx eb(String str) {
        return this.an.get(str);
    }

    public ud jx(List<mp> list) {
        this.hq = list;
        return this;
    }

    public ud l(List<JSONObject> list) {
        this.hd = list;
        return this;
    }

    public JSONObject v() throws JSONException {
        JSONObject jSONObject = this.sz;
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception unused) {
            }
        }
        if (this.zy != null) {
            jSONObject.put("setting", yr());
            jSONObject.put("extension", this.zy.tq());
        }
        this.sz = jSONObject;
        return jSONObject;
    }

    public void jx(JSONObject jSONObject) {
        com.byazt.tq.hp hpVar;
        if (jSONObject == null || (hpVar = this.lv) == null) {
            return;
        }
        hpVar.j(jSONObject);
    }

    public ud l(int i2) {
        this.f21977v = true;
        return this;
    }

    public boolean a(String str) {
        return TextUtils.isEmpty(str) || !"click_other".equals(str) || b();
    }

    public ud hp(String str) {
        this.pu = str;
        return this;
    }

    public void l(JSONObject jSONObject) {
        this.nd = jSONObject;
    }

    public ud w(String str) {
        this.jl = str;
        return this;
    }

    public ud hp(boolean z2) {
        this.mp = z2;
        return this;
    }

    public void jx(mp mpVar) {
        this.ec.hp(mpVar);
    }

    public boolean l(mp mpVar) {
        WeakReference<com.byazt.qk.u> weakReference;
        com.byazt.qk.u uVar;
        if (mpVar != null && (weakReference = this.f21979y) != null && (uVar = weakReference.get()) != null) {
            uVar.l(mpVar);
        }
        return false;
    }

    public void w(JSONObject jSONObject) {
        if (this.ec.gu() == null || jSONObject == null) {
            return;
        }
        try {
            this.ec.gu().hp(jSONObject.optBoolean(C1244a.f35698z, false));
        } catch (Exception unused) {
        }
    }

    public ud hp(SSWebView sSWebView) {
        com.byazt.ymw.u.l("webviewpool", "===useJsb2 webView hashCode:" + sSWebView.hashCode());
        com.byazt.oa.xs xsVarL = com.byazt.oa.xs.hp(sSWebView).hp(new com.byazt.sx.hp()).hp("ToutiaoJSBridge").hp(new com.byazt.oa.jl() { // from class: com.byazt.jz.ud.1
            @Override // com.byazt.oa.jl
            public <T> T hp(String str, Type type) {
                return null;
            }

            @Override // com.byazt.oa.jl
            public <T> String hp(T t2) {
                return null;
            }
        }).hp(xh()).l(true).hp().l();
        this.f21974r = xsVarL;
        com.byazt.du.di.hp(xsVarL, this);
        com.byazt.du.a.hp(this.f21974r, this);
        com.byazt.du.s.hp(this.f21974r, this, this.zy);
        com.byazt.du.u.hp(this.f21974r);
        com.byazt.du.ud.hp(this.f21974r, sSWebView);
        com.byazt.du.q.hp(this.f21974r, this);
        com.byazt.du.zy.hp(this.f21974r, this);
        m.hp(this.f21974r, this);
        com.byazt.vna.j.hp(this.f21974r, this);
        com.byazt.du.cx.hp(this.f21974r, this);
        com.byazt.du.sz.hp(this.f21974r, this);
        com.byazt.vna.jx.hp(this.f21974r, this);
        com.byazt.vna.hp.hp(this.f21974r, this);
        com.byazt.vna.w.hp(this.f21974r, this);
        com.byazt.vna.a.hp(this.f21974r, this);
        com.byazt.vna.l.hp(this.f21974r, this);
        ms();
        com.byazt.du.jx.hp(this.f21974r, this.f21966j.get(), this.f21975s);
        com.byazt.du.dy.hp(this.f21974r, this.f21966j.get(), this.f21975s);
        com.byazt.du.l.hp(this.f21974r, this.f21966j.get(), this.f21975s);
        com.byazt.du.nu.hp(this.f21974r, this.f21966j.get(), this.f21975s);
        com.byazt.du.eb.hp(this.f21974r, this);
        com.byazt.du.b.hp(this.f21974r, this);
        com.byazt.du.mp.hp(this.f21974r, this);
        com.byazt.du.vv.hp(this.f21974r, this);
        com.byazt.du.xs.hp(this.f21974r, this.zy);
        com.byazt.du.d.hp(this.f21974r, this.f21961a.get(), this.zy);
        com.byazt.du.jl.hp(this.f21974r, this.zy, this.hd);
        kg.hp(this.f21974r, this);
        com.byazt.du.hq.hp(this.f21974r, this, this.zx);
        pu.hp(this.f21974r, this, this.zx);
        rz.hp(this.f21974r, sSWebView, this);
        com.byazt.du.gu.hp(this.f21974r, this.zy, this);
        com.byazt.du.v.hp(this.f21974r, this.zy, this);
        yr.hp(this.f21974r, this.yr);
        f.hp(this.f21974r, this);
        com.byazt.du.lv.hp(this.f21974r, this.rz);
        com.byazt.du.r.hp(this.f21974r, this, this.zy);
        com.byazt.du.k.hp(this.f21974r, this.sz);
        com.byazt.du.e.hp(this.f21974r, this.zy, this);
        com.byazt.du.hp.hp(this.f21974r, this.f21961a.get());
        ms.hp(this.f21974r, this.zy);
        com.byazt.du.j.hp(this.f21974r, this);
        com.byazt.du.wv.hp(this.f21974r, this);
        com.byazt.du.ns.hp(this.f21974r, this, this.f21961a.get(), this.zy);
        com.byazt.du.w.hp(this.f21974r);
        com.byazt.du.n.hp(this.f21974r);
        com.byazt.du.o.hp(this.f21974r, this, this.zy);
        as.hp(this.f21974r, this);
        com.byazt.du.ec.hp(this.f21974r, this.zy);
        com.byazt.du.ky.hp(this.f21974r, this.zy);
        com.byazt.du.xh.hp(this.f21974r, this.zy);
        return this;
    }

    public void jx(String str, JSONObject jSONObject) {
        try {
            com.byazt.oa.xs xsVar = this.f21974r;
            if (xsVar != null) {
                xsVar.hp(str, (String) jSONObject);
            }
        } catch (Throwable th) {
            com.byazt.ymw.u.hp("TTAndroidObject", "sendJsMsg2020 error", th);
        }
    }

    public void a(int i2) {
        this.ec.jx(i2);
    }

    private void l(String str, boolean z2) {
        if (this.lv == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z2) {
            this.lv.a(str);
        } else {
            this.lv.eb(str);
        }
    }

    public void w(int i2) {
        this.ec.w(i2);
    }

    private void w(String str, JSONObject jSONObject) throws JSONException {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", NotificationCompat.CATEGORY_EVENT);
            jSONObject2.put("__event_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            sz(jSONObject2);
        } catch (Exception unused) {
        }
    }

    public void l(final Uri uri) throws JSONException, NumberFormatException {
        long j2;
        mp mpVar;
        try {
            String host = uri.getHost();
            if (!"log_event".equals(host) && !"custom_event".equals(host) && !"log_event_v3".equals(host)) {
                if ("private".equals(host) || "dispatch_message".equals(host)) {
                    com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.jz.ud.4
                        @Override // java.lang.Runnable
                        public void run() {
                            ud.this.q(uri.toString());
                        }
                    });
                    return;
                }
                return;
            }
            String queryParameter = uri.getQueryParameter(PointParamKey.CATEGORY);
            String queryParameter2 = uri.getQueryParameter("tag");
            String queryParameter3 = uri.getQueryParameter("label");
            if (a(queryParameter3)) {
                if (com.byazt.xci.pu.l(this.zy) && TextUtils.equals(queryParameter3, "track")) {
                    return;
                }
                long j3 = 0;
                try {
                    j2 = Long.parseLong(uri.getQueryParameter(f.a.f3244d));
                } catch (Exception unused) {
                    j2 = 0;
                }
                if (j2 == 0 && (mpVar = this.zy) != null) {
                    try {
                        j2 = Long.parseLong(mpVar.j());
                    } catch (Exception unused2) {
                    }
                }
                try {
                    j3 = Long.parseLong(uri.getQueryParameter("ext_value"));
                } catch (Exception unused3) {
                }
                JSONObject jSONObject = new JSONObject();
                String queryParameter4 = uri.getQueryParameter("extra");
                if (!TextUtils.isEmpty(queryParameter4)) {
                    try {
                        jSONObject = new JSONObject(queryParameter4);
                    } catch (Exception unused4) {
                    }
                }
                hp(queryParameter3, jSONObject);
                if ("click".equals(queryParameter3)) {
                    jSONObject = zy(jSONObject);
                    WeakReference<com.byazt.cey.w> weakReference = this.cx;
                    if (weakReference != null && weakReference.get() != null) {
                        this.cx.get().l();
                    }
                }
                JSONObject jSONObject2 = jSONObject;
                String strHp = hp(queryParameter2, queryParameter3);
                String str = !TextUtils.isEmpty(strHp) ? strHp : queryParameter2;
                String strOptString = jSONObject2.optString("log_extra");
                if (this.zy != null && queryParameter3.contains("sanfang") && TextUtils.isEmpty(strOptString)) {
                    jSONObject2.putOpt("log_extra", this.zy.w_());
                }
                com.byazt.jdb.j.hp(queryParameter, str, queryParameter3, j2, j3, jSONObject2, this.su);
            }
        } catch (Exception unused5) {
        }
    }

    @Override // com.byazt.pm.jx
    public void l(String str, JSONObject jSONObject) throws JSONException {
        xh();
        w(str, jSONObject);
    }

    private void s(String str) {
        try {
            JSONArray jSONArray = new JSONArray(new String(Base64.decode(str, 2)));
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                hp hpVar = new hp();
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        hpVar.hp = jSONObjectOptJSONObject.optString("__msg_type", null);
                        hpVar.f21990l = jSONObjectOptJSONObject.optString("__callback_id", null);
                        hpVar.jx = jSONObjectOptJSONObject.optString("func");
                        hpVar.f21989j = jSONObjectOptJSONObject.optJSONObject("params");
                        hpVar.f21991w = jSONObjectOptJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable unused) {
                }
                if (!TextUtils.isEmpty(hpVar.hp) && !TextUtils.isEmpty(hpVar.jx)) {
                    Message messageObtainMessage = this.f21978w.obtainMessage(11);
                    messageObtainMessage.obj = hpVar;
                    this.f21978w.sendMessage(messageObtainMessage);
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str) {
        int iIndexOf;
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    com.byazt.ikh.j jVarAs = as();
                    if (jVarAs != null) {
                        com.byazt.ymw.k.hp(jVarAs, "javascript:ToutiaoJSBridge._fetchQueue()");
                        return;
                    }
                    return;
                }
                if (str.startsWith("bytedance://private/setresult/") && (iIndexOf = str.indexOf(38, 30)) > 0) {
                    String strSubstring = str.substring(30, iIndexOf);
                    String strSubstring2 = str.substring(iIndexOf + 1);
                    if (!strSubstring.equals("SCENE_FETCHQUEUE") || strSubstring2.length() <= 0) {
                        return;
                    }
                    s(strSubstring2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public JSONObject hp() {
        WeakReference<com.byazt.ar.q> weakReference = this.vq;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.vq.get().getContainerInfo();
    }

    public void hp(SSWebView.l lVar) {
        WeakReference<SSWebView> weakReference = this.f21966j;
        if (weakReference == null || weakReference.get() == null || lVar == null) {
            return;
        }
        this.f21966j.get().setOnShakeListener(lVar);
    }

    public ud hp(com.byazt.qk.u uVar) {
        this.f21979y = new WeakReference<>(uVar);
        return this;
    }

    public ud hp(com.byazt.dy.l lVar) {
        this.zx = new WeakReference<>(lVar);
        return this;
    }

    public ud hp(com.byazt.ar.q qVar) {
        this.vq = new WeakReference<>(qVar);
        return this;
    }

    public void hp(int i2) throws JSONException {
        if (ea) {
            return;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                l("twist_callback", (JSONObject) null);
            }
        } else {
            if (this.zy != null && j()) {
                com.byazt.zbc.a.f28347j = true;
            }
            l("wobble_callback", (JSONObject) null);
        }
    }

    public ud hp(com.byazt.tq.hp hpVar) {
        this.lv = hpVar;
        return this;
    }

    public ud hp(View view) {
        this.f21973q = new WeakReference<>(view);
        return this;
    }

    public ud hp(com.byazt.cey.l lVar) {
        this.f21972o = new WeakReference<>(lVar);
        return this;
    }

    public ud hp(com.byazt.cey.jx jxVar) {
        this.f21963d = new WeakReference<>(jxVar);
        return this;
    }

    public ud hp(com.byazt.cey.eb ebVar) {
        this.wv = new WeakReference<>(ebVar);
        return this;
    }

    public ud hp(mp mpVar) {
        this.zy = mpVar;
        return this;
    }

    public ud hp(com.byazt.fub.gu guVar) {
        this.vv = new SoftReference<>(guVar);
        return this;
    }

    public ud hp(com.byazt.qk.gu guVar) {
        this.ec.hp(guVar);
        return this;
    }

    public ud hp(com.byazt.pm.w wVar) {
        this.f21971n = new WeakReference<>(wVar);
        return this;
    }

    public ud hp(JSONObject jSONObject) {
        this.di = jSONObject;
        return this;
    }

    public ud hp(Map<String, Object> map) {
        this.hp = map;
        return this;
    }

    public ud hp(com.byazt.cey.hp hpVar) {
        this.ns = new WeakReference<>(hpVar);
        return this;
    }

    public ud hp(com.byazt.cey.w wVar) {
        this.cx = new WeakReference<>(wVar);
        return this;
    }

    public ud hp(com.byazt.ko.hp hpVar) {
        this.f21962b = new WeakReference<>(hpVar);
        return this;
    }

    public void hp(eb.hp hpVar) {
        this.yr = hpVar;
    }

    public void hp(com.byazt.la.l lVar) {
        this.rz = lVar;
    }

    public static void hp(JSONObject jSONObject, int i2) throws Exception {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = mp().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        jSONObject.put(cl.f49061p, com.byazt.ij.hp.hp());
        jSONObject.put("innerAppName", com.byazt.ij.hp.a());
        jSONObject.put("aid", com.byazt.ij.hp.l());
        jSONObject.put("sdkEdition", com.byazt.ij.hp.jx());
        jSONObject.put("sdkApiVersion", com.byazt.ij.hp.j());
        jSONObject.put("appVersion", com.byazt.ij.hp.w());
        jSONObject.put("netType", com.byazt.ij.hp.eb());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", com.byazt.ij.hp.s());
        jSONObject.put("osVersion", Build.VERSION.SDK_INT);
        jSONObject.put("appId", s.u().ns());
        if (hd.hp(i2)) {
            jSONObject.put("themeStatus", s.u().zx());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0236 A[PHI: r3
      0x0236: PHI (r3v23 org.json.JSONObject) = (r3v19 org.json.JSONObject), (r3v24 org.json.JSONObject) binds: [B:167:0x025e, B:156:0x0234] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject hp(com.byazt.jz.ud.hp r18, int r19) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jz.ud.hp(com.byazt.jz.ud$hp, int):org.json.JSONObject");
    }

    public void hp(float f2) {
        if (this.ec.gu() == null) {
            return;
        }
        try {
            this.ec.gu().hp(f2);
        } catch (Exception unused) {
        }
    }

    public void hp(float f2, float f3, float f4, float f5, int i2) {
        this.ec.hp(f2, f3, f4, f5, i2);
    }

    public static JSONObject hp(mp mpVar, AtomicBoolean atomicBoolean) throws JSONException {
        boolean z2;
        JSONObject jSONObject = new JSONObject();
        if (sz.l() != null) {
            try {
                int iZy = ky.zy(mpVar);
                int iJl = ky.jl(mpVar);
                boolean z3 = true;
                int iJ = com.byazt.xci.lv.l(true, mpVar, true) ? 0 : sz.l().j(iZy);
                int iW = (com.byazt.xci.lv.l(false, mpVar, true) || (com.byazt.xci.hq.hp(mpVar) && com.byazt.xci.hq.l(mpVar) > 0)) ? 0 : sz.l().w(iZy);
                boolean zW = sz.l().w(String.valueOf(iZy));
                if (atomicBoolean != null) {
                    z2 = atomicBoolean.get();
                } else {
                    z2 = mpVar.dh() == 1;
                }
                jSONObject.put("ad_slot_type", iJl);
                jSONObject.put("voice_control", z2);
                jSONObject.put("rv_skip_time", iJ);
                jSONObject.put("fv_skip_show", zW);
                jSONObject.put("iv_skip_time", iW);
                if (mpVar == null || !mpVar.jc()) {
                    z3 = false;
                }
                jSONObject.put("show_dislike", z3);
                jSONObject.put("video_adaptation", mpVar != null ? mpVar.h() : 0);
                jSONObject.put("h5_cache_resources_enable", com.byazt.xci.ud.hp);
                jSONObject.put("dark_mode_config", hd.hp());
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    private void hp(final hp hpVar, final JSONObject jSONObject) {
        if (hpVar == null) {
            return;
        }
        try {
            hp(hpVar.f21989j, new com.byazt.cey.j() { // from class: com.byazt.jz.ud.13
                @Override // com.byazt.cey.j
                public void hp(boolean z2, List<mp> list, boolean z3) throws JSONException {
                    if (!z2) {
                        ud.this.j(hpVar.f21990l, jSONObject);
                        return;
                    }
                    try {
                        jSONObject.put("creatives", ud.hp(list));
                        ud.this.j(hpVar.f21990l, jSONObject);
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    private boolean hp(String str, int i2, com.byazt.xci.b bVar) {
        HashMap<String, q> map;
        q qVar;
        if (TextUtils.isEmpty(str) || (map = this.ud) == null || (qVar = map.get(str)) == null) {
            return false;
        }
        qVar.hp(i2, bVar);
        return true;
    }

    public void hp(JSONObject jSONObject, com.byazt.cey.j jVar) throws JSONException {
        com.byazt.cm.l.hp(this.zy, jSONObject, jVar, (com.byazt.jt.l) null);
    }

    public boolean hp(Uri uri) {
        if (uri == null) {
            return false;
        }
        if ("bytedance".equals(uri.getScheme())) {
            return jx.containsKey(uri.getHost());
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(int i2, mp mpVar, int i3, int i4) {
        WeakReference<Context> weakReference = this.f21961a;
        if (weakReference == null || mpVar == null || weakReference.get() == null) {
            return;
        }
        Context context = this.f21961a.get();
        com.byazt.go.hp hpVar = new com.byazt.go.hp(context, mpVar, this.pu, this.gu);
        com.byazt.mi.hp.hp().hp(mpVar.hashCode() + mpVar.ns()).put("live_saas_interaction_type", Integer.valueOf(i3));
        if (i2 == 0) {
            ((com.byazt.ey.hp) hpVar.hp(com.byazt.ey.hp.class)).l(true);
        }
        final String strJ = mpVar.j();
        com.byazt.gog.jx jxVarL = this.an.get(strJ);
        if (jxVarL == null) {
            if (i4 == 1) {
                if (mpVar.q() == 4) {
                    jxVarL = com.byazt.ff.s.hp(context, mpVar, this.pu);
                }
            } else {
                jxVarL = com.byazt.ff.s.l(context, mpVar, this.pu);
            }
            if (jxVarL != null) {
                jxVarL.hp(new com.byazt.gog.hp() { // from class: com.byazt.jz.ud.5
                    @Override // com.byazt.gog.hp
                    public void hp() {
                        com.byazt.pm.hp.hp(strJ);
                    }

                    @Override // com.byazt.gog.hp
                    public void jx(long j2, long j3, String str, String str2) {
                        com.byazt.pm.hp.jx(strJ, j2, j3);
                    }

                    @Override // com.byazt.gog.hp
                    public void l(long j2, long j3, String str, String str2) {
                        com.byazt.pm.hp.l(strJ, j2, j3);
                    }

                    @Override // com.byazt.gog.hp
                    public void hp(long j2, long j3, String str, String str2) {
                        com.byazt.pm.hp.hp(strJ, j2, j3);
                    }

                    @Override // com.byazt.gog.hp
                    public void hp(long j2, String str, String str2) {
                        com.byazt.pm.hp.l(strJ);
                    }

                    @Override // com.byazt.gog.hp
                    public void hp(String str, String str2) {
                        com.byazt.pm.hp.jx(strJ);
                    }
                });
                hp(strJ, jxVarL);
            }
        }
        if (jxVarL != null) {
            ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(jxVarL);
        }
        hpVar.hp(null, new com.byazt.xci.e());
        if (y()) {
            WeakReference<com.byazt.ar.q> weakReference2 = this.vq;
            if (weakReference2 == null || weakReference2.get() == null) {
                return;
            }
            this.vq.get().j();
            return;
        }
        if (context instanceof com.byazt.ij.l) {
            ((com.byazt.ij.l) context).hp(1);
        }
    }

    public void hp(String str, JSONObject jSONObject) {
        JSONArray jSONArray;
        String strOptString;
        String strOptString2;
        String strOptString3;
        String strOptString4;
        JSONObject jSONObject2;
        String str2 = "click";
        String strL = "";
        try {
            if ("show".equals(str)) {
                jSONArray = jSONObject.optJSONArray("show_url");
                str2 = "show";
            } else if ("click".equals(str)) {
                jSONArray = jSONObject.getJSONArray("click_url");
            } else {
                str2 = null;
                jSONArray = null;
            }
            if (jSONArray != null && jSONArray.length() != 0) {
                String strHp = com.byazt.zn.v.hp();
                if (TextUtils.isEmpty(strHp)) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(jSONArray.getString(i2));
                }
                String strOptString5 = jSONObject.optString("log_extra");
                try {
                    jSONObject2 = new JSONObject(strOptString5);
                    strOptString = jSONObject2.optString("ad_id");
                    try {
                        strOptString2 = jSONObject2.optString("creative_id");
                    } catch (Throwable unused) {
                        strOptString2 = "";
                        strOptString3 = strOptString2;
                        strOptString4 = strOptString3;
                        HashMap map = new HashMap();
                        map.put("aid", strOptString);
                        map.put("cid", strOptString2);
                        map.put("req_id", strOptString3);
                        map.put("customer_id", strOptString4);
                        com.byazt.lf.l.hp(strHp, arrayList, true, map, com.byazt.jdb.j.hp(strOptString5, strOptString, strOptString3, strL, str2));
                    }
                } catch (Throwable unused2) {
                    strOptString = "";
                    strOptString2 = strOptString;
                }
                try {
                    strOptString3 = jSONObject2.optString("req_id");
                    try {
                        strOptString4 = jSONObject2.optString("customer_id");
                        try {
                            strL = ky.l(jSONObject2.optInt("ad_slot_type"));
                        } catch (Throwable unused3) {
                        }
                    } catch (Throwable unused4) {
                        strOptString4 = "";
                    }
                } catch (Throwable unused5) {
                    strOptString3 = "";
                    strOptString4 = strOptString3;
                    HashMap map2 = new HashMap();
                    map2.put("aid", strOptString);
                    map2.put("cid", strOptString2);
                    map2.put("req_id", strOptString3);
                    map2.put("customer_id", strOptString4);
                    com.byazt.lf.l.hp(strHp, arrayList, true, map2, com.byazt.jdb.j.hp(strOptString5, strOptString, strOptString3, strL, str2));
                }
                HashMap map22 = new HashMap();
                map22.put("aid", strOptString);
                map22.put("cid", strOptString2);
                map22.put("req_id", strOptString3);
                map22.put("customer_id", strOptString4);
                com.byazt.lf.l.hp(strHp, arrayList, true, map22, com.byazt.jdb.j.hp(strOptString5, strOptString, strOptString3, strL, str2));
            }
        } catch (Throwable unused6) {
        }
    }

    public String hp(String str, String str2) {
        return ((("landing_perf_stats".equals(str2) || "landing_perf_exception".equals(str2)) && "landingpage".equals(str)) || this.vv != null || y()) ? str : ky.hp(this.gu);
    }

    public void hp(String str, boolean z2) {
        com.byazt.pm.j jVar = this.eb;
        if (jVar != null) {
            jVar.hp(str, z2);
        }
    }

    public void hp(String str, com.byazt.gog.jx jxVar) {
        this.an.put(str, jxVar);
    }

    public void hp(JSONObject jSONObject, boolean z2) {
        WeakReference<Context> weakReference;
        if (this.eb == null || (weakReference = this.f21961a) == null || weakReference.get() == null) {
            return;
        }
        this.eb.hp(this.xs && this.f21976u);
        this.eb.l(z2);
        this.eb.jx(this.su == 3);
        this.eb.hp(this.f21961a.get(), jSONObject, this.pu, this.f21964e);
    }

    public void hp(com.byazt.cey.a aVar) {
        this.pc = new WeakReference<>(aVar);
    }

    public void hp(int i2, int i3) {
        int iJx = xh.jx(sz.getContext(), i2);
        int iJx2 = xh.jx(sz.getContext(), i3);
        WeakReference<com.byazt.ar.q> weakReference = this.vq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.vq.get().hp(Integer.MIN_VALUE, Integer.MIN_VALUE, iJx, iJx2);
    }

    public void hp(int i2, int i3, int i4, int i5) {
        int iJx;
        int iJx2;
        int iJx3;
        int iJx4 = Integer.MIN_VALUE;
        if (i2 == Integer.MAX_VALUE || i3 == Integer.MAX_VALUE) {
            iJx = Integer.MIN_VALUE;
            iJx2 = Integer.MIN_VALUE;
        } else {
            iJx = xh.jx(sz.getContext(), i2);
            iJx2 = xh.jx(sz.getContext(), i3);
        }
        if (i4 == Integer.MAX_VALUE || i5 == Integer.MAX_VALUE) {
            iJx3 = Integer.MIN_VALUE;
        } else {
            iJx4 = xh.jx(sz.getContext(), i4);
            iJx3 = xh.jx(sz.getContext(), i5);
        }
        WeakReference<com.byazt.ar.q> weakReference = this.vq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.vq.get().hp(iJx, iJx2, iJx4, iJx3);
    }

    public void hp(byte b3) {
        this.su = b3;
    }
}

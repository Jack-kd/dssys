package com.byazt.ar;

import android.R;
import android.content.Context;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.core.view.InputDeviceCompat;
import com.byazt.es.s;
import com.byazt.fub.k;
import com.byazt.ikh.jx;
import com.byazt.jz.sz;
import com.byazt.jz.ud;
import com.byazt.sq.e;
import com.byazt.xci.d;
import com.byazt.xci.mp;
import com.byazt.xci.u;
import com.byazt.ykc.SSWebView;
import com.byazt.yp.hp;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, InputDeviceCompat.SOURCE_GAMEPAD})
/* loaded from: classes2.dex */
public class PlayableFeedWebView extends SSWebView implements jx.hp, q, com.byazt.db.l {

    /* renamed from: a, reason: collision with root package name */
    public ud f18102a;

    /* renamed from: e, reason: collision with root package name */
    public final ViewGroup f18103e;
    public final mp eb;
    public u ec;
    public boolean gu;
    public com.byazt.ar.hp jl;

    /* renamed from: k, reason: collision with root package name */
    public int f18104k;

    /* renamed from: n, reason: collision with root package name */
    public double f18105n;

    /* renamed from: q, reason: collision with root package name */
    public u f18106q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.db.hp f18107s;
    public u sz;

    /* renamed from: u, reason: collision with root package name */
    public final Runnable f18108u;

    /* renamed from: v, reason: collision with root package name */
    public final Runnable f18109v;
    public com.byazt.fub.gu vv;

    /* renamed from: w, reason: collision with root package name */
    public final Context f18110w;
    public com.byazt.es.s xs;
    public boolean zy;

    public PlayableFeedWebView(com.byazt.db.hp hpVar, ViewGroup viewGroup) {
        super(hpVar.getContext());
        this.gu = false;
        this.zy = false;
        this.f18104k = 8;
        this.f18109v = new Runnable() { // from class: com.byazt.ar.PlayableFeedWebView.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                PlayableFeedWebView.this.l(0);
            }
        };
        this.f18108u = new Runnable() { // from class: com.byazt.ar.PlayableFeedWebView.2
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                PlayableFeedWebView.this.l(8);
            }
        };
        this.vv = new com.byazt.fub.gu() { // from class: com.byazt.ar.PlayableFeedWebView.3
            @Override // com.byazt.fub.gu
            public void hp(k kVar) {
            }

            @Override // com.byazt.fub.gu
            public void l(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
            }

            @Override // com.byazt.fub.gu
            public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
                com.byazt.rk.a.j(com.byazt.gy.eb.hp(PlayableFeedWebView.this.eb));
                PlayableFeedWebView.this.jl.hp(view, i2, jxVar, i3);
            }
        };
        this.f18107s = hpVar;
        this.f18110w = hpVar.getContext();
        this.eb = hpVar.hp();
        this.f18103e = viewGroup;
        setVisibility(4);
        setTag("easy_pfwv");
        setTouchEventListener(this);
    }

    private void e() {
        ud udVar = new ud(this.f18110w);
        this.f18102a = udVar;
        udVar.l(this).hp(this.eb).l(this.eb.j()).j(this.eb.w_()).hp(ky.l(this.eb)).w(ky.sz(this.eb)).hp((q) this).j(com.byazt.yp.l.hp(0.0f, 0.0f, false, this.eb, true)).hp(this.vv).hp((SSWebView) this);
    }

    private void gu() {
        setBackgroundColor(0);
        setBackgroundResource(R.color.transparent);
        hp((SSWebView) this);
        if (this.eb != null) {
            Context context = this.f18110w;
            ud udVar = this.f18102a;
            mp mpVar = this.eb;
            setWebViewClient(new hp(context, udVar, mpVar, mpVar.j()));
        }
        com.byazt.wx.w.hp().hp(this, this.f18102a);
        setWebChromeClient(new com.byazt.cf.jx(this.f18102a));
    }

    private void q() {
        com.byazt.rl.jx jxVar = new com.byazt.rl.jx();
        com.byazt.rl.w wVar = new com.byazt.rl.w(this.f18102a);
        com.byazt.rl.j jVar = new com.byazt.rl.j();
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        com.byazt.es.s sVarJx = jxVar.hp(sz.getContext(), this, wVar, jVar, hashSet, s.hp.OTHER).w(getUrl()).j(com.byazt.ij.hp.s()).hp(com.byazt.ij.hp.hp()).hp("sdkEdition", com.byazt.ij.hp.jx()).l(com.byazt.ij.hp.a()).jx(com.byazt.ij.hp.w()).jx(false);
        this.xs = sVarJx;
        Set<String> setE = sVarJx.e();
        if (this.f18102a == null || setE == null || setE.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.xs);
        Iterator<String> it = setE.iterator();
        while (it.hasNext()) {
            this.f18102a.a().hp(it.next(), (com.byazt.oa.w<?, ?>) new com.byazt.oa.w<JSONObject, JSONObject>() { // from class: com.byazt.ar.PlayableFeedWebView.4
                @Override // com.byazt.oa.w
                public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
                    try {
                        com.byazt.es.s sVar = (com.byazt.es.s) weakReference.get();
                        if (sVar == null) {
                            return null;
                        }
                        return sVar.j(hp(), jSONObject);
                    } catch (Throwable unused) {
                        return null;
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        hp(Integer.MIN_VALUE, Integer.MIN_VALUE, this.f18103e.getWidth(), this.f18103e.getHeight());
        e();
        q();
        gu();
        loadUrl(d.eb(this.eb).hp(this.f18103e.getWidth() <= this.f18103e.getHeight()));
        setExpressVideoListener(this.jl);
    }

    @Override // com.byazt.ar.q
    public boolean K_() {
        return this.zy;
    }

    @Override // com.byazt.ar.q
    public void L_() throws JSONException {
        if (this.f18102a == null || ((ViewGroup) getParent()) == null) {
            return;
        }
        setOnShakeListener(new com.byazt.qk.d(this, this.f18102a, this.eb));
        if (this.f18107s != null) {
            this.f18107s.hp(true, getMaxRectJson());
        }
        l(getVisibility());
    }

    public void a() {
        this.zy = true;
        ud udVar = this.f18102a;
        if (udVar != null) {
            udVar.r();
        }
    }

    @Override // com.byazt.ykc.SSWebView, com.byazt.vz.BizWebView, com.byazt.vz.MultiWebview, com.byazt.ikh.j
    public void destroy() {
        this.jl = null;
        O_();
        setOnShakeListener(null);
        ud udVar = this.f18102a;
        if (udVar != null) {
            udVar.w();
            this.f18102a.hp((SSWebView.l) null);
        }
        this.f18102a = null;
        super.destroy();
    }

    @Override // com.byazt.ykc.SSWebView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public void eb() {
        if (this.gu) {
            return;
        }
        this.gu = true;
        postDelayed(new Runnable() { // from class: com.byazt.ar.PlayableFeedWebView.5
            @Override // java.lang.Runnable
            public void run() {
                PlayableFeedWebView.this.update();
            }
        }, 100L);
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.a.j(com.byazt.gy.eb.hp(this.eb), 2);
    }

    @Override // com.byazt.db.l
    public JSONObject getActualRectJson() {
        return u.hp(this.sz);
    }

    @Override // com.byazt.ar.q
    public JSONObject getContainerInfo() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            int left = this.f18103e.getLeft();
            int top = this.f18103e.getTop();
            jSONArray.put(0, xh.j(getContext(), left));
            jSONArray.put(1, xh.j(getContext(), top));
            jSONObject.put(SQLiteMTAHelper.TABLE_POINT, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            int measuredWidth = this.f18103e.getMeasuredWidth();
            int measuredHeight = this.f18103e.getMeasuredHeight();
            jSONArray2.put(0, xh.j(getContext(), measuredWidth));
            jSONArray2.put(1, xh.j(getContext(), measuredHeight));
            jSONObject.put("size", jSONArray2);
            return jSONObject;
        } catch (Exception e2) {
            com.byazt.ymw.u.l("xeasy", e2.getMessage());
            return null;
        }
    }

    @Override // com.byazt.ar.q
    public JSONObject getCreativeVideoViewInfo() {
        return new JSONObject();
    }

    @Override // com.byazt.ar.q
    public JSONObject getEstimatedInteractionAreaInfo() {
        com.byazt.db.hp hpVar = this.f18107s;
        if (hpVar != null) {
            return hpVar.l();
        }
        return null;
    }

    @Override // com.byazt.db.l
    public double getExceedAreaRate() {
        return this.f18105n;
    }

    public ud getJsObject() {
        return this.f18102a;
    }

    @Override // com.byazt.db.l
    public JSONObject getMaxRectJson() {
        return u.hp(this.ec);
    }

    @Override // com.byazt.ar.q
    public void j() {
        com.byazt.rk.a.j(com.byazt.gy.eb.hp(this.eb));
        com.byazt.ar.hp hpVar = this.jl;
        if (hpVar != null) {
            hpVar.hp((View) this);
        }
    }

    @Override // com.byazt.vz.BizWebView, com.byazt.ikh.j
    public void loadUrl(String str) {
        super.loadUrl(str);
    }

    @Override // com.byazt.ykc.SSWebView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) throws JSONException {
        super.onVisibilityChanged(view, i2);
        hp(i2 == 0);
    }

    @Override // com.byazt.ykc.SSWebView, android.view.View
    public void onWindowFocusChanged(boolean z2) throws JSONException {
        super.onWindowFocusChanged(z2);
        hp(z2);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        removeCallbacks(this.f18108u);
        removeCallbacks(this.f18109v);
        if (i2 == 0) {
            postDelayed(this.f18109v, 50L);
        } else {
            postDelayed(this.f18108u, 50L);
        }
    }

    public void s() throws JSONException {
        hp(false);
    }

    @Override // com.byazt.ar.q
    public void setEasyPlayInteractionAreaInfo(u uVar) {
        this.sz = uVar;
    }

    public void setEasyPlayableListener(com.byazt.ar.hp hpVar) {
        this.jl = hpVar;
    }

    public void setExpressVideoListener(com.byazt.qk.gu guVar) {
        ud udVar = this.f18102a;
        if (udVar != null) {
            udVar.hp(guVar);
        }
    }

    @Override // com.byazt.ar.q
    public void hp(u uVar, double d2) {
        this.ec = uVar;
        this.f18105n = d2;
        this.f18106q = uVar;
    }

    @Override // com.byazt.ar.q
    public void jx() throws JSONException {
        if (this.f18107s != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", 1);
            } catch (JSONException e2) {
                e2.getMessage();
            }
            this.f18107s.hp(false, jSONObject);
        }
    }

    @Override // com.byazt.ar.q
    public void l() {
        com.byazt.rk.a.j(com.byazt.gy.eb.hp(this.eb), 1);
        com.byazt.db.hp hpVar = this.f18107s;
        if (hpVar != null) {
            hpVar.jx();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 1726})
    public static class hp extends com.byazt.cf.j {
        public mp hp;

        public hp(Context context, ud udVar, mp mpVar, String str) {
            super(context, udVar, str);
            this.hp = mpVar;
        }

        @Override // com.byazt.cf.j, android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(final WebView webView, String str) {
            try {
                com.byazt.ir.hp hpVarHp = com.byazt.yp.hp.hp(webView, this.hp, str, new hp.InterfaceC0426hp() { // from class: com.byazt.ar.PlayableFeedWebView.hp.1
                    @Override // com.byazt.yp.hp.InterfaceC0426hp
                    public boolean hp() {
                        return false;
                    }

                    @Override // com.byazt.yp.hp.InterfaceC0426hp
                    public com.byazt.ir.hp hp(String str2, e.hp hpVar, String str3) {
                        com.byazt.ir.hp hpVar2 = new com.byazt.ir.hp();
                        hpVar2.hp(5);
                        hpVar2.hp(com.byazt.wv.l.l().hp(webView, hpVar, str2));
                        return hpVar2;
                    }
                });
                if (hpVarHp != null && hpVarHp.hp() != null) {
                    return hpVarHp.hp();
                }
            } catch (Throwable unused) {
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // com.byazt.cf.j, android.webkit.WebViewClient
        @RequiresApi(api = 21)
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            try {
                return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
            } catch (Throwable th) {
                com.byazt.ymw.u.hp("xeasy", "shouldInterceptRequest error1", th);
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        }
    }

    @Override // com.byazt.ar.q
    public void hp(final int i2, final int i3, final int i4, final int i5) {
        com.byazt.dnb.s.hp((Runnable) new com.byazt.uid.eb("changeFrame") { // from class: com.byazt.ar.PlayableFeedWebView.6
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i5);
                int i6 = i2;
                if (i6 == Integer.MIN_VALUE && i3 == Integer.MIN_VALUE) {
                    layoutParams.gravity = 17;
                }
                if (i6 != Integer.MIN_VALUE) {
                    PlayableFeedWebView.this.setTranslationX(i6);
                }
                int i7 = i3;
                if (i7 != Integer.MIN_VALUE) {
                    PlayableFeedWebView.this.setTranslationY(i7);
                }
                PlayableFeedWebView.this.setLayoutParams(layoutParams);
            }
        });
    }

    public void l(int i2) throws JSONException {
        if (i2 == this.f18104k) {
            return;
        }
        this.f18104k = i2;
        if (this.f18102a != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adVisible", i2 == 0);
                this.f18102a.l("expressAdShow", jSONObject);
            } catch (Exception unused) {
            }
        }
        com.byazt.rs.hp.hp(this.f18102a, i2 == 0, true, true);
    }

    private void hp(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.byazt.cf.l.hp(this.f18110w).hp(false).hp(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            com.byazt.zn.sz.hp(sSWebView, com.byazt.jz.d.f21856j, mp.w(this.eb));
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
            com.byazt.ymw.u.l("xeasy", e2.toString());
        }
    }

    public void hp(boolean z2) throws JSONException {
        ud udVar = this.f18102a;
        if (udVar != null) {
            udVar.gu(z2);
        }
    }

    @Override // com.byazt.ikh.jx.hp
    public Pair<Boolean, Boolean> hp(View view, MotionEvent motionEvent) throws JSONException {
        if (motionEvent.getAction() != 0) {
            return null;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        int iJ = xh.j(getContext(), x2);
        int iJ2 = xh.j(getContext(), y2);
        u uVar = this.f18106q;
        if (uVar == null || uVar.hp(iJ, iJ2)) {
            return null;
        }
        com.byazt.db.hp hpVar = this.f18107s;
        if (hpVar != null) {
            hpVar.hp(this.eb, iJ, iJ2, 2);
        }
        return new Pair<>(Boolean.TRUE, Boolean.FALSE);
    }
}

package com.byazt.xx;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.anythink.core.common.res.d;
import com.byazt.cey.w;
import com.byazt.es.eb;
import com.byazt.es.s;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.gi.BaseLandingPageActivity;
import com.byazt.jdb.a;
import com.byazt.jy.PlayableEndcardFrameLayout;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.pg.r;
import com.byazt.rm.AbstractEndCardFrameLayout;
import com.byazt.td.l;
import com.byazt.uy.RewardLpBottomView;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.zn.ky;
import com.byazt.zn.n;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST, 30})
/* loaded from: classes3.dex */
public class jx extends com.byazt.xx.hp implements r.hp, a.l {

    /* renamed from: f, reason: collision with root package name */
    public static final eb.hp f27830f = new eb.hp() { // from class: com.byazt.xx.jx.2
        @Override // com.byazt.es.eb.hp
        public void hp(String str, String str2, Throwable th) {
            u.hp(str, str2, th);
        }
    };
    public final com.byazt.gsd.hp as;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f27831d;
    public final AtomicBoolean di;
    public com.byazt.ct.jx dy;
    public DownloadListener hd;
    public long hq;
    public com.byazt.nc.hp kg;
    public l.InterfaceC0370l ky;
    public com.byazt.jdb.eb lv;

    /* renamed from: m, reason: collision with root package name */
    public l.hp f27832m;
    public final hp mp;

    /* renamed from: ms, reason: collision with root package name */
    public RewardLpBottomView f27833ms;
    public final com.byazt.cey.jx nd;
    public FrameLayout nu;

    /* renamed from: o, reason: collision with root package name */
    public final AtomicBoolean f27834o;
    public boolean pu;

    /* renamed from: r, reason: collision with root package name */
    public s f27835r;
    public final com.byazt.cey.l rz;
    public final AtomicBoolean ud;
    public final ud wv;
    public PlayableEndcardFrameLayout xh;

    /* renamed from: y, reason: collision with root package name */
    public String f27836y;
    public final w yr;
    public com.byazt.go.l zx;

    public interface hp {
        void hp(WebView webView, String str);

        void hp(WebView webView, String str, Bitmap bitmap);
    }

    public jx(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, String str, int i2, int i3, boolean z2, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        super(tTBaseVideoActivity, mpVar, str, i2, i3, z2);
        this.di = new AtomicBoolean(false);
        this.f27834o = new AtomicBoolean(false);
        this.f27831d = new AtomicBoolean(false);
        this.ud = new AtomicBoolean(false);
        this.wv = new ud(Looper.getMainLooper(), this);
        this.hq = 0L;
        this.mp = new hp() { // from class: com.byazt.xx.jx.1
            @Override // com.byazt.xx.jx.hp
            public void hp(WebView webView, String str2) {
                if (jx.this.hp.y() instanceof com.byazt.vsq.s) {
                    return;
                }
                jx.this.wv.removeMessages(101);
                if (jx.this.di.getAndSet(true)) {
                    return;
                }
                if (n.jx(jx.this.f27823l) || jx.this.pu) {
                    if (jx.this.ns()) {
                        jx.this.hp(0);
                    } else if (jx.this.f27832m != null) {
                        jx.this.f27832m.hp();
                    }
                }
            }

            @Override // com.byazt.xx.jx.hp
            public void hp(WebView webView, String str2, Bitmap bitmap) throws JSONException {
                if (n.jx(jx.this.f27823l)) {
                    if (jx.this.f27823l.pk() == 1 || ec.zy(jx.this.f27823l)) {
                        jx.this.jx(1);
                        jx.this.wv.sendEmptyMessageDelayed(101, 10000L);
                    }
                    if (jx.this.f27834o.getAndSet(true)) {
                        return;
                    }
                    jx.this.hq = System.currentTimeMillis();
                    jx.this.ky.hp();
                }
            }
        };
        this.yr = new w() { // from class: com.byazt.xx.jx.3
            @Override // com.byazt.cey.w
            public void hp(int i4) {
                jx.this.f27826s.q(true);
                if (ec.zy(jx.this.f27823l)) {
                    jx.this.ky.l();
                }
                jx.this.hp.jx(i4);
            }

            @Override // com.byazt.cey.w
            public void l() throws JSONException {
                if (!ec.hp(jx.this.f27823l) || ec.zy(jx.this.f27823l)) {
                    return;
                }
                jx.this.hp.hp(1);
            }

            @Override // com.byazt.cey.w
            public void hp() {
                if (ea.gu(jx.this.f27823l)) {
                    jx.this.hp.j(3);
                }
            }
        };
        this.rz = new com.byazt.cey.l() { // from class: com.byazt.xx.jx.4
            @Override // com.byazt.cey.l
            public void hp(boolean z3, int i4, String str2) {
                if (z3) {
                    jx.this.f27827u = true;
                }
            }
        };
        this.nd = new com.byazt.cey.jx() { // from class: com.byazt.xx.jx.5
            @Override // com.byazt.cey.jx
            public void hp() {
                jx.this.wv.removeMessages(101);
            }
        };
        this.eb = abstractEndCardFrameLayout.getPlayableWebView();
        this.nu = (FrameLayout) this.hp.findViewById(2114387919);
        this.xh = (PlayableEndcardFrameLayout) this.hp.findViewById(2114387675);
        this.f27833ms = (RewardLpBottomView) this.hp.findViewById(2114387824);
        this.as = new com.byazt.gsd.hp(this.jx, tTBaseVideoActivity, mpVar, n.jx(this.f27823l) ? 2 : 1, tTBaseVideoActivity.y().pu(), abstractEndCardFrameLayout.getVideoArea());
        hp();
    }

    private void as() throws JSONException {
        if (this.hp.hd() == null) {
            return;
        }
        long jU = !this.hp.hd().hp() ? this.hp.hd().u() : 0L;
        boolean zZy = this.hp.hd().zy();
        if (!(this.hp.y() instanceof com.byazt.vsq.s)) {
            s sVar = this.f27835r;
            zZy = sVar != null && sVar.eb();
        }
        this.as.hp(jU, zZy);
    }

    private void ky() {
        this.f27820e = n.hp(this.f27823l);
        float fQo = this.f27823l.qo();
        if (TextUtils.isEmpty(this.f27820e)) {
            return;
        }
        String strTrim = this.f27820e.trim();
        this.f27820e = strTrim;
        Uri.Builder builderBuildUpon = Uri.parse(strTrim).buildUpon();
        if (this.ec == 1) {
            builderBuildUpon.appendQueryParameter("orientation", "portrait");
        }
        this.f27820e = builderBuildUpon.appendQueryParameter("height", String.valueOf(this.f27824n)).appendQueryParameter("width", String.valueOf(this.sz)).appendQueryParameter("aspect_ratio", String.valueOf(fQo)).toString();
    }

    private void ms() throws JSONException {
        this.wv.sendMessage(l(3));
        xh();
        this.hp.jx(0);
    }

    private void pu() {
        RewardLpBottomView rewardLpBottomView;
        if (!n.eb(this.f27823l)) {
            this.f27833ms = null;
            return;
        }
        if (ec.j(this.f27823l)) {
            this.f27833ms = null;
            return;
        }
        if (!ec.eb(this.f27823l)) {
            this.f27833ms = null;
        } else {
            if (this.xh == null || (rewardLpBottomView = this.f27833ms) == null) {
                return;
            }
            rewardLpBottomView.hp(this.f27823l, this.jx);
            this.xh.hp(new PlayableEndcardFrameLayout.hp() { // from class: com.byazt.xx.jx.7
                @Override // com.byazt.jy.PlayableEndcardFrameLayout.hp
                public void hp() throws JSONException {
                    if (jx.this.f27833ms != null) {
                        jx.this.f27833ms.l();
                    }
                    TTBaseVideoActivity tTBaseVideoActivity = jx.this.hp;
                    if (tTBaseVideoActivity != null) {
                        tTBaseVideoActivity.e(1);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        this.f27827u = true;
        this.f27831d.set(true);
        this.wv.sendMessage(l(4));
        TTBaseVideoActivity tTBaseVideoActivity = this.hp;
        if (tTBaseVideoActivity != null) {
            tTBaseVideoActivity.zy(8);
        }
        l.InterfaceC0370l interfaceC0370l = this.ky;
        if (interfaceC0370l != null) {
            interfaceC0370l.hp();
        }
    }

    private void xh() throws JSONException {
        l.hp hpVar = this.f27832m;
        if (hpVar != null) {
            hpVar.hp();
            jx(2);
        }
    }

    @Override // com.byazt.xx.hp
    public String b() {
        return "playable";
    }

    public void d() {
        SSWebView sSWebView;
        if (this.f27828v || (sSWebView = this.eb) == null || sSWebView.getWebView() == null) {
            return;
        }
        this.eb.loadUrl(this.f27820e);
        this.f27828v = true;
        s sVar = this.f27835r;
        if (sVar != null) {
            sVar.a(this.f27820e);
        }
    }

    @Override // com.byazt.xx.hp
    public void di() {
        super.di();
        this.as.jx();
        com.byazt.ct.jx jxVar = this.dy;
        if (jxVar != null) {
            jxVar.jx();
        }
    }

    public boolean dy() {
        return !this.f27831d.get();
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) throws JSONException {
        int i2 = message.what;
        if (i2 == 101) {
            ms();
            return;
        }
        if (i2 != 102) {
            return;
        }
        this.wv.removeMessages(102);
        this.ky.jx().hp(true);
        this.hp.su();
        int i3 = message.arg1;
        if (i3 == 2) {
            xh();
        } else if (i3 == 0 || i3 == 1) {
            wv();
        }
    }

    public long hq() {
        return System.currentTimeMillis() - this.hq;
    }

    @Override // com.byazt.xx.hp
    public void jl() throws JSONException {
        super.jl();
        if (this.f27835r != null && xh.j(this.eb)) {
            this.f27835r.l(true);
        }
        com.byazt.ct.jx jxVar = this.dy;
        if (jxVar != null) {
            jxVar.jx();
        }
        com.byazt.jdb.eb ebVar = this.lv;
        if (ebVar != null) {
            ebVar.jx();
        }
    }

    @Override // com.byazt.xx.hp
    public void k() throws JSONException {
        super.k();
        com.byazt.jdb.eb ebVar = this.lv;
        if (ebVar != null) {
            ebVar.hp(0);
        }
    }

    public void lv() {
        if (this.eb == null || this.f27835r != null) {
            return;
        }
        if (com.byazt.jz.s.u().f()) {
            eb.hp(f27830f);
        }
        com.byazt.rl.jx jxVar = new com.byazt.rl.jx();
        j jVar = new j(this.yr);
        com.byazt.rl.w wVar = new com.byazt.rl.w(this.f27826s);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.f27823l.j());
            jSONObject.put("log_extra", this.f27823l.w_());
        } catch (Throwable unused) {
        }
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        s sVarHp = jxVar.hp(sz.getContext(), this.eb, wVar, jVar, hashSet, s.hp.LAND_PAGE).w(this.f27820e).j(com.byazt.ij.hp.s()).hp(com.byazt.ij.hp.hp()).w(jSONObject).hp("sdkEdition", com.byazt.ij.hp.jx()).l(com.byazt.ij.hp.a()).jx(com.byazt.ij.hp.w()).hp(10L).l(10L).jx(false).hp(false);
        this.f27835r = sVarHp;
        Set<String> setE = sVarHp.e();
        if (this.f27826s == null || setE == null || setE.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.f27835r);
        Iterator<String> it = setE.iterator();
        while (it.hasNext()) {
            this.f27826s.a().hp(it.next(), (com.byazt.oa.w<?, ?>) new com.byazt.oa.w<JSONObject, JSONObject>() { // from class: com.byazt.xx.jx.9
                @Override // com.byazt.oa.w
                public JSONObject hp(JSONObject jSONObject2, com.byazt.oa.a aVar) throws Exception {
                    try {
                        s sVar = (s) weakReference.get();
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

    public com.byazt.jz.ud nu() {
        return this.f27826s;
    }

    public boolean ud() {
        com.byazt.jz.ud udVar = this.f27826s;
        if (udVar != null) {
            return udVar.gu();
        }
        return true;
    }

    @Override // com.byazt.xx.hp
    public void v() {
        super.v();
        s sVar = this.f27835r;
        if (sVar != null) {
            sVar.lv();
        }
        a aVar = this.jl;
        if (aVar != null) {
            aVar.hp((a.l) null);
        }
        this.as.j();
        com.byazt.ct.jx jxVar = this.dy;
        if (jxVar != null) {
            jxVar.j();
        }
        com.byazt.jdb.eb ebVar = this.lv;
        if (ebVar != null) {
            ebVar.j();
        }
        this.hd = null;
    }

    public void wv() throws JSONException {
        hp(true);
        s sVar = this.f27835r;
        if (sVar != null) {
            sVar.l(true);
        }
        jx(true);
        hp(false, true);
        com.byazt.cf.j jVar = this.gu;
        if (jVar != null) {
            jVar.l(false);
        }
    }

    @Override // com.byazt.xx.hp
    public void zy() throws JSONException {
        super.zy();
        s sVar = this.f27835r;
        if (sVar != null) {
            sVar.l(false);
        }
        com.byazt.ct.jx jxVar = this.dy;
        if (jxVar != null) {
            jxVar.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", i2);
        } catch (Exception unused) {
        }
        k.hp().jx(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean z2, Map<String, Object> map, View view) {
        SSWebView sSWebView = this.eb;
        if (sSWebView == null) {
            return;
        }
        a aVarL = new a(this.f27823l, sSWebView).l(true);
        this.jl = aVarL;
        aVarL.hp(this);
        this.jl.hp(true);
        this.jl.hp(z2 ? "reward_endcard" : "fullscreen_endcard");
        com.byazt.jz.ud udVar = new com.byazt.jz.ud(this.hp);
        this.f27826s = udVar;
        udVar.l(this.eb).hp(this.f27823l).l(this.f27823l.j()).j(this.f27823l.w_()).jx(z2 ? 7 : 5).hp(this.cx).w(ky.sz(this.f27823l)).hp(this.eb).l(com.byazt.fy.s.hp(this.f27823l)).hp(this.jx).hp(map).hp(this.f27819b).hp(view).jx(this.hp.hp()).hp(this.yr);
        if (!n.jx(this.f27823l)) {
            this.f27826s.s(true);
        }
        this.f27826s.hp(this.rz);
        this.f27826s.hp(this.nd);
        pu();
        ky();
        lv();
    }

    @Override // com.byazt.xx.hp
    public void a() {
        SSWebView sSWebView = this.eb;
        if (sSWebView != null && sSWebView.getVisibility() == 0) {
            this.ky.jx().hp(true);
        }
        super.a();
        this.as.hp();
        s sVar = this.f27835r;
        if (sVar != null) {
            sVar.l(false);
        }
        hp(true, false);
    }

    @Override // com.byazt.xx.hp
    public void j(boolean z2) {
        super.j(z2);
        if (!z2) {
            this.as.l();
        }
        com.byazt.ct.jx jxVar = this.dy;
        if (jxVar != null) {
            jxVar.l();
        }
    }

    public void w(boolean z2) {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        try {
            this.f27826s.eb(z2);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isReward", z2);
            this.f27826s.l("isVerifyReward", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void hp(com.byazt.nc.hp hpVar) {
        this.kg = hpVar;
    }

    @Override // com.byazt.xx.hp
    public void hp(boolean z2, Map<String, Object> map, View view) {
        if (ky.b(this.f27823l) && this.nu != null) {
            hp(map, view);
        } else {
            l(z2, map, view);
        }
    }

    public void a(boolean z2) {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        this.pu = z2;
    }

    private void hp(final Map<String, Object> map, final View view) throws JSONException {
        com.byazt.jdb.eb ebVar = new com.byazt.jdb.eb(this.f27823l);
        this.lv = ebVar;
        ebVar.hp(true);
        this.lv.hp();
        this.nu.setVisibility(0);
        TTBaseVideoActivity tTBaseVideoActivity = this.hp;
        FrameLayout frameLayout = this.nu;
        com.byazt.jdb.eb ebVar2 = this.lv;
        mp mpVar = this.f27823l;
        String str = this.jx;
        com.byazt.ct.jx jxVar = new com.byazt.ct.jx(tTBaseVideoActivity, frameLayout, ebVar2, mpVar, str, ky.j(str), this.kg);
        this.dy = jxVar;
        jxVar.hp();
        this.dy.hp(new com.byazt.tk.hp() { // from class: com.byazt.xx.jx.6
            @Override // com.byazt.tk.hp
            public void hp(View view2) {
                jx.this.r();
            }

            @Override // com.byazt.tk.hp
            public void hp(int i2) {
                jx.this.dy = null;
                e.l().post(new Runnable() { // from class: com.byazt.xx.jx.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (jx.this.nu != null) {
                            jx.this.nu.setVisibility(8);
                        }
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        jx jxVar2 = jx.this;
                        jxVar2.f27828v = false;
                        jxVar2.l(jxVar2.f27821j, map, view);
                        jx jxVar3 = jx.this;
                        jxVar3.l(jxVar3.hd, jx.this.zx);
                        jx.this.hd = null;
                        jx.this.d();
                    }
                });
            }
        });
    }

    @Override // com.byazt.xx.hp
    public void hp(DownloadListener downloadListener, com.byazt.go.l lVar) {
        this.hd = downloadListener;
        this.zx = lVar;
        l(downloadListener, lVar);
    }

    private void hp(com.byazt.go.l lVar) {
        RewardLpBottomView rewardLpBottomView;
        if (!n.eb(this.f27823l) || (rewardLpBottomView = this.f27833ms) == null) {
            return;
        }
        rewardLpBottomView.setDownLoadClickListener(lVar);
    }

    @Override // com.byazt.xx.hp
    public void hp(int i2) {
        super.hp(i2);
        as();
    }

    public void hp(l.InterfaceC0370l interfaceC0370l) {
        this.ky = interfaceC0370l;
    }

    @Override // com.byazt.jdb.a.l
    public void hp(String str) throws JSONException {
        if (TextUtils.isEmpty(this.f27836y)) {
            this.f27836y = str;
        }
        if (TextUtils.equals(this.f27836y, str)) {
            return;
        }
        this.f27836y = str;
        this.hp.e(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(DownloadListener downloadListener, com.byazt.go.l lVar) {
        if (this.eb == null) {
            return;
        }
        this.zx = null;
        com.byazt.cf.j jVar = new com.byazt.cf.j(this.hp, this.f27826s, this.f27823l.j(), this.jl) { // from class: com.byazt.xx.jx.8

            /* renamed from: q, reason: collision with root package name */
            public final long f27838q = System.currentTimeMillis();

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (jx.this.f27835r != null && str != null && !str.contains(d.f7446a)) {
                    jx.this.f27835r.eb(str);
                }
                super.onPageFinished(webView, str);
                jx.this.mp.hp(webView, str);
                if (jx.this.f27833ms != null) {
                    jx.this.f27833ms.hp();
                }
                if (webView == null || !ec.hp(jx.this.f27823l)) {
                    return;
                }
                webView.evaluateJavascript(BaseLandingPageActivity.hp(this.f27838q), null);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                jx.this.f27831d.set(true);
                jx.this.mp.hp(webView, str, bitmap);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i2, String str, String str2) {
                jx.this.xs.set(false);
                jx.this.vv = this.f18835s;
                jx jxVar = jx.this;
                jxVar.zy = i2;
                jxVar.f27822k = str;
                if (jxVar.f27835r != null) {
                    jx.this.f27835r.hp(i2, str, str2);
                }
                super.onReceivedError(webView, i2, str, str2);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (jx.this.f27835r != null) {
                    try {
                        jx.this.f27835r.hp(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    } catch (Throwable unused) {
                    }
                }
                if (jx.this.f27820e.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        jx.this.xs.set(false);
                        jx.this.vv = this.f18835s;
                    }
                    if (webResourceResponse != null) {
                        jx.this.zy = webResourceResponse.getStatusCode();
                        jx.this.f27822k = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                return super.shouldInterceptRequest(webView, str);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            @TargetApi(21)
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String string = webResourceRequest.getUrl().toString();
                    mp mpVar = jx.this.f27823l;
                    if (mpVar == null) {
                        return super.shouldInterceptRequest(webView, string);
                    }
                    if (TextUtils.isEmpty(mpVar.jx())) {
                        return super.shouldInterceptRequest(webView, string);
                    }
                    jx.this.f27829w++;
                    return super.shouldInterceptRequest(webView, string);
                } catch (Throwable th) {
                    u.hp("PlayableEndCard", "shouldInterceptRequest error1", th);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceRequest.isForMainFrame()) {
                    jx.this.xs.set(false);
                    jx.this.vv = this.f18835s;
                }
                jx.this.zy = webResourceError.getErrorCode();
                jx.this.f27822k = String.valueOf(webResourceError.getDescription());
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        };
        this.gu = jVar;
        this.eb.setWebViewClient(jVar);
        this.eb.setWebChromeClient(new com.byazt.cf.jx(this.f27826s, this.jl));
        hp(this.eb);
        this.eb.setBackgroundColor(-16777216);
        this.eb.setDisplayZoomControls(false);
        this.eb.setDownloadListener(downloadListener);
        hp(lVar);
    }

    public void hp(l.hp hpVar) {
        this.f27832m = hpVar;
    }

    @Override // com.byazt.xx.hp
    public void hp(Map<String, Object> map) {
        com.byazt.jdb.e eVar = this.f27825q;
        if (eVar != null) {
            eVar.e();
        }
        if (map == null || !n.jx(this.f27823l)) {
            return;
        }
        map.put("duration", Long.valueOf(hq()));
    }

    public void l(int i2, int i3) {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("skip_remain_time", i2);
            if (this.f27821j) {
                jSONObject.put("reward_remain_time", i3);
            }
            this.f27826s.l("reward_button_status", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.xx.hp
    public void l(boolean z2) {
        s sVar = this.f27835r;
        if (sVar != null) {
            sVar.hp(z2);
        }
        this.as.hp(z2);
    }

    private Message l(int i2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 102;
        messageObtain.arg1 = i2;
        return messageObtain;
    }
}

package com.byazt.xx;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.Patterns;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.webkit.DownloadListener;
import android.webkit.URLUtil;
import com.anythink.core.common.res.d;
import com.byazt.cey.eb;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jdb.a;
import com.byazt.jdb.e;
import com.byazt.jz.r;
import com.byazt.jz.sz;
import com.byazt.jz.ud;
import com.byazt.vsq.s;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST, 28})
/* loaded from: classes3.dex */
public abstract class hp {

    /* renamed from: e, reason: collision with root package name */
    public String f27820e;
    public SSWebView eb;
    public int ec;
    public com.byazt.cf.j gu;
    public TTBaseVideoActivity hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f27821j;
    public a jl;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public mp f27823l;

    /* renamed from: n, reason: collision with root package name */
    public int f27824n;

    /* renamed from: q, reason: collision with root package name */
    public e f27825q;

    /* renamed from: s, reason: collision with root package name */
    public ud f27826s;
    public int sz;
    public AtomicInteger vv;

    /* renamed from: w, reason: collision with root package name */
    public int f27829w = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f27818a = 0;
    public int zy = 0;

    /* renamed from: k, reason: collision with root package name */
    public String f27822k = "";

    /* renamed from: v, reason: collision with root package name */
    public boolean f27828v = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f27827u = false;
    public final AtomicBoolean xs = new AtomicBoolean(true);
    public AtomicBoolean ns = new AtomicBoolean(false);
    public com.byazt.cey.hp cx = new com.byazt.cey.hp() { // from class: com.byazt.xx.hp.1
        @Override // com.byazt.cey.hp
        public int hp() {
            SSWebView sSWebView = hp.this.eb;
            int measuredHeight = sSWebView != null ? sSWebView.getMeasuredHeight() : -1;
            return measuredHeight <= 0 ? xh.w((Context) hp.this.hp) : measuredHeight;
        }

        @Override // com.byazt.cey.hp
        public int l() {
            SSWebView sSWebView = hp.this.eb;
            int measuredWidth = sSWebView != null ? sSWebView.getMeasuredWidth() : -1;
            return measuredWidth <= 0 ? xh.j((Context) hp.this.hp) : measuredWidth;
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public eb f27819b = new eb() { // from class: com.byazt.xx.hp.2
        @Override // com.byazt.cey.eb
        public void hp() {
            SSWebView sSWebView = hp.this.eb;
            if (sSWebView == null) {
                return;
            }
            sSWebView.onPause();
        }

        @Override // com.byazt.cey.eb
        public void l() {
            SSWebView sSWebView = hp.this.eb;
            if (sSWebView == null) {
                return;
            }
            sSWebView.pauseTimers();
        }
    };

    public hp(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, String str, int i2, int i3, boolean z2) {
        this.hp = tTBaseVideoActivity;
        this.f27823l = mpVar;
        this.jx = str;
        this.ec = mpVar.wf();
        if (sz.l().xq()) {
            float f2 = this.hp.getResources().getDisplayMetrics().density;
            float f3 = Resources.getSystem().getDisplayMetrics().density;
            this.sz = xh.l(f3, xh.hp(f2, i2));
            this.f27824n = xh.l(f3, xh.hp(f2, i3));
        } else {
            this.sz = i2;
            this.f27824n = i3;
        }
        this.f27821j = z2;
    }

    private void d() {
        if (this.ns.getAndSet(true)) {
            return;
        }
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.eb, "translationY", xh.w((Context) this.hp), 0.0f);
            objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            objectAnimatorOfFloat.setDuration(1000L);
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.xx.hp.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    hp.this.ns.set(false);
                }
            });
            objectAnimatorOfFloat.start();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2, int i3) throws JSONException {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", i2);
            jSONObject.put("height", i3);
            this.f27826s.l("resize", jSONObject);
        } catch (Exception unused) {
        }
    }

    private void wv() {
        if (this.ns.getAndSet(true)) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.eb, "translationY", 0.0f, xh.w((Context) this.hp));
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.xx.hp.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                xh.hp((View) hp.this.eb, 8);
                hp.this.ns.set(false);
            }
        });
        objectAnimatorOfFloat.start();
    }

    public void a() {
        if (this.hp.y() instanceof s) {
            wv();
        } else {
            xh.hp((View) this.eb, 8);
        }
    }

    public abstract String b();

    public void cx() {
        SSWebView sSWebView = this.eb;
        if (sSWebView != null) {
            sSWebView.loadUrl(d.f7446a);
        }
    }

    public void di() {
    }

    public int e() {
        return this.zy;
    }

    public boolean eb() {
        SSWebView sSWebView = this.eb;
        if (sSWebView != null) {
            return sSWebView.canGoBack();
        }
        return false;
    }

    public void ec() {
        e eVar = this.f27825q;
        if (eVar != null) {
            eVar.jl();
        }
    }

    public String gu() {
        return this.f27822k;
    }

    public abstract void hp(DownloadListener downloadListener, com.byazt.go.l lVar);

    public abstract void hp(boolean z2, Map<String, Object> map, View view);

    public void j(boolean z2) {
    }

    public void jl() throws JSONException {
        SSWebView sSWebView = this.eb;
        if (sSWebView != null) {
            sSWebView.onResume();
        }
        ud udVar = this.f27826s;
        if (udVar != null) {
            udVar.hq();
            SSWebView sSWebView2 = this.eb;
            if (sSWebView2 != null) {
                if (sSWebView2.getVisibility() == 0) {
                    this.f27826s.a(true);
                    hp(true);
                    hp(false, true);
                } else {
                    this.f27826s.a(false);
                    hp(false);
                    hp(true, false);
                }
            }
        }
        a aVar = this.jl;
        if (aVar != null) {
            aVar.j();
        }
        com.byazt.cf.j jVar = this.gu;
        if (jVar != null) {
            jVar.l(false);
        }
    }

    public void jx(boolean z2) {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        try {
            this.f27826s.a(z2);
        } catch (Exception unused) {
        }
    }

    public void k() {
        a aVar = this.jl;
        if (aVar != null) {
            aVar.w();
        }
    }

    public boolean n() {
        ud udVar = this.f27826s;
        if (udVar == null) {
            return false;
        }
        return udVar.cx();
    }

    public boolean ns() {
        return hp(this.f27820e);
    }

    public void o() {
        ud udVar = this.f27826s;
        if (udVar == null) {
            return;
        }
        udVar.hp(new SSWebView.l() { // from class: com.byazt.xx.hp.6
            @Override // com.byazt.ykc.SSWebView.l
            public void hp(int i2) throws JSONException {
                ud udVar2 = hp.this.f27826s;
                if (udVar2 != null) {
                    udVar2.hp(i2);
                }
            }
        });
    }

    public void q() {
        this.f27825q = null;
    }

    public void s() {
        SSWebView sSWebView = this.eb;
        if (sSWebView == null || !sSWebView.canGoBack()) {
            return;
        }
        this.eb.goBack();
    }

    public void sz() {
        e eVar = this.f27825q;
        if (eVar != null) {
            eVar.jx();
            this.f27825q.j();
        }
    }

    public void u() {
        SSWebView sSWebView = this.eb;
        if (sSWebView != null) {
            sSWebView.onResume();
            this.eb.resumeTimers();
            xh.hp((View) this.eb, 1.0f);
            o();
        }
    }

    public void v() {
        ud udVar = this.f27826s;
        if (udVar != null) {
            udVar.nu();
        }
        e eVar = this.f27825q;
        if (eVar != null) {
            eVar.hp(true);
            this.f27825q.u();
        }
        a aVar = this.jl;
        if (aVar != null) {
            aVar.a();
        }
        SSWebView sSWebView = this.eb;
        if (sSWebView != null) {
            r.hp(this.hp, sSWebView);
            r.hp(this.eb);
            this.eb.destroy();
        }
        this.eb = null;
    }

    public void vv() {
        e eVar = this.f27825q;
        if (eVar != null) {
            eVar.gu();
        }
    }

    public void w() {
        a aVar = this.jl;
        if (aVar != null) {
            aVar.hp(System.currentTimeMillis());
        }
    }

    public void xs() {
        e eVar = this.f27825q;
        if (eVar != null) {
            eVar.q();
        }
    }

    public void zy() throws JSONException {
        SSWebView sSWebView = this.eb;
        if (sSWebView != null) {
            sSWebView.onPause();
        }
        ud udVar = this.f27826s;
        if (udVar != null) {
            udVar.ud();
            this.f27826s.a(false);
            hp(false);
            hp(true, false);
        }
        com.byazt.cf.j jVar = this.gu;
        if (jVar != null) {
            jVar.jx();
        }
    }

    public void hp() {
        SSWebView sSWebView = this.eb;
        if (sSWebView != null) {
            sSWebView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.xx.hp.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() throws JSONException {
                    SSWebView sSWebView2 = hp.this.eb;
                    if (sSWebView2 == null || sSWebView2.getViewTreeObserver() == null) {
                        return;
                    }
                    hp.this.eb.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int measuredWidth = hp.this.eb.getMeasuredWidth();
                    int measuredHeight = hp.this.eb.getMeasuredHeight();
                    if (hp.this.eb.getVisibility() == 0) {
                        hp.this.l(measuredWidth, measuredHeight);
                    }
                }
            });
        }
    }

    public boolean j() {
        return this.f27828v;
    }

    public boolean jx() {
        if (!ns()) {
            return false;
        }
        AtomicInteger atomicInteger = this.vv;
        if (atomicInteger == null || atomicInteger.get() == 0) {
            return this.xs.get();
        }
        return true;
    }

    public void hp(boolean z2) throws JSONException {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z2 ? 1 : 0);
            this.f27826s.l("viewableChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void l(boolean z2) {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z2);
            this.f27826s.l("volumeChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void hp(boolean z2, boolean z3) throws JSONException {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z2);
            jSONObject.put("endcard_show", z3);
            this.f27826s.l("endcard_control_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    public boolean l() {
        return this.f27827u;
    }

    public void hp(int i2, int i3) throws JSONException {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("downloadStatus", i2);
            jSONObject.put("downloadProcessRate", i3);
            this.f27826s.jx("showDownloadStatus", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void hp(long j2, long j3, int i2) throws JSONException {
        if (j3 > 0) {
            hp(i2, (int) ((j2 * 100) / j3));
        }
    }

    public void hp(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.byazt.cf.l.hp(this.hp).hp(false).l(false).hp(sSWebView);
        com.byazt.zn.sz.hp(sSWebView, com.byazt.jz.d.f21856j, mp.w(this.f27823l));
        xh.hp((com.byazt.ikh.j) sSWebView);
        sSWebView.setMixedContentMode(0);
        com.byazt.ikh.hp.hp(this.f27823l.n(), this.eb.getInnerIWebView());
    }

    public void hp(int i2) {
        xh.hp((View) this.eb, 0);
        if (i2 == 1) {
            xh.hp((View) this.eb, 0.0f);
        }
        if (i2 == 2) {
            d();
        }
        ud udVar = this.f27826s;
        if (udVar != null) {
            udVar.hp(this.hp.ec());
            this.f27826s.hp(ky.sz(this.f27823l), false);
        }
    }

    public void hp(Map<String, Object> map) {
        e eVar = this.f27825q;
        if (eVar != null) {
            eVar.e();
        }
    }

    public void hp(boolean z2, int i2, String str) {
        e eVar = this.f27825q;
        if (eVar == null) {
            return;
        }
        if (z2) {
            eVar.l();
        } else {
            eVar.hp(i2, str);
        }
    }

    private boolean hp(String str) {
        try {
            new URL(str);
            if (URLUtil.isValidUrl(str)) {
                if (Patterns.WEB_URL.matcher(str).matches()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        ud udVar = this.f27826s;
        if (udVar == null) {
            u.l("BaseEndCard", "mJsObject is null!");
        } else {
            udVar.l("showPlayAgainEntrance", jSONObject);
        }
    }

    public void hp(mp mpVar) {
        this.f27823l = mpVar;
        this.f27828v = false;
    }
}

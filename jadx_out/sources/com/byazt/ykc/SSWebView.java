package com.byazt.ykc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsListView;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import com.byazt.ikh.j;
import com.byazt.vz.BizWebView;
import com.byazt.ymw.di;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 834, 2471})
/* loaded from: classes3.dex */
public class SSWebView extends BizWebView {

    /* renamed from: a, reason: collision with root package name */
    public String f28028a;

    /* renamed from: b, reason: collision with root package name */
    public AtomicBoolean f28029b;
    public AtomicBoolean cx;

    /* renamed from: d, reason: collision with root package name */
    public JSONObject f28030d;
    public AtomicInteger di;

    /* renamed from: e, reason: collision with root package name */
    public float f28031e;
    public JSONObject eb;
    public int ec;
    public long gu;
    public jx hq;
    public long jl;

    /* renamed from: k, reason: collision with root package name */
    public boolean f28032k;

    /* renamed from: n, reason: collision with root package name */
    public di f28033n;
    public AtomicBoolean ns;

    /* renamed from: o, reason: collision with root package name */
    public JSONObject f28034o;

    /* renamed from: q, reason: collision with root package name */
    public float f28035q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f28036s;
    public l sz;

    /* renamed from: u, reason: collision with root package name */
    public float f28037u;

    /* renamed from: v, reason: collision with root package name */
    public float f28038v;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.an.hp f28039w;
    public JSONObject wv;
    public float xs;
    public long zy;

    @com.byazt.kj.hp(hp = {0, 1, 834, 1385})
    public static class hp extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            if (webView == null) {
                return true;
            }
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.destroy();
            return true;
        }
    }

    public interface jx {
        void hp(MotionEvent motionEvent);

        void hp(boolean z2);
    }

    public interface l {
        void hp(int i2);
    }

    public SSWebView(Context context) {
        super(context);
        this.f28035q = 0.0f;
        this.f28031e = 0.0f;
        this.gu = 0L;
        this.jl = 0L;
        this.zy = 0L;
        this.f28032k = false;
        this.f28038v = 20.0f;
        this.xs = 50.0f;
        this.ns = new AtomicBoolean();
        this.cx = new AtomicBoolean();
        this.f28029b = new AtomicBoolean(true);
        this.di = new AtomicInteger();
    }

    private void a() {
        this.f28033n = null;
        this.sz = null;
        setTouchStateListener(null);
        O_();
        this.f28039w = null;
        this.eb = null;
        this.f28036s = false;
    }

    private boolean jx(View view) {
        try {
            Class<?> clsLoadClass = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            if (clsLoadClass != null) {
                if (clsLoadClass.isInstance(view)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            Class<?> clsLoadClass2 = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            if (clsLoadClass2 != null) {
                return clsLoadClass2.isInstance(view);
            }
            return false;
        } catch (Throwable unused2) {
            return false;
        }
    }

    private static boolean l(View view) {
        try {
            Class<?> clsLoadClass = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            if (clsLoadClass != null) {
                if (clsLoadClass.isInstance(view)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            Class<?> clsLoadClass2 = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            if (clsLoadClass2 != null) {
                return clsLoadClass2.isInstance(view);
            }
            return false;
        } catch (Throwable unused2) {
            return false;
        }
    }

    @Override // com.byazt.vz.BizWebView, com.byazt.vz.MultiWebview
    public void M_() {
        a();
        super.M_();
    }

    public boolean N_() {
        di diVar = this.f28033n;
        if (diVar == null) {
            return false;
        }
        return diVar.hp();
    }

    public void O_() {
        this.cx.set(false);
        di diVar = this.f28033n;
        if (diVar != null) {
            com.byazt.an.hp hpVar = this.f28039w;
            diVar.j(hpVar != null ? hpVar.hp() : 0);
        }
    }

    @Override // com.byazt.vz.BizWebView, com.byazt.vz.MultiWebview, com.byazt.ikh.j
    public void destroy() {
        super.destroy();
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        jx jxVar = this.hq;
        if (jxVar != null) {
            jxVar.hp(true);
            this.hq.hp(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public j getInnerIWebView() {
        return this.f26783l;
    }

    public com.byazt.an.hp getMaterialMeta() {
        return this.f28039w;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewParent hp(View view) {
        ViewParent parent = view.getParent();
        if ((parent instanceof AbsListView) || (parent instanceof ScrollView) || (parent instanceof HorizontalScrollView) || !(parent instanceof View)) {
            return parent;
        }
        View view2 = (View) parent;
        return (l(view2) || jx(view2)) ? parent : hp(view2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.ns.set(true);
        if (this.cx.get()) {
            l(this.di.get(), this.f28029b.get());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.ns.set(false);
        di diVar = this.f28033n;
        if (diVar != null) {
            com.byazt.an.hp hpVar = this.f28039w;
            diVar.l(hpVar != null ? hpVar.hp() : 0);
        }
    }

    @Override // android.view.ViewGroup
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewParent viewParentHp;
        try {
            hp(motionEvent);
            boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
            if ((motionEvent.getActionMasked() == 2 || motionEvent.getActionMasked() == 0) && this.f28032k && (viewParentHp = hp((View) this)) != null) {
                viewParentHp.requestDisallowInterceptTouchEvent(true);
            }
            return zOnInterceptTouchEvent;
        } catch (Throwable unused) {
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    @Override // com.byazt.vz.BizWebView, com.byazt.ikh.j
    public void onPause() {
        super.onPause();
        jx jxVar = this.hq;
        if (jxVar != null) {
            jxVar.hp(false);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        di diVar = this.f28033n;
        if (diVar != null) {
            if (z2) {
                com.byazt.an.hp hpVar = this.f28039w;
                diVar.hp(hpVar != null ? hpVar.hp() : 0);
            } else {
                com.byazt.an.hp hpVar2 = this.f28039w;
                diVar.l(hpVar2 != null ? hpVar2.hp() : 0);
            }
        }
    }

    public void setCalculationMethod(int i2) {
        this.vv = i2;
    }

    public void setCalculationTwistMethod(int i2) {
        this.ec = i2;
    }

    public void setDeepShakeValue(float f2) {
        this.f28037u = f2;
    }

    public void setIsPreventTouchEvent(boolean z2) {
        this.f28032k = z2;
    }

    public void setLandingPage(boolean z2) {
        this.f28036s = z2;
    }

    public void setMaterialMeta(com.byazt.an.hp hpVar) {
        this.f28039w = hpVar;
    }

    public void setOnShakeListener(l lVar) {
        this.sz = lVar;
    }

    public void setShakeInteractConf(JSONObject jSONObject) {
        this.f28030d = jSONObject;
    }

    public void setShakeValue(float f2) {
        this.f28038v = f2;
    }

    public void setTag(String str) {
        this.f28028a = str;
    }

    public void setTouchStateListener(jx jxVar) {
        this.hq = jxVar;
    }

    public void setTwistConfig(JSONObject jSONObject) {
        this.f28034o = jSONObject;
    }

    public void setTwistInteractConf(JSONObject jSONObject) {
        this.wv = jSONObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.vz.BizWebView, com.byazt.ikh.j
    public void setWebViewClient(WebViewClient webViewClient) {
        if (webViewClient instanceof jx) {
            setTouchStateListener((jx) webViewClient);
        } else {
            setTouchStateListener(null);
        }
        if (webViewClient == 0) {
            webViewClient = new hp();
        }
        super.setWebViewClient(webViewClient);
    }

    public void setWriggleValue(float f2) {
        this.xs = f2;
    }

    @Override // android.view.View
    public String getTag() {
        return this.f28028a;
    }

    private void l(int i2, boolean z2) {
        di diVar = this.f28033n;
        if (diVar == null) {
            this.f28033n = new di(getContext(), i2, z2);
        } else {
            diVar.hp(z2);
        }
        this.f28033n.hp(this.f28038v);
        this.f28033n.jx(this.f28037u);
        this.f28033n.l(this.xs);
        this.f28033n.hp(this.f28034o);
        this.f28033n.jx(this.f28030d);
        this.f28033n.l(this.wv);
        this.f28033n.w(this.vv);
        this.f28033n.a(this.ec);
        this.f28033n.hp(new di.hp() { // from class: com.byazt.ykc.SSWebView.1
            @Override // com.byazt.ymw.di.hp
            public void hp(int i3) {
                if (i3 == 1) {
                    SSWebView.this.hp(1);
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    SSWebView.this.hp(2);
                }
            }
        });
        di diVar2 = this.f28033n;
        com.byazt.an.hp hpVar = this.f28039w;
        diVar2.jx(hpVar != null ? hpVar.hp() : 0);
    }

    public void hp(int i2, boolean z2) {
        this.f28029b.set(z2);
        this.di.set(i2);
        this.cx.set(true);
        if (this.ns.get()) {
            l(i2, z2);
        }
    }

    public void hp(int i2) {
        l lVar = this.sz;
        if (lVar != null) {
            lVar.hp(i2);
        }
    }

    private void hp(MotionEvent motionEvent) {
        if (!this.f28036s || this.f28039w == null) {
            return;
        }
        if ((this.f28028a == null && this.eb == null) || motionEvent == null) {
            return;
        }
        try {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f28035q = motionEvent.getRawX();
                this.f28031e = motionEvent.getRawY();
                this.gu = System.currentTimeMillis();
                this.eb = new JSONObject();
                if (this.f26783l != null) {
                    this.f26783l.setTag(2064056319, Long.valueOf(this.gu));
                    return;
                }
                return;
            }
            if (action == 1 || action == 3) {
                this.eb.put("start_x", String.valueOf(this.f28035q));
                this.eb.put("start_y", String.valueOf(this.f28031e));
                this.eb.put("offset_x", String.valueOf(motionEvent.getRawX() - this.f28035q));
                this.eb.put("offset_y", String.valueOf(motionEvent.getRawY() - this.f28031e));
                this.eb.put("url", String.valueOf(getUrl()));
                this.eb.put("tag", "");
                this.jl = System.currentTimeMillis();
                if (this.f26783l != null) {
                    this.f26783l.setTag(2064056318, Long.valueOf(this.jl));
                }
                this.eb.put("down_time", this.gu);
                this.eb.put("up_time", this.jl);
                if (com.byazt.iq.hp.hp().l() != null) {
                    long j2 = this.zy;
                    long j3 = this.gu;
                    if (j2 != j3) {
                        this.zy = j3;
                        com.byazt.iq.hp.hp();
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}

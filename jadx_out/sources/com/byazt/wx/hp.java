package com.byazt.wx;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.ek.ThemeStatusBroadcastReceiver;
import com.byazt.fub.eb;
import com.byazt.fub.gu;
import com.byazt.fub.s;
import com.byazt.fub.zy;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.k;
import com.bytedance.component.sdk.annotation.UiThread;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1484, 28})
/* loaded from: classes3.dex */
public abstract class hp implements com.byazt.wkx.hp, gu, com.byazt.fub.j<SSWebView>, com.byazt.ek.hp {

    /* renamed from: a, reason: collision with root package name */
    public Context f27143a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f27144e;
    public String eb;
    public s gu;
    public JSONObject hp;
    public zy jl;
    public SSWebView jx;

    /* renamed from: k, reason: collision with root package name */
    public int f27146k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f27147l;

    /* renamed from: q, reason: collision with root package name */
    public volatile eb f27148q;

    /* renamed from: s, reason: collision with root package name */
    public String f27149s;
    public boolean zy;

    /* renamed from: j, reason: collision with root package name */
    public int f27145j = 8;

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f27151w = new AtomicBoolean(false);

    /* renamed from: v, reason: collision with root package name */
    public boolean f27150v = false;

    public hp(Context context, zy zyVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        this.f27144e = false;
        this.f27143a = context;
        this.jl = zyVar;
        this.eb = zyVar.a();
        themeStatusBroadcastReceiver.hp(this);
        if (com.byazt.wkx.j.hp()) {
            jl();
            return;
        }
        SSWebView sSWebViewZy = zy();
        this.jx = sSWebViewZy;
        if (sSWebViewZy != null) {
            this.f27144e = true;
        } else if (com.byazt.wkx.j.getContext() != null) {
            this.jx = new SSWebView(com.byazt.wkx.j.getContext());
        }
    }

    private void jl() {
        if (this.f27143a == null && com.byazt.wkx.j.getContext() != null) {
            this.f27143a = com.byazt.wkx.j.getContext();
        }
        if (this.f27143a != null) {
            SSWebView sSWebViewZy = zy();
            this.jx = sSWebViewZy;
            if (sSWebViewZy == null) {
                this.jx = new SSWebView(new MutableContextWrapper(this.f27143a.getApplicationContext()));
            } else {
                this.f27144e = true;
            }
        }
    }

    private void k() {
        if (this.jl.di()) {
            w.hp().l(this.jx);
        } else {
            w.hp().jx(this.jx);
        }
    }

    private SSWebView zy() {
        return this.jl.di() ? w.hp().hp(this.f27143a, this.eb) : w.hp().l(this.f27143a, this.eb);
    }

    public abstract void a();

    public void e() {
    }

    public zy gu() {
        return this.jl;
    }

    public void hp(boolean z2, int i2) {
    }

    public void j() {
        if (this.f27151w.get()) {
            return;
        }
        this.f27151w.set(true);
        a();
        if (this.jx.getParent() != null) {
            ((ViewGroup) this.jx.getParent()).removeView(this.jx);
        }
        if (this.f27147l) {
            k();
        } else {
            w.hp().w(this.jx);
        }
    }

    public int jx() {
        return 0;
    }

    @Override // com.byazt.fub.j
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public SSWebView eb() {
        return hp();
    }

    public abstract void l(int i2);

    public void q() {
    }

    public void s() {
        q();
        Activity activityHp = com.byazt.ymw.l.hp(this.jx);
        if (activityHp != null) {
            this.f27146k = l(activityHp);
        }
    }

    public void w() {
        if (hp() == null) {
            return;
        }
        try {
            hp().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }

    public void hp(String str) {
        this.f27149s = str;
    }

    @Override // com.byazt.fub.gu
    public void l(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
        s sVar = this.gu;
        if (sVar != null) {
            sVar.l(view, i2, jxVar, i3);
        }
    }

    public SSWebView hp() {
        return this.jx;
    }

    private int l(Activity activity) {
        return activity.hashCode();
    }

    public void hp(s sVar) {
        this.gu = sVar;
    }

    @Override // com.byazt.fub.j
    public void hp(eb ebVar) {
        this.f27148q = ebVar;
        if (hp() != null && hp().getWebView() != null) {
            if (TextUtils.isEmpty(this.f27149s)) {
                this.f27148q.hp(102, "url is empty");
                return;
            }
            if (!this.jl.di()) {
                if (!this.f27150v && !com.byazt.ir.l.hp(this.hp)) {
                    eb ebVar2 = this.f27148q;
                    StringBuilder sb = new StringBuilder("data null is ");
                    sb.append(this.hp == null);
                    ebVar2.hp(103, sb.toString());
                    return;
                }
                if (this.f27150v && !com.byazt.ir.l.jx(this.hp)) {
                    eb ebVar3 = this.f27148q;
                    StringBuilder sb2 = new StringBuilder("choice ad data null is ");
                    sb2.append(this.hp == null);
                    ebVar3.hp(103, sb2.toString());
                    return;
                }
            } else if (jx() == 9 && !com.byazt.ir.l.l(this.hp)) {
                eb ebVar4 = this.f27148q;
                StringBuilder sb3 = new StringBuilder("data null is ");
                sb3.append(this.hp == null);
                ebVar4.hp(103, sb3.toString());
                return;
            }
            this.jl.eb().l(this.f27144e);
            if (this.f27144e) {
                try {
                    this.jx.clearView();
                    this.jl.eb().eb();
                    k.hp(this.jx.getWebView(), "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();");
                    return;
                } catch (Exception e2) {
                    w.hp().w(this.jx);
                    this.f27148q.hp(102, "load exception is " + e2.getMessage());
                    return;
                }
            }
            SSWebView sSWebViewHp = hp();
            sSWebViewHp.clearView();
            this.jl.eb().eb();
            sSWebViewHp.loadUrl(this.f27149s);
            return;
        }
        eb ebVar5 = this.f27148q;
        StringBuilder sb4 = new StringBuilder("SSWebview null is ");
        sb4.append(hp() == null);
        sb4.append(" or Webview is null");
        ebVar5.hp(102, sb4.toString());
    }

    public void hp(boolean z2) {
        this.zy = z2;
    }

    @Override // com.byazt.fub.gu
    public void hp(final com.byazt.fub.k kVar) {
        if (kVar == null) {
            if (this.f27148q != null) {
                this.f27148q.hp(105, "renderResult is null");
                return;
            }
            return;
        }
        boolean zJx = kVar.jx();
        final float fJ = (float) kVar.j();
        final float fW = (float) kVar.w();
        if (jx() == 0 && (fJ <= 0.0f || fW <= 0.0f)) {
            if (this.f27148q != null) {
                this.f27148q.hp(105, "width is " + fJ + "height is " + fW);
                return;
            }
            return;
        }
        this.f27147l = zJx;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            hp(kVar, fJ, fW);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.wx.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.hp(kVar, fJ, fW);
                }
            });
        }
    }

    public void hp(com.byazt.fub.k kVar, float f2, float f3) {
        hp(this.f27147l, kVar.gu());
        boolean z2 = this.f27147l;
        if (z2 && !this.zy) {
            hp(f2, f3);
            l(this.f27145j);
            if (this.f27148q != null) {
                this.f27148q.hp(hp(), kVar);
                return;
            }
            return;
        }
        if (!z2) {
            w.hp().w(this.jx);
        }
        hp(kVar.gu(), kVar.e());
    }

    @Override // com.byazt.fub.gu
    public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
        s sVar = this.gu;
        if (sVar != null) {
            sVar.hp(view, i2, jxVar, i3);
        }
    }

    @UiThread
    public void hp(float f2, float f3) {
        this.jl.eb().s();
        if (com.byazt.wkx.j.hp() && jx() == 9) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) hp().getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            layoutParams.width = -1;
            layoutParams.height = -1;
            hp().setLayoutParams(layoutParams);
            return;
        }
        int iHp = (int) com.byazt.sq.s.hp(this.f27143a, f2);
        int iHp2 = (int) com.byazt.sq.s.hp(this.f27143a, f3);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) hp().getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(iHp, iHp2);
        }
        layoutParams2.width = iHp;
        layoutParams2.height = iHp2;
        hp().setLayoutParams(layoutParams2);
    }

    private void hp(int i2, String str) {
        if (this.f27148q != null) {
            this.f27148q.hp(i2, str);
        }
    }

    @Override // com.byazt.wkx.hp
    public void hp(Activity activity) {
        if (this.f27146k == 0 || activity == null || activity.hashCode() != this.f27146k) {
            return;
        }
        j();
        e();
    }
}

package com.anythink.core.common.inner.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Window;
import android.view.WindowManager;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.BaseAd;
import com.anythink.core.basead.a;
import com.anythink.core.common.a.n;
import com.anythink.core.common.b;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.bh;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.e.b;
import com.anythink.core.common.inner.e.d;
import com.anythink.core.common.inner.e.e;
import com.anythink.core.common.inner.mixad.c.a.a;
import com.anythink.core.common.l.e.a.a;
import com.anythink.core.common.u.c;
import com.anythink.core.common.v.p;
import com.bykv.vk.component.ttvideo.player.C;
import com.umeng.analytics.pro.l;

/* loaded from: classes2.dex */
public class BaseATActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4797a = "BaseATActivity";

    /* renamed from: b, reason: collision with root package name */
    boolean f4798b;

    /* renamed from: c, reason: collision with root package name */
    bh f4799c;

    /* renamed from: j, reason: collision with root package name */
    d f4806j;

    /* renamed from: l, reason: collision with root package name */
    private BaseScreenATView f4808l;

    /* renamed from: m, reason: collision with root package name */
    private x f4809m;

    /* renamed from: n, reason: collision with root package name */
    private w f4810n;

    /* renamed from: o, reason: collision with root package name */
    private String f4811o;

    /* renamed from: p, reason: collision with root package name */
    private b.AbstractC0055b f4812p;

    /* renamed from: q, reason: collision with root package name */
    private String f4813q;

    /* renamed from: r, reason: collision with root package name */
    private int f4814r;

    /* renamed from: s, reason: collision with root package name */
    private int f4815s;

    /* renamed from: t, reason: collision with root package name */
    private boolean f4816t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f4817u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f4818v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f4819w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f4820x;

    /* renamed from: d, reason: collision with root package name */
    long f4800d = 0;

    /* renamed from: e, reason: collision with root package name */
    long f4801e = 0;

    /* renamed from: f, reason: collision with root package name */
    float f4802f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    boolean f4803g = false;

    /* renamed from: h, reason: collision with root package name */
    boolean f4804h = false;

    /* renamed from: i, reason: collision with root package name */
    b.a f4805i = new b.a() { // from class: com.anythink.core.common.inner.ui.BaseATActivity.1
        @Override // com.anythink.core.common.b.a
        public final void a(Object obj) {
            if (!(obj instanceof bh) || BaseATActivity.this.f4810n == null) {
                return;
            }
            bh bhVar = (bh) obj;
            if (bhVar.b().t().equals(BaseATActivity.this.f4810n.t())) {
                BaseATActivity baseATActivity = BaseATActivity.this;
                if (baseATActivity.f4798b) {
                    return;
                }
                baseATActivity.f4799c = bhVar;
            }
        }
    };

    /* renamed from: k, reason: collision with root package name */
    boolean f4807k = false;

    private void d() {
        try {
            if (!this.f4807k) {
                w wVar = this.f4810n;
                if (wVar == null || wVar.g() == null || this.f4810n.g().ad() != 1) {
                    return;
                }
            } else if (!ATSDKGlobalSetting.isHideNavAndStatusBar) {
                return;
            }
            Window window = getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.systemUiVisibility = l.f49442b;
            window.setAttributes(attributes);
            window.addFlags(1024);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        BaseScreenATView baseScreenATView = this.f4808l;
        if (baseScreenATView != null) {
            baseScreenATView.onActivityResult(i2, i3, intent);
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (s.b().g() == null) {
            s.b().a(getApplicationContext());
        }
        a(bundle);
        d();
        try {
            a.InterfaceC0064a interfaceC0064aB = com.anythink.core.common.inner.mixad.a.a().b(this.f4811o);
            if (interfaceC0064aB != null) {
                interfaceC0064aB.a(this);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.f4799c = null;
        this.f4806j = null;
        com.anythink.core.common.b.a().b("1", this.f4805i);
        BaseScreenATView baseScreenATView = this.f4808l;
        if (baseScreenATView != null) {
            baseScreenATView.removeAllViews();
            this.f4808l.destroy();
            this.f4808l = null;
        }
        w wVar = this.f4810n;
        if (wVar != null && wVar.w() && !this.f4810n.E()) {
            n.a().b();
        }
        if (this.f4809m != null) {
            c.a().a(this.f4809m.f4486f + this.f4809m.f4485e);
        }
        if (!TextUtils.isEmpty(this.f4811o)) {
            com.anythink.core.common.inner.e.b.a().b(this.f4811o);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (4 == i2) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f4798b = false;
    }

    @Override // android.app.Activity
    public void onResume() {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                super.onResume();
            } catch (Throwable unused) {
                c();
            }
        } else {
            super.onResume();
        }
        d();
        this.f4798b = true;
        if (this.f4799c != null) {
            this.f4799c = null;
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        BaseScreenATView baseScreenATView = this.f4808l;
        if (baseScreenATView != null) {
            if (baseScreenATView.isShowEndCard()) {
                bundle.putBoolean(a.C0043a.f1585f, true);
            }
            bundle.putBoolean(a.C0043a.f1586g, this.f4808l.isVideoMute());
            bundle.putBoolean(a.C0043a.f1589j, this.f4808l.hasReward());
            bundle.putLong(a.C0043a.f1591l, this.f4808l.getShowBannerTime());
            bundle.putLong(a.C0043a.f1592m, this.f4808l.getHideBannerTime());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            d();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        if (Build.VERSION.SDK_INT == 26) {
            super.setTheme(p.a(this, "myoffer_half_screen_fit_by_o", "style"));
        } else {
            super.setTheme(i2);
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseATActivity$2, reason: invalid class name */
    public class AnonymousClass2 extends d {
        public AnonymousClass2() {
        }

        @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
        public final void a(e eVar) {
            if (BaseATActivity.this.f4812p != null) {
                BaseATActivity.this.f4812p.a(eVar);
            }
        }

        @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
        public final void b() {
            if (BaseATActivity.this.f4812p != null) {
                BaseATActivity.this.f4812p.b();
            }
        }

        @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
        public final void c() {
            if (BaseATActivity.this.f4812p != null) {
                BaseATActivity.this.f4812p.c();
            }
        }

        @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
        public final void d() {
            if (BaseATActivity.this.f4812p != null) {
                BaseATActivity.this.f4812p.a(e());
                BaseATActivity.this.f4812p.d();
            }
            BaseATActivity.this.c();
        }

        @Override // com.anythink.core.common.inner.e.d
        public final void f() {
        }

        @Override // com.anythink.core.common.inner.e.d
        public final void g() {
        }

        @Override // com.anythink.core.common.inner.e.d
        public final void h() {
        }

        @Override // com.anythink.core.common.inner.e.d
        public final String i() {
            return "";
        }

        @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
        public final void a(com.anythink.core.common.inner.b.a aVar) {
            if (BaseATActivity.this.f4812p != null) {
                BaseATActivity.this.f4812p.a(aVar);
            }
        }

        @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
        public final void b(e eVar) {
            if (BaseATActivity.this.f4812p != null) {
                BaseATActivity.this.f4812p.b(eVar);
            }
        }

        @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
        public final void a() {
            if (BaseATActivity.this.f4812p != null) {
                BaseATActivity.this.f4812p.a();
            }
        }

        @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
        public final void a(boolean z2) {
            if (BaseATActivity.this.f4812p != null) {
                BaseATActivity.this.f4812p.a(z2);
            }
        }
    }

    public static void a(Activity activity, com.anythink.core.basead.b.c cVar) {
        Intent intent = new Intent();
        Context contextG = s.b().g();
        if (activity != null && !activity.isFinishing()) {
            contextG = activity;
        }
        boolean zA = a(cVar.f1633a, cVar.f1640h);
        if (cVar.f1637e == 2) {
            if (zA || cVar.f1642j) {
                intent.setClass(contextG, ATLandscapeTranslucentActivity.class);
            } else {
                intent.setClass(contextG, ATLandscapeActivity.class);
            }
        } else if (zA || cVar.f1642j) {
            intent.setClass(contextG, ATPortraitTranslucentActivity.class);
        } else {
            intent.setClass(contextG, ATPortraitActivity.class);
        }
        intent.putExtra(a.C0043a.f1583d, cVar.f1636d);
        com.anythink.core.common.inner.ui.d.a.a().a(cVar.f1636d, cVar);
        if (!(contextG instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        try {
            contextG.startActivity(intent);
            if (activity == null || activity.isFinishing()) {
                return;
            }
            activity.overridePendingTransition(0, 0);
        } catch (Throwable th) {
            b.AbstractC0055b abstractC0055bA = com.anythink.core.common.inner.e.b.a().a(cVar.f1636d);
            if (abstractC0055bA != null) {
                abstractC0055bA.a(com.anythink.core.common.inner.b.b.a(com.anythink.core.common.inner.b.b.f4585b, th.getMessage()));
            }
        }
    }

    private void b() {
        a.InterfaceC0064a interfaceC0064aB = com.anythink.core.common.inner.mixad.a.a().b(this.f4811o);
        if (interfaceC0064aB != null) {
            interfaceC0064aB.a(this);
        }
    }

    private void c(Bundle bundle) {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.f4806j = anonymousClass2;
        this.f4808l.setListener(anonymousClass2);
        if (bundle != null) {
            this.f4816t = bundle.getBoolean(a.C0043a.f1585f);
            this.f4817u = bundle.getBoolean(a.C0043a.f1586g);
            this.f4818v = bundle.getBoolean(a.C0043a.f1589j);
            this.f4800d = bundle.getLong(a.C0043a.f1591l);
            this.f4801e = bundle.getLong(a.C0043a.f1592m);
            this.f4802f = bundle.getFloat(a.C0043a.f1593n);
            this.f4803g = bundle.getBoolean(a.C0043a.f1587h, false);
            this.f4804h = bundle.getBoolean(a.C0043a.f1594o, false);
        }
        this.f4808l.setIsShowEndCard(this.f4816t);
        this.f4808l.setHasReward(this.f4818v);
        if (bundle != null) {
            this.f4808l.setVideoMute(this.f4817u);
            this.f4808l.setShowBannerTime(this.f4800d);
            this.f4808l.setHideBannerTime(this.f4801e);
        }
        try {
            this.f4808l.init();
        } catch (Throwable th) {
            th.printStackTrace();
            try {
                b.AbstractC0055b abstractC0055b = this.f4812p;
                if (abstractC0055b != null) {
                    abstractC0055b.a(com.anythink.core.common.inner.b.b.a(com.anythink.core.common.inner.b.b.f4594k, p.a(th.getStackTrace())));
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            c();
        }
    }

    private void b(Bundle bundle) {
        if (bundle != null) {
            this.f4816t = bundle.getBoolean(a.C0043a.f1585f);
            this.f4817u = bundle.getBoolean(a.C0043a.f1586g);
            this.f4818v = bundle.getBoolean(a.C0043a.f1589j);
            this.f4800d = bundle.getLong(a.C0043a.f1591l);
            this.f4801e = bundle.getLong(a.C0043a.f1592m);
            this.f4802f = bundle.getFloat(a.C0043a.f1593n);
            this.f4803g = bundle.getBoolean(a.C0043a.f1587h, false);
            this.f4804h = bundle.getBoolean(a.C0043a.f1594o, false);
        }
    }

    private void a() {
        Intent intent = getIntent();
        try {
            if (intent != null) {
                this.f4811o = intent.getStringExtra(a.C0043a.f1583d);
                com.anythink.core.basead.b.c cVarA = com.anythink.core.common.inner.ui.d.a.a().a(this.f4811o);
                if (cVarA != null) {
                    this.f4813q = cVarA.f1634b;
                    this.f4814r = cVarA.f1633a;
                    this.f4810n = cVarA.f1635c;
                    this.f4809m = cVarA.f1640h;
                }
                this.f4819w = a(this.f4814r, this.f4809m);
                return;
            }
            Log.e("anythink", f4797a + " Intent is null.");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            finish();
            overridePendingTransition(0, 0);
        } catch (Throwable unused) {
        }
    }

    private static boolean a(int i2, x xVar) {
        y yVar;
        if (xVar == null || (yVar = xVar.f4500t) == null || i2 != 3) {
            return false;
        }
        return TextUtils.equals("2", yVar.u());
    }

    private BaseScreenATView a(com.anythink.core.common.inner.mixad.c.a.a aVar, BaseAd baseAd) {
        int i2 = this.f4814r;
        if ((i2 == 1 || i2 == 3) && baseAd != null) {
            boolean z2 = this.f4819w;
            if (aVar != null) {
                Object objA = new com.anythink.core.common.inner.mixad.c.b(new a.C0056a().a(aVar).a(this).a(z2).a(this.f4813q).a(this.f4815s).a()).a();
                if (objA instanceof BaseScreenATView) {
                    this.f4820x = objA instanceof com.anythink.core.common.l.e.a.e;
                    return (BaseScreenATView) objA;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.BaseATActivity.a(android.os.Bundle):void");
    }

    private BaseScreenATView a(com.anythink.core.common.inner.mixad.c.a.a aVar, boolean z2) {
        if (aVar == null) {
            return null;
        }
        Object objA = new com.anythink.core.common.inner.mixad.c.b(new a.C0056a().a(aVar).a(this).a(z2).a(this.f4813q).a(this.f4815s).a()).a();
        if (!(objA instanceof BaseScreenATView)) {
            return null;
        }
        this.f4820x = objA instanceof com.anythink.core.common.l.e.a.e;
        return (BaseScreenATView) objA;
    }
}

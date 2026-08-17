package com.smartdigimkt.sdk.basead.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Window;
import android.view.WindowManager;
import com.anythink.core.basead.a;
import com.bykv.vk.component.ttvideo.player.C;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.f3.a0;
import com.smartdigimkt.f3.x;
import com.smartdigimkt.i0.f;
import com.smartdigimkt.i0.i;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.p1.b;
import com.smartdigimkt.p1.d;
import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewBaseScreenATView;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.v1.p;
import com.smartdigimkt.v1.q;
import com.smartdigimkt.y3.g;
import com.smartdigimkt.z.z;
import com.umeng.analytics.pro.l;

/* loaded from: classes5.dex */
public class BaseATActivity extends Activity {

    /* renamed from: z, reason: collision with root package name */
    public static final /* synthetic */ int f43185z = 0;

    /* renamed from: a, reason: collision with root package name */
    public BaseScreenATView f43186a;

    /* renamed from: b, reason: collision with root package name */
    public a f43187b;

    /* renamed from: c, reason: collision with root package name */
    public c f43188c;

    /* renamed from: d, reason: collision with root package name */
    public String f43189d;

    /* renamed from: e, reason: collision with root package name */
    public d f43190e;

    /* renamed from: f, reason: collision with root package name */
    public String f43191f;

    /* renamed from: g, reason: collision with root package name */
    public int f43192g;

    /* renamed from: h, reason: collision with root package name */
    public int f43193h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f43194i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f43195j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f43196k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f43197l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f43198m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f43199n;

    /* renamed from: o, reason: collision with root package name */
    public i f43200o;

    /* renamed from: p, reason: collision with root package name */
    public long f43201p = 0;

    /* renamed from: q, reason: collision with root package name */
    public long f43202q = 0;

    /* renamed from: r, reason: collision with root package name */
    public float f43203r = 0.0f;

    /* renamed from: s, reason: collision with root package name */
    public boolean f43204s = false;

    /* renamed from: t, reason: collision with root package name */
    public boolean f43205t = false;

    /* renamed from: u, reason: collision with root package name */
    public final p f43206u = new p(this);

    /* renamed from: v, reason: collision with root package name */
    public q f43207v;

    /* renamed from: w, reason: collision with root package name */
    public long f43208w;

    /* renamed from: x, reason: collision with root package name */
    public long f43209x;

    /* renamed from: y, reason: collision with root package name */
    public long f43210y;

    public static void a(Activity activity, com.smartdigimkt.m3.a aVar) {
        e eVar;
        Intent intent = new Intent();
        Context contextD = SDKContext.getInstance().d();
        if (activity != null && !activity.isFinishing()) {
            contextD = activity;
        }
        int i2 = aVar.f41770a;
        a aVar2 = aVar.f41775f;
        boolean zEquals = (aVar2 == null || (eVar = aVar2.f41644r) == null || i2 != 3) ? false : TextUtils.equals("2", eVar.f41981w);
        if (aVar.f41774e == 2) {
            if (zEquals) {
                intent.setClass(contextD, ATLandscapeTranslucentActivity.class);
            } else {
                intent.setClass(contextD, ATLandscapeActivity.class);
            }
        } else if (zEquals) {
            intent.setClass(contextD, ATPortraitTranslucentActivity.class);
        } else {
            intent.setClass(contextD, ATPortraitActivity.class);
        }
        intent.putExtra(a.C0043a.f1583d, aVar.f41773d);
        com.smartdigimkt.o2.a aVarA = com.smartdigimkt.o2.a.a();
        String str = aVar.f41773d;
        aVarA.getClass();
        if (!TextUtils.isEmpty(str)) {
            aVarA.f42220a.put(str, aVar);
        }
        if (!(contextD instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        try {
            contextD.startActivity(intent);
            if (activity == null || activity.isFinishing()) {
                return;
            }
            activity.overridePendingTransition(0, 0);
        } catch (Throwable th) {
            d dVar = (d) b.f42548a.f42554a.get(aVar.f41773d);
            if (dVar != null) {
                dVar.a(new f(com.anythink.core.common.inner.b.b.f4585b, th.getMessage()));
            }
        }
    }

    public final BaseScreenATView b() {
        int i2 = this.f43192g;
        if (i2 != 1) {
            if (i2 == 3) {
                if (this.f43188c.d() == 3) {
                    if (t.b(this.f43188c)) {
                        return new WTWebViewBaseScreenATView(this, this.f43187b, this.f43188c, this.f43191f, this.f43192g, this.f43193h);
                    }
                    if (this.f43188c.f41832w.f41992z1 != 1) {
                        d dVar = this.f43190e;
                        if (dVar != null) {
                            dVar.a(new f(com.anythink.core.common.inner.b.b.f4603t, com.anythink.core.common.inner.b.b.ad));
                        }
                        a();
                        return null;
                    }
                }
                return this.f43197l ? (this.f43187b.f41644r.f41961p0 == 1 && this.f43193h == 1) ? new LetterHalfScreenATView(this, this.f43187b, this.f43188c, this.f43191f, this.f43192g, this.f43193h) : new HalfScreenATView(this, this.f43187b, this.f43188c, this.f43191f, this.f43192g, this.f43193h) : (this.f43187b.f41644r.f41961p0 == 1 && this.f43193h == 1) ? new LetterFullScreenATView(this, this.f43187b, this.f43188c, this.f43191f, this.f43192g, this.f43193h) : new FullScreenATView(this, this.f43187b, this.f43188c, this.f43191f, this.f43192g, this.f43193h);
            }
        } else if (this.f43188c.d() == 3) {
            if (t.b(this.f43188c)) {
                return new WTWebViewBaseScreenATView(this, this.f43187b, this.f43188c, this.f43191f, this.f43192g, this.f43193h);
            }
            if (this.f43188c.f41832w.f41992z1 != 1) {
                d dVar2 = this.f43190e;
                if (dVar2 != null) {
                    dVar2.a(new f(com.anythink.core.common.inner.b.b.f4603t, com.anythink.core.common.inner.b.b.ad));
                }
                a();
                return null;
            }
        }
        return new FullScreenATView(this, this.f43187b, this.f43188c, this.f43191f, this.f43192g, this.f43193h);
    }

    public final void c() {
        e eVar;
        try {
            c cVar = this.f43188c;
            if (cVar == null || (eVar = cVar.f41832w) == null || eVar.f41864I1 != 1) {
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
    public final void onActivityResult(int i2, int i3, Intent intent) {
        BaseScreenATView baseScreenATView = this.f43186a;
        if (baseScreenATView != null) {
            baseScreenATView.onActivityResult(i2, i3, intent);
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        e eVar;
        super.onCreate(bundle);
        if (SDKContext.getInstance().d() == null) {
            SDKContext.getInstance().a(getApplicationContext());
        }
        if (this instanceof ATLandscapeActivity) {
            this.f43193h = 2;
        } else {
            this.f43193h = 1;
        }
        Intent intent = getIntent();
        try {
            if (intent != null) {
                this.f43189d = intent.getStringExtra(a.C0043a.f1583d);
                com.smartdigimkt.o2.a aVarA = com.smartdigimkt.o2.a.a();
                String str = this.f43189d;
                aVarA.getClass();
                com.smartdigimkt.m3.a aVar = !TextUtils.isEmpty(str) ? (com.smartdigimkt.m3.a) aVarA.f42220a.get(str) : null;
                if (aVar != null) {
                    this.f43191f = aVar.f41771b;
                    this.f43192g = aVar.f41770a;
                    this.f43188c = aVar.f41772c;
                    this.f43187b = aVar.f41775f;
                    this.f43198m = aVar.f41776g;
                }
                int i2 = this.f43192g;
                com.smartdigimkt.l3.a aVar2 = this.f43187b;
                this.f43197l = (aVar2 == null || (eVar = aVar2.f41644r) == null || i2 != 3) ? false : TextUtils.equals("2", eVar.f41981w);
            } else {
                Log.e("sdm", "BaseATActivity Intent is null.");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f43190e = (d) b.f42548a.f42554a.get(this.f43189d);
        a("1", 0L);
        com.smartdigimkt.l3.a aVar3 = this.f43187b;
        if (aVar3 == null || aVar3.f41644r == null) {
            Log.e("sdm", "BaseATActivityStart Screen Ad Error.");
            try {
                d dVar = this.f43190e;
                if (dVar != null) {
                    dVar.a(new f(com.anythink.core.common.inner.b.b.f4594k, "BaseATActivityStart FullScreen Ad Error."));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            a();
        } else if (this.f43188c == null) {
            Log.e("sdm", "BaseATActivity onCreate: OfferAd = null");
            try {
                d dVar2 = this.f43190e;
                if (dVar2 != null) {
                    dVar2.a(new f(com.anythink.core.common.inner.b.b.f4594k, "BaseATActivity onCreate: OfferAd = null"));
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            a();
        } else {
            com.smartdigimkt.z.d dVarA = com.smartdigimkt.z.d.a();
            p pVar = this.f43206u;
            synchronized (dVarA) {
                if (!TextUtils.isEmpty("1") && pVar != null) {
                    com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.z.a(dVarA, pVar));
                }
            }
            try {
                BaseScreenATView baseScreenATViewB = b();
                this.f43186a = baseScreenATViewB;
                if (baseScreenATViewB != null) {
                    setContentView(baseScreenATViewB);
                    BaseScreenATView baseScreenATView = this.f43186a;
                    if (baseScreenATView != null) {
                        baseScreenATView.setRvDeepRewardListenerRegistered(this.f43198m);
                    }
                    q qVar = new q(this);
                    this.f43207v = qVar;
                    this.f43186a.setListener(qVar);
                    if (bundle != null) {
                        this.f43194i = bundle.getBoolean(a.C0043a.f1585f);
                        this.f43195j = bundle.getBoolean(a.C0043a.f1586g);
                        this.f43196k = bundle.getBoolean(a.C0043a.f1589j);
                        this.f43201p = bundle.getLong(a.C0043a.f1591l);
                        this.f43202q = bundle.getLong(a.C0043a.f1592m);
                        this.f43203r = bundle.getFloat(a.C0043a.f1593n);
                        this.f43204s = bundle.getBoolean(a.C0043a.f1587h, false);
                        this.f43205t = bundle.getBoolean(a.C0043a.f1594o, false);
                    }
                    this.f43186a.setIsShowEndCard(this.f43194i);
                    this.f43186a.setHasReward(this.f43196k);
                    if (bundle != null) {
                        this.f43186a.setVideoMute(this.f43195j);
                        this.f43186a.setShowBannerTime(this.f43201p);
                        this.f43186a.setHideBannerTime(this.f43202q);
                        this.f43186a.setCloseButtonScaleFactor(this.f43203r);
                        this.f43186a.setHasPerformClick(this.f43204s);
                        this.f43186a.setShowingEndCardAfterVideoPlay(this.f43205t);
                    }
                    try {
                        this.f43186a.init();
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                        try {
                            d dVar3 = this.f43190e;
                            if (dVar3 != null) {
                                dVar3.a(new f(com.anythink.core.common.inner.b.b.f4594k, k.a(th3.getStackTrace())));
                            }
                        } catch (Throwable th4) {
                            th4.printStackTrace();
                        }
                        a();
                    }
                }
            } catch (Throwable th5) {
                String.valueOf(th5);
                String message = th5.getMessage() != null ? th5.getMessage() : th5.getClass().getSimpleName();
                try {
                    d dVar4 = this.f43190e;
                    if (dVar4 != null) {
                        dVar4.a(new f(com.anythink.core.common.inner.b.b.f4594k, "BaseATActivity inflate failed: " + message));
                    }
                } catch (Throwable unused) {
                }
                a();
            }
        }
        c();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        com.smartdigimkt.p1.c cVar;
        if (isFinishing() && !isChangingConfigurations()) {
            com.smartdigimkt.o2.a aVarA = com.smartdigimkt.o2.a.a();
            String str = this.f43189d;
            aVarA.getClass();
            if (!TextUtils.isEmpty(str)) {
                aVarA.f42220a.remove(str);
            }
        }
        this.f43200o = null;
        this.f43207v = null;
        com.smartdigimkt.z.d dVarA = com.smartdigimkt.z.d.a();
        p pVar = this.f43206u;
        synchronized (dVarA) {
            if (!TextUtils.isEmpty("1") && pVar != null) {
                com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.z.b(dVarA, pVar));
            }
        }
        BaseScreenATView baseScreenATView = this.f43186a;
        if (baseScreenATView != null) {
            baseScreenATView.removeAllViews();
            this.f43186a.z();
            this.f43186a = null;
        }
        c cVar2 = this.f43188c;
        if (cVar2 != null && cVar2.g()) {
            this.f43188c.getClass();
            a0 a0VarA = a0.a();
            if (!a0VarA.f40207d) {
                com.smartdigimkt.b4.e.a().a(new x(a0VarA), 0L, 13);
            }
        }
        if (this.f43187b != null) {
            com.smartdigimkt.y3.a aVarA2 = com.smartdigimkt.y3.a.a();
            String str2 = this.f43187b.f41632f + this.f43187b.f41631e;
            aVarA2.getClass();
            if (!TextUtils.isEmpty(str2) && (cVar = (com.smartdigimkt.p1.c) aVarA2.f45192a.remove(str2)) != null && cVar.f42549a.equals(str2) && !cVar.f42550b.f42553c) {
                d dVar = cVar.f42550b;
                dVar.f42552b = 3;
                dVar.a();
            }
        }
        if (!TextUtils.isEmpty(this.f43189d)) {
            b.f42548a.f42554a.remove(this.f43189d);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (4 == i2) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        long j2 = this.f43210y + 1;
        this.f43210y = j2;
        if (j2 <= 5) {
            StringBuilder sb = new StringBuilder("3-");
            q qVar = this.f43207v;
            sb.append(qVar != null ? qVar.f44577d : "0");
            a(sb.toString(), SystemClock.elapsedRealtime() - this.f43208w);
        }
        this.f43199n = false;
        BaseScreenATView baseScreenATView = this.f43186a;
        if (baseScreenATView != null) {
            baseScreenATView.a(111);
            baseScreenATView.f43281V = false;
            com.smartdigimkt.c2.d dVar = baseScreenATView.f43229o;
            if (dVar != null) {
                dVar.b();
            }
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        try {
            super.onResume();
        } catch (Throwable th) {
            th.getMessage();
            k.a(th.getStackTrace());
            a();
        }
        c();
        this.f43208w = SystemClock.elapsedRealtime();
        long j2 = this.f43209x + 1;
        this.f43209x = j2;
        if (j2 <= 5) {
            StringBuilder sb = new StringBuilder("2-");
            q qVar = this.f43207v;
            sb.append(qVar != null ? qVar.f44577d : "0");
            a(sb.toString(), 0L);
        }
        this.f43199n = true;
        BaseScreenATView baseScreenATView = this.f43186a;
        if (baseScreenATView != null) {
            baseScreenATView.B();
        }
        i iVar = this.f43200o;
        if (iVar != null) {
            iVar.a(this);
            this.f43200o = null;
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        BaseScreenATView baseScreenATView = this.f43186a;
        if (baseScreenATView != null) {
            if (baseScreenATView.isShowEndCard()) {
                bundle.putBoolean(a.C0043a.f1585f, true);
            }
            bundle.putBoolean(a.C0043a.f1586g, this.f43186a.isVideoMute());
            bundle.putBoolean(a.C0043a.f1589j, this.f43186a.hasReward());
            bundle.putLong(a.C0043a.f1591l, this.f43186a.getShowBannerTime());
            bundle.putLong(a.C0043a.f1592m, this.f43186a.getHideBannerTime());
            bundle.putFloat(a.C0043a.f1593n, this.f43186a.getCloseButtonScaleFactor());
            bundle.putBoolean(a.C0043a.f1587h, this.f43186a.getHasPerformClick());
            bundle.putBoolean(a.C0043a.f1594o, this.f43186a.isShowingEndCardAfterVideoPlay());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            c();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i2) {
        if (Build.VERSION.SDK_INT == 26) {
            super.setTheme(k.a(this, "myoffer_half_screen_fit_by_o", "style"));
        } else {
            super.setTheme(i2);
        }
    }

    public final void a() {
        try {
            finish();
            overridePendingTransition(0, 0);
        } catch (Throwable unused) {
        }
    }

    public final void a(String str, long j2) {
        com.smartdigimkt.l3.a aVar;
        String str2;
        String str3;
        String str4 = "";
        if (this.f43188c == null || (aVar = this.f43187b) == null) {
            return;
        }
        try {
            String str5 = aVar.f41631e;
            String str6 = this.f43187b.f41628b + "";
            if (this.f43187b != null) {
                str2 = this.f43187b.f41636j + "";
            } else {
                str2 = "";
            }
            c cVar = this.f43188c;
            int iE = cVar != null ? cVar.e() : -1;
            c cVar2 = this.f43188c;
            if (cVar2 == null) {
                str3 = "";
            } else {
                str3 = cVar2.f41806a;
            }
            if (cVar2 instanceof com.smartdigimkt.m3.b) {
                str4 = ((com.smartdigimkt.m3.b) cVar2).f42054o0;
            }
            String str7 = str4;
            boolean zH = z.h(cVar2, this.f43187b);
            if (SDKContext.getInstance().d() == null) {
                return;
            }
            com.smartdigimkt.b4.e.a().a(new g(str6, str2, aVar, str5, iE, str7, str3, zH, str, j2), 0L, 13);
        } catch (Throwable unused) {
        }
    }
}

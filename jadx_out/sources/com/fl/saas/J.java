package com.fl.saas;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.WindowManager;
import com.fl.saas.E0;
import com.fl.saas.adx.api.FLInterstitial;
import com.fl.saas.adx.api.FLSpread;
import com.fl.saas.adx.base.activity.FLSpreadActivity;
import com.fl.saas.adx.base.activity.h5.FLH5Activity;
import com.fl.saas.adx.base.activity.h5.QuickAppHelper;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.FLAdTempHelper;
import com.fl.saas.adx.base.interfaces.AdViewInterstitialListener;
import com.fl.saas.adx.base.interfaces.AdViewSpreadListener;
import com.fl.saas.adx.base.interfaces.SpreadLoadListener;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class J {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicInteger f29929a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f29930b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f29931c;

    /* renamed from: d, reason: collision with root package name */
    private long f29932d;

    /* renamed from: e, reason: collision with root package name */
    private long f29933e;

    /* renamed from: f, reason: collision with root package name */
    private C1188j f29934f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f29935g;

    /* renamed from: h, reason: collision with root package name */
    private WeakReference f29936h;

    /* renamed from: i, reason: collision with root package name */
    private FLSpread f29937i;

    /* renamed from: j, reason: collision with root package name */
    private FLInterstitial f29938j;

    /* renamed from: k, reason: collision with root package name */
    private String f29939k;

    /* renamed from: l, reason: collision with root package name */
    private String f29940l;

    /* renamed from: m, reason: collision with root package name */
    private final CopyOnWriteArrayList f29941m;

    /* renamed from: n, reason: collision with root package name */
    private long f29942n;

    /* renamed from: o, reason: collision with root package name */
    private String f29943o;

    /* renamed from: p, reason: collision with root package name */
    private String f29944p;

    /* renamed from: q, reason: collision with root package name */
    public int f29945q;

    public class a implements AdViewSpreadListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f29946a;

        public a(List list) {
            this.f29946a = list;
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerSpreadListener
        public void onAdClick(String str) {
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerSpreadListener
        public void onAdClose() {
            if (J.this.f29937i != null) {
                FLAdTempHelper.getInstance().closeSpreadSpread(J.this.f29937i.getReqId());
                J.this.f29937i.destroy();
                J.this.f29937i = null;
                J.this.a(this.f29946a);
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerSpreadListener
        public void onAdDisplay() {
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            if (J.this.f29937i != null) {
                FLAdTempHelper.getInstance().closeSpreadSpread(J.this.f29937i.getReqId());
                J.this.f29937i.destroy();
                J.this.f29937i = null;
                J.this.a(this.f29946a);
            }
        }
    }

    public class b implements AdViewInterstitialListener {
        public b() {
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
        public void onAdClick(String str) {
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
        public void onAdClosed() {
            if (J.this.f29938j != null) {
                J.this.f29938j.destroy();
                J.this.f29938j = null;
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
        public void onAdDisplay() {
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            if (J.this.f29938j != null) {
                J.this.f29938j.destroy();
                J.this.f29938j = null;
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
        public void onAdReady() {
            if (J.this.f29936h != null && J.this.f29936h.get() != null && !((Activity) J.this.f29936h.get()).isFinishing()) {
                Activity topActivity = DeviceUtil.getTopActivity();
                if (topActivity != null) {
                    J.this.f29939k = topActivity.getComponentName().getClassName();
                }
                if (J.this.f29938j != null && J.this.f29940l.equals(J.this.f29939k)) {
                    J.this.f29938j.show((Activity) J.this.f29936h.get());
                    return;
                } else if (J.this.f29938j == null) {
                    return;
                }
            } else if (J.this.f29938j == null) {
                return;
            }
            J.this.f29938j.destroy();
            J.this.f29938j = null;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!J.this.f29935g || J.this.f29934f == null) {
                return;
            }
            E0.a().a(J.this.f29934f, "0", 0L);
            J.this.f29934f = null;
        }
    }

    public class d implements Application.ActivityLifecycleCallbacks {
        private d() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            try {
                if (!J.this.c(activity) && J.this.f29929a.incrementAndGet() == 1 && J.this.f29930b) {
                    J.this.f29930b = false;
                    J.this.d(activity);
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            try {
                if (J.this.c(activity) || J.this.f29929a.decrementAndGet() != 0) {
                    return;
                }
                J.this.f29930b = true;
                J.this.e();
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }

        public /* synthetic */ d(J j2, a aVar) {
            this();
        }
    }

    public static final class e {

        /* renamed from: a, reason: collision with root package name */
        private static final J f29951a = new J(null);
    }

    private J() {
        this.f29929a = new AtomicInteger(0);
        this.f29930b = false;
        this.f29931c = false;
        this.f29932d = 0L;
        this.f29933e = 0L;
        this.f29935g = false;
        this.f29939k = "";
        this.f29940l = "";
        this.f29941m = new CopyOnWriteArrayList();
        this.f29942n = 0L;
        this.f29943o = "";
        this.f29944p = "";
        this.f29945q = 0;
    }

    public /* synthetic */ J(a aVar) {
        this();
    }

    private void d() {
        Iterator it = this.f29941m.iterator();
        while (it.hasNext()) {
            I.a(it.next());
            try {
                throw null;
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f29935g = false;
        this.f29932d = System.currentTimeMillis();
        c();
        if (this.f29932d - this.f29942n > 3000) {
            this.f29942n = 0L;
            this.f29943o = "";
            this.f29944p = "";
            this.f29945q = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List list) {
        C1222u0 c1222u0;
        if (list == null || list.isEmpty()) {
            return;
        }
        WeakReference weakReference = this.f29936h;
        if (weakReference != null && weakReference.get() != null && !((Activity) this.f29936h.get()).isFinishing()) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    c1222u0 = null;
                    break;
                }
                c1222u0 = (C1222u0) it.next();
                if (c1222u0.c() == 1 && c1222u0.a() > 0) {
                    break;
                }
            }
            if (c1222u0 != null && (System.currentTimeMillis() - this.f29932d) / 1000 > c1222u0.a()) {
                if (this.f29937i != null) {
                    a(list);
                    return;
                }
                FLSpread fLSpreadBuild = new FLSpread.Builder((Context) this.f29936h.get()).setIsHot(true).setKey(c1222u0.b()).setSpreadLoadListener(new SpreadLoadListener() { // from class: com.fl.saas.l1
                    @Override // com.fl.saas.adx.base.interfaces.SpreadLoadListener
                    public final void onADLoaded(SpreadLoadListener.SpreadAd spreadAd) {
                        this.f30607a.a(spreadAd);
                    }
                }).setSpreadListener(new a(list)).build();
                this.f29937i = fLSpreadBuild;
                fLSpreadBuild.requestSpread();
                return;
            }
        }
        a(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Activity activity) {
        this.f29933e = System.currentTimeMillis() - this.f29932d;
        d();
        if (activity == null) {
            return;
        }
        a((Context) activity);
        this.f29939k = activity.getComponentName().getClassName();
        this.f29936h = new WeakReference(activity);
        if (this.f29934f != null) {
            this.f29935g = false;
            E0.a().a(this.f29934f, "1", System.currentTimeMillis() - this.f29932d);
            this.f29934f = null;
        }
        if (E0.a().d()) {
            E0.a().a(new E0.e() { // from class: com.fl.saas.k1
                @Override // com.fl.saas.E0.e
                public final void a(List list) {
                    this.f30605a.b(list);
                }
            });
        }
    }

    public boolean c(Activity activity) {
        WindowManager.LayoutParams attributes;
        try {
            attributes = activity.getWindow().getAttributes();
        } catch (Throwable unused) {
        }
        return (attributes.width == -2) || (attributes.height == -2) || ((attributes.flags & 2) != 0) || b(activity) || a(activity);
    }

    private boolean b(Activity activity) {
        TypedArray typedArrayObtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{android.R.attr.windowIsTranslucent});
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z2;
    }

    private void c() {
        Iterator it = this.f29941m.iterator();
        while (it.hasNext()) {
            I.a(it.next());
            try {
                throw null;
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public static J b() {
        return e.f29951a;
    }

    public void b(Context context) {
        if (context != null) {
            try {
                if (this.f29931c) {
                    return;
                }
                ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new d(this, null));
                this.f29931c = true;
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    private boolean a(Activity activity) {
        TypedArray typedArrayObtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{android.R.attr.windowIsFloating});
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List list) {
        WeakReference weakReference;
        C1222u0 c1222u0;
        if (list == null || list.isEmpty() || (weakReference = this.f29936h) == null || weakReference.get() == null || ((Activity) this.f29936h.get()).isFinishing()) {
            return;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                c1222u0 = null;
                break;
            }
            c1222u0 = (C1222u0) it.next();
            if (c1222u0.c() == 3 && c1222u0.a() > 0) {
                break;
            }
        }
        if (c1222u0 == null || (System.currentTimeMillis() - this.f29932d) / 1000 <= c1222u0.a() || !this.f29940l.equals(((Activity) this.f29936h.get()).getComponentName().getClassName())) {
            return;
        }
        FLInterstitial fLInterstitialBuild = new FLInterstitial.Builder((Context) this.f29936h.get()).setKey(c1222u0.b()).setIsHot(true).setInterstitialListener(new b()).build();
        this.f29938j = fLInterstitialBuild;
        fLInterstitialBuild.requestInterstitial();
    }

    public long a() {
        return this.f29933e;
    }

    private void a(Context context) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(this.f29943o)) {
                    return;
                }
                if (this.f29945q == 0) {
                    FLH5Activity.launchWithEnableQuickApp(context, this.f29943o, QuickAppHelper.getInstance().enableQuickApp(this.f29944p));
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(this.f29943o));
                context.startActivity(intent);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SpreadLoadListener.SpreadAd spreadAd) {
        WeakReference weakReference;
        if (this.f29937i == null || (weakReference = this.f29936h) == null || weakReference.get() == null || ((Activity) this.f29936h.get()).isFinishing()) {
            return;
        }
        FLAdTempHelper.getInstance().setSpreadAd(spreadAd);
        Intent intent = new Intent((Context) this.f29936h.get(), (Class<?>) FLSpreadActivity.class);
        intent.putExtra("id", this.f29937i.getReqId());
        ((Activity) this.f29936h.get()).startActivity(intent);
    }

    public void a(C1188j c1188j) {
        this.f29934f = c1188j;
        if (c1188j != null) {
            this.f29935g = true;
            DeviceUtil.postUIDelayed(5000L, new c());
        }
    }

    public void a(long j2) {
        this.f29933e = j2;
    }

    public void a(String str, String str2, int i2) {
        this.f29942n = System.currentTimeMillis();
        this.f29943o = str;
        this.f29944p = str2;
        this.f29945q = i2;
    }

    public void a(String str) {
        this.f29940l = str;
    }
}

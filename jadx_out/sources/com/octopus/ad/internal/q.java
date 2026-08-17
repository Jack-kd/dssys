package com.octopus.ad.internal;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import com.bykv.vk.component.ttvideo.player.C;
import com.octopus.ad.Octopus;
import com.octopus.ad.TransparentActivity;
import com.octopus.ad.a.c;
import com.octopus.ad.internal.activity.BrowserAdActivity;
import com.octopus.ad.internal.d.h;
import com.octopus.ad.internal.k;
import com.octopus.ad.internal.utilities.IS2SManager;
import com.octopus.ad.utils.OctUtil;
import com.octopus.ad.utils.ThreadUtils;
import com.umeng.analytics.AnalyticsConfig;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class q implements IS2SManager {

    /* renamed from: E, reason: collision with root package name */
    private static q f34978E = null;

    /* renamed from: H, reason: collision with root package name */
    private static boolean f34979H = false;
    private static boolean aa = false;

    /* renamed from: q, reason: collision with root package name */
    public static String f34980q = null;

    /* renamed from: r, reason: collision with root package name */
    public static String f34981r = "";

    /* renamed from: s, reason: collision with root package name */
    public static String f34982s = "";

    /* renamed from: w, reason: collision with root package name */
    public static int f34983w = 1000;

    /* renamed from: x, reason: collision with root package name */
    public static int f34984x = 1000;

    /* renamed from: y, reason: collision with root package name */
    public static long f34985y = 7200000;

    /* renamed from: A, reason: collision with root package name */
    public JSONArray f34986A;

    /* renamed from: D, reason: collision with root package name */
    public ArrayList<String> f34989D;

    /* renamed from: F, reason: collision with root package name */
    private String f34990F;

    /* renamed from: G, reason: collision with root package name */
    private String f34991G;

    /* renamed from: J, reason: collision with root package name */
    private Boolean f34993J;

    /* renamed from: Q, reason: collision with root package name */
    private float f35000Q;

    /* renamed from: S, reason: collision with root package name */
    private DisplayMetrics f35002S;

    /* renamed from: Y, reason: collision with root package name */
    private com.octopus.ad.internal.d.h f35008Y;

    /* renamed from: Z, reason: collision with root package name */
    private long f35009Z;
    private String ad;
    private String ae;
    private long af;

    /* renamed from: e, reason: collision with root package name */
    public int f35014e;

    /* renamed from: j, reason: collision with root package name */
    public String f35019j;

    /* renamed from: k, reason: collision with root package name */
    public ArrayList<String> f35020k;

    /* renamed from: l, reason: collision with root package name */
    public String f35021l;

    /* renamed from: o, reason: collision with root package name */
    public String f35024o;

    /* renamed from: t, reason: collision with root package name */
    public Context f35026t;

    /* renamed from: u, reason: collision with root package name */
    public float f35027u;

    /* renamed from: v, reason: collision with root package name */
    public float f35028v;

    /* renamed from: I, reason: collision with root package name */
    private int f34992I = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f35010a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f35011b = 500;

    /* renamed from: c, reason: collision with root package name */
    public int f35012c = 1000;

    /* renamed from: d, reason: collision with root package name */
    public int f35013d = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f35015f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f35016g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f35017h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f35018i = false;

    /* renamed from: m, reason: collision with root package name */
    public ConcurrentHashMap<String, com.octopus.ad.a.a> f35022m = new ConcurrentHashMap<>();

    /* renamed from: n, reason: collision with root package name */
    public boolean f35023n = false;

    /* renamed from: p, reason: collision with root package name */
    public HashMap<String, String> f35025p = new HashMap<>();

    /* renamed from: K, reason: collision with root package name */
    private HashSet<String> f34994K = new HashSet<>();

    /* renamed from: L, reason: collision with root package name */
    private HashSet<String> f34995L = new HashSet<>();

    /* renamed from: M, reason: collision with root package name */
    private HashSet<String> f34996M = new HashSet<>();

    /* renamed from: N, reason: collision with root package name */
    private HashSet<String> f34997N = new HashSet<>();

    /* renamed from: O, reason: collision with root package name */
    private HashSet<String> f34998O = new HashSet<>();

    /* renamed from: P, reason: collision with root package name */
    private HashSet<String> f34999P = new HashSet<>();

    /* renamed from: R, reason: collision with root package name */
    private boolean f35001R = true;

    /* renamed from: T, reason: collision with root package name */
    private boolean f35003T = false;

    /* renamed from: U, reason: collision with root package name */
    private boolean f35004U = false;

    /* renamed from: V, reason: collision with root package name */
    private boolean f35005V = false;

    /* renamed from: W, reason: collision with root package name */
    private boolean f35006W = false;

    /* renamed from: X, reason: collision with root package name */
    private boolean f35007X = false;

    /* renamed from: z, reason: collision with root package name */
    public boolean f35029z = false;

    /* renamed from: B, reason: collision with root package name */
    public int f34987B = 0;

    /* renamed from: C, reason: collision with root package name */
    public int f34988C = 0;
    private volatile int ab = 0;
    private volatile long ac = 0;

    public static /* synthetic */ int c(q qVar) {
        int i2 = qVar.f34992I;
        qVar.f34992I = i2 - 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (str.contains("track=oct")) {
                str = str + "&opt=13&result=0";
            }
            new i(str).b();
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    private com.octopus.ad.internal.d.h v() {
        Context context = this.f35026t;
        if (context == null) {
            return null;
        }
        try {
            return new h.a(context).a(536870912L).a();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        Map.Entry<String, com.octopus.ad.a.a> next;
        com.octopus.ad.a.a value;
        try {
            ConcurrentHashMap<String, com.octopus.ad.a.a> concurrentHashMap = a().f35022m;
            if (concurrentHashMap.isEmpty()) {
                return;
            }
            Iterator<Map.Entry<String, com.octopus.ad.a.a>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext() && (value = (next = it.next()).getValue()) != null) {
                if ("octdpopen".equals(next.getKey())) {
                    String strC = value.c();
                    if (!TextUtils.isEmpty(strC)) {
                        concurrentHashMap.remove(next.getKey());
                        a(value);
                        OctUtil.a().b(this.f35026t, strC, value.d(), false, null);
                    }
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    private void x() {
        try {
            Class.forName("android.content.pm.PackageParser$Package").getDeclaredConstructor(String.class).setAccessible(true);
        } catch (Throwable unused) {
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            Field declaredField = cls.getDeclaredField("mHiddenApiWarningShown");
            declaredField.setAccessible(true);
            declaredField.setBoolean(objInvoke, true);
        } catch (Throwable unused2) {
        }
    }

    public void a(String str, boolean z2) {
    }

    public boolean f() {
        return this.f35007X;
    }

    public float g() {
        return this.f35000Q;
    }

    @Override // com.octopus.ad.internal.utilities.IS2SManager
    public String getBuyerId() {
        return !this.f35003T ? "" : f34980q;
    }

    @Override // com.octopus.ad.internal.utilities.IS2SManager
    public String getSDKInfo(String str) {
        if (!this.f35003T) {
            return "";
        }
        w wVar = new w(str);
        wVar.a();
        return wVar.d();
    }

    public boolean h() {
        return this.f35001R;
    }

    public String i() {
        return this.f34990F;
    }

    public String j() {
        return this.f34991G;
    }

    public String k() {
        return f34980q;
    }

    public Context l() {
        return this.f35026t;
    }

    public synchronized String m() {
        if (TextUtils.isEmpty(this.f35024o)) {
            try {
                this.f35024o = WebSettings.getDefaultUserAgent(this.f35026t);
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            }
            if (TextUtils.isEmpty(this.f35024o)) {
                this.f35024o = "Mozilla/5.0 (Linux; Android " + Build.VERSION.RELEASE + "; " + Build.MODEL + " Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/116.0.0.0 Mobile Safari/537.36";
            }
        }
        return this.f35024o;
    }

    public String n() {
        return c(this.f35019j);
    }

    public String o() {
        if (!TextUtils.isEmpty(this.f35021l)) {
            return this.f35021l;
        }
        String strReplace = this.f35016g ? "http://sdklog.zhangyuyidong.cn".replace("http:", "https:") : "http://sdklog.zhangyuyidong.cn";
        return this.f35017h ? strReplace.replace("sdklog.", "sdklog6.") : strReplace;
    }

    public float p() {
        return this.f35027u;
    }

    public float q() {
        return this.f35028v;
    }

    public float r() {
        return Math.max(this.f35027u, this.f35028v);
    }

    public DisplayMetrics s() {
        return this.f35002S;
    }

    public HashSet<String> t() {
        return this.f34999P;
    }

    public boolean u() {
        return aa;
    }

    public static /* synthetic */ int a(q qVar) {
        int i2 = qVar.f34992I;
        qVar.f34992I = i2 + 1;
        return i2;
    }

    public boolean c() {
        int i2 = this.f34988C;
        return i2 > 0 && i2 < 100 && com.octopus.ad.d.b.i.a() < ((long) this.f34988C) * C.MICROS_PER_SECOND;
    }

    public void d() {
        if (this.f35004U) {
            return;
        }
        this.f35004U = true;
        try {
            OctUtil.a().a(this.f35026t);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        } catch (Throwable th) {
            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    public String c(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String strReplace = this.f35016g ? "http://sdk.zhangyuyidong.cn".replace("http:", "https:") : "http://sdk.zhangyuyidong.cn";
        return this.f35017h ? strReplace.replace("sdk.", "sdk6.") : strReplace;
    }

    public com.octopus.ad.internal.d.h b() {
        if (this.f35026t == null) {
            return null;
        }
        com.octopus.ad.internal.d.h hVar = this.f35008Y;
        if (hVar != null) {
            return hVar;
        }
        com.octopus.ad.internal.d.h hVarV = v();
        this.f35008Y = hVarV;
        return hVarV;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.octopus.ad.a.a aVar) {
        if (aVar != null) {
            o.a(new l("DPFORBID", aVar.l(), aVar.a(), System.currentTimeMillis() - aVar.h(), aVar.k()));
        }
    }

    public void e() throws JSONException {
        JSONArray jSONArray;
        try {
            if (this.f34987B <= 0 || (jSONArray = this.f34986A) == null || jSONArray.length() <= 0 || System.currentTimeMillis() - this.ac <= 5000) {
                return;
            }
            this.ac = System.currentTimeMillis();
            if (this.ab >= this.f34986A.length()) {
                this.ab = 0;
            }
            ArrayList arrayList = new ArrayList();
            String strB = com.octopus.ad.d.b.i.b(l());
            if (!TextUtils.isEmpty(strB)) {
                arrayList = new ArrayList(Arrays.asList(strB.split(", ")));
            }
            int iMin = Math.min(this.ab + this.f34987B, this.f34986A.length());
            for (int i2 = this.ab; i2 < iMin; i2++) {
                JSONObject jSONObject = this.f34986A.getJSONObject(i2);
                String strOptString = jSONObject.optString("sid");
                String strOptString2 = jSONObject.optString("pkg");
                boolean zA = com.octopus.ad.d.b.i.a(strOptString2);
                if (!zA) {
                    zA = com.octopus.ad.d.b.i.c(this.f35026t, strOptString2);
                }
                if (zA) {
                    if (!arrayList.contains(strOptString)) {
                        arrayList.add(strOptString);
                    }
                } else {
                    arrayList.remove(strOptString);
                }
            }
            com.octopus.ad.d.b.f.d("OctopusAd", arrayList.toString());
            this.ab = iMin;
            com.octopus.ad.internal.c.o.a(this.f35026t, SpellCheckPlugin.START_INDEX_KEY, Integer.valueOf(this.ab));
            com.octopus.ad.d.b.f.d("OctopusAd", this.ab + "");
            if (arrayList.isEmpty()) {
                return;
            }
            String strReplace = arrayList.toString().replace("[", "").replace("]", "");
            com.octopus.ad.internal.c.o.a(this.f35026t, "codeList", strReplace);
            com.octopus.ad.internal.c.a.a().f34512F = strReplace;
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public static q a() {
        q qVar;
        synchronized (q.class) {
            try {
                if (f34978E == null) {
                    f34978E = new q();
                }
                qVar = f34978E;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        if (TextUtils.isEmpty(this.ad) || TextUtils.isEmpty(this.ae)) {
            return;
        }
        o.a(new l("OTHERDPJUMP", this.ad, this.ae, this.af, str));
    }

    public void b(String str) {
        this.f34991G = str;
    }

    public void b(boolean z2) {
        aa = z2;
    }

    public void b(int i2) {
        f34983w = i2;
        f34984x = i2;
    }

    public void a(Context context, String str) {
        synchronized (q.class) {
            try {
                if (context != null) {
                    try {
                        this.f35026t = context.getApplicationContext();
                        ThreadUtils.runOnThreadPool(new Runnable() { // from class: com.octopus.ad.internal.q.1
                            @Override // java.lang.Runnable
                            public void run() {
                                q.this.m();
                            }
                        });
                        com.octopus.ad.internal.c.f.a(this.f35026t);
                        f34980q = str;
                        DisplayMetrics displayMetrics = this.f35026t.getResources().getDisplayMetrics();
                        this.f35002S = displayMetrics;
                        int i2 = displayMetrics.widthPixels;
                        int i3 = displayMetrics.heightPixels;
                        if (i2 < i3) {
                            this.f35027u = i2 / 720.0f;
                            this.f35028v = i3 / 1280.0f;
                        } else {
                            this.f35027u = i3 / 720.0f;
                            this.f35028v = i2 / 1280.0f;
                        }
                        this.f35007X = com.octopus.ad.d.b.i.b("com.octopus.ad.utils.OctUtil$C");
                        this.f35015f = com.octopus.ad.internal.c.o.c(this.f35026t, "getBootId");
                        this.f35018i = com.octopus.ad.internal.c.o.c(this.f35026t, "getOperator");
                        this.f35017h = com.octopus.ad.internal.c.o.c(this.f35026t, "ipv6");
                        this.f35016g = com.octopus.ad.internal.c.o.a(this.f35026t, "ssl", Octopus.getCustomController() != null && Octopus.getCustomController().isUseHttps());
                        this.f35019j = com.octopus.ad.internal.c.o.b(this.f35026t, "sdk");
                        this.f35020k = com.octopus.ad.internal.c.o.a(this.f35026t, "sdkList");
                        this.f35021l = com.octopus.ad.internal.c.o.b(this.f35026t, "sdklog");
                        this.ab = com.octopus.ad.internal.c.o.b(this.f35026t, SpellCheckPlugin.START_INDEX_KEY, 0);
                        this.f34993J = (Boolean) com.octopus.ad.internal.c.o.c(this.f35026t, "encrypt", Boolean.TRUE);
                        com.octopus.a.a.a().a(this.f35026t);
                        com.octopus.a.a.a().b();
                        a().f34988C = com.octopus.ad.internal.c.o.b(this.f35026t, "minimumMemory", 0);
                        if (!a().c()) {
                            new m(a(this.f35026t, str, this.f35019j)).b();
                        }
                        ((Application) this.f35026t).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.octopus.ad.internal.q.2
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
                                q.a(q.this);
                                if ((activity instanceof BrowserAdActivity) || (activity instanceof TransparentActivity)) {
                                    return;
                                }
                                k.a().a("AppSelfForeground");
                                q.this.w();
                            }

                            @Override // android.app.Application.ActivityLifecycleCallbacks
                            public void onActivityStopped(Activity activity) {
                                q.c(q.this);
                                if (q.this.f34992I < 0) {
                                    q.this.f34992I = 0;
                                }
                                if (q.this.f34992I == 0) {
                                    k.a().a("AppBackground");
                                }
                            }
                        });
                        if (Octopus.getCustomController() == null || Octopus.getCustomController().isCanUseOaid()) {
                            com.octopus.ad.d.a.b.a((Application) this.f35026t);
                        }
                        if (!this.f35003T) {
                            com.octopus.ad.d.g.a(this.f35026t).a(new com.octopus.ad.d.f() { // from class: com.octopus.ad.internal.q.3
                                @Override // com.octopus.ad.d.f
                                public void a(long j2, long j3) {
                                    com.octopus.ad.d.b.f.a("OctopusAd", "在线时长:" + (j3 - j2));
                                    com.octopus.ad.internal.c.o.a(q.this.f35026t, AnalyticsConfig.RTD_START_TIME, Long.valueOf(j2));
                                    com.octopus.ad.internal.c.o.a(q.this.f35026t, "endTime", Long.valueOf(j3));
                                }

                                @Override // com.octopus.ad.d.f
                                public void a() {
                                    com.octopus.ad.d.b.f.a("OctopusAd", "上报活跃量");
                                }
                            });
                        }
                        this.f35003T = true;
                        if (Build.VERSION.SDK_INT >= 28) {
                            x();
                        }
                    } catch (Exception e2) {
                        o.a(new l("INIT", str, 0));
                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                    }
                } else {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private String a(Context context, String str, String str2) {
        String str3 = c(str2) + "/sdk/config?appId=" + str + "&bundle=" + context.getPackageName() + "&brand=" + Build.BRAND + "&model=" + Build.MODEL + "&sdkVersion=2.6.5.7&deviceId=" + com.octopus.ad.d.b.g.a(context) + "&os=android";
        if (this.f35016g) {
            str3 = str3 + "&ssl=1";
        }
        if (Octopus.getCustomController() == null || Octopus.getCustomController().isCanUseAppList()) {
            return str3;
        }
        return str3 + "&alist=0";
    }

    public void a(final int i2) {
        if (this.f35005V || !this.f35007X) {
            return;
        }
        this.f35005V = true;
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.q.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    OctUtil.a().a(new OctUtil.C() { // from class: com.octopus.ad.internal.q.4.1
                        @Override // com.octopus.ad.utils.OctUtil.C
                        public String e(String str) {
                            Map.Entry<String, com.octopus.ad.a.a> next;
                            com.octopus.ad.a.a value;
                            try {
                                com.octopus.ad.d.b.f.a("OctopusAd", "scheme:" + str);
                                ArrayList<String> arrayList = q.a().f34989D;
                                if (arrayList != null && arrayList.contains(str)) {
                                    o.a(new l("DPORULKREPORT", str));
                                }
                                ConcurrentHashMap<String, com.octopus.ad.a.a> concurrentHashMap = q.a().f35022m;
                                if (concurrentHashMap.isEmpty() || TextUtils.isEmpty(str)) {
                                    return null;
                                }
                                Iterator<Map.Entry<String, com.octopus.ad.a.a>> it = concurrentHashMap.entrySet().iterator();
                                while (it.hasNext() && (value = (next = it.next()).getValue()) != null) {
                                    if (!TextUtils.isEmpty(value.k())) {
                                        for (String str2 : value.k().split(",")) {
                                            if (str.equals(str2)) {
                                                q.this.b(value);
                                                return "";
                                            }
                                        }
                                    } else if (str.equals(next.getKey()) || "octdpopen".equals(next.getKey())) {
                                        String strC = value.c();
                                        if (!TextUtils.isEmpty(strC)) {
                                            q.this.a(value);
                                            concurrentHashMap.remove(next.getKey());
                                            if (!value.e() || TextUtils.isEmpty(value.d())) {
                                                return strC;
                                            }
                                            return strC + ";;;" + value.d();
                                        }
                                    }
                                }
                                return null;
                            } catch (Exception e2) {
                                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                                return null;
                            }
                        }
                    }, i2);
                } catch (Throwable th) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
                }
            }
        });
    }

    public void a(String str, String str2, long j2) {
        this.ad = str;
        this.ae = str2;
        this.af = j2;
        if (this.f35006W) {
            return;
        }
        this.f35006W = true;
        try {
            if (com.octopus.ad.d.b.i.b("com.octopus.ad.utils.OctUtil$E")) {
                OctUtil.a().a(new OctUtil.E() { // from class: com.octopus.ad.internal.q.5
                    @Override // com.octopus.ad.utils.OctUtil.E
                    public void e(Throwable th) {
                        q.this.d(th.getMessage());
                    }
                });
            }
        } catch (Throwable th) {
            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.octopus.ad.a.a aVar) {
        final List<c.i> listI;
        if (aVar == null || (listI = aVar.i()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listI.size(); i2++) {
            c.i iVar = listI.get(i2);
            if (iVar != null && !TextUtils.isEmpty(iVar.a())) {
                String strA = iVar.a();
                if (strA.contains("track=oct")) {
                    strA = strA + "&opt=13";
                }
                new i(strA).b();
            }
        }
        com.octopus.ad.d.e.a(new Runnable() { // from class: com.octopus.ad.internal.q.6
            @Override // java.lang.Runnable
            public void run() {
                for (int i3 = 0; i3 < listI.size(); i3++) {
                    try {
                        c.i iVar2 = (c.i) listI.get(i3);
                        if (iVar2 != null && !TextUtils.isEmpty(iVar2.b())) {
                            String strB = iVar2.b();
                            if (strB.contains("track=oct")) {
                                strB = strB + "&opt=13";
                            }
                            new i(strB).b();
                        }
                        if (iVar2 != null && !TextUtils.isEmpty(iVar2.c())) {
                            final String strC = iVar2.c();
                            q.this.f35009Z = com.octopus.ad.d.b.i.d();
                            k.a().a(new k.a() { // from class: com.octopus.ad.internal.q.6.1
                                @Override // com.octopus.ad.internal.k.a
                                public void a(String str) {
                                    if ("AppBackground".equals(str)) {
                                        q.this.e(strC);
                                        k.a().b(this);
                                    }
                                }
                            });
                        }
                    } catch (Throwable th) {
                        com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
                        return;
                    }
                }
            }
        }, aVar.g());
    }

    public void a(float f2) {
        x.a(0.0f <= f2 && f2 <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        x.a(f34980q, (Object) "Octopus.initialize() must be called prior to setting the app volume.");
        this.f35000Q = f2;
    }

    public void a(boolean z2) {
        x.a(f34980q, (Object) "Octopus.initialize() must be called prior to setting the app volume.");
        this.f35001R = z2;
    }

    public void a(String str) {
        this.f34990F = str;
    }

    public String a(String str, boolean z2, boolean z3) {
        String str2;
        Boolean bool = this.f34993J;
        if (bool == null || bool.booleanValue()) {
            if (z3) {
                str2 = "/api/s2sreport?isEncrypt=2";
            } else if (z2) {
                str2 = "/api/zysdksd?isEncrypt=2";
            } else {
                str2 = "/api/zysdk?isEncrypt=2";
            }
        } else if (z3) {
            str2 = "/api/s2sreport?isEncrypt=0";
        } else if (z2) {
            str2 = "/api/zysdksd?isEncrypt=0";
        } else {
            str2 = "/api/zysdk?isEncrypt=0";
        }
        return c(str) + str2;
    }
}

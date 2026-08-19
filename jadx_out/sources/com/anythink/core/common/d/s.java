package com.anythink.core.common.d;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.widget.Toast;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdFilter;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATCommonConfig;
import com.anythink.core.api.ATCustomAdapterConfig;
import com.anythink.core.api.ATDebuggerConfig;
import com.anythink.core.api.ATInitConfig;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATNetworkConfig;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSharedPlacementConfig;
import com.anythink.core.api.ATUserDeviceInfo;
import com.anythink.core.api.DeviceInfoCallback;
import com.anythink.core.api.IATAdFilter;
import com.anythink.core.api.IATDeviceRiskListener;
import com.anythink.core.api.IDlHandler;
import com.anythink.core.api.IExHandler;
import com.anythink.core.api.IOdHandler;
import com.anythink.core.api.IOsExHandler;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.bridge.a;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.t;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.cb;
import com.anythink.core.common.v;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ad;
import com.anythink.core.common.v.af;
import com.anythink.core.common.v.ah;
import com.anythink.network.adx.AdxATInitManager;
import com.varbto.utils.api.MediationUtilsManager;
import com.varbto.utils.performance.DevicePerformanceGrader;
import dalvik.system.DexFile;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static final int f2923a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f2924b = 1;

    /* renamed from: n, reason: collision with root package name */
    public static final String f2930n = "mmed_m_a_c";

    /* renamed from: r, reason: collision with root package name */
    private static volatile s f2931r;

    /* renamed from: B, reason: collision with root package name */
    private volatile String f2933B;

    /* renamed from: E, reason: collision with root package name */
    private BroadcastReceiver f2936E;

    /* renamed from: F, reason: collision with root package name */
    private String f2937F;

    /* renamed from: G, reason: collision with root package name */
    private String f2938G;

    /* renamed from: H, reason: collision with root package name */
    private String f2939H;

    /* renamed from: I, reason: collision with root package name */
    private r f2940I;

    /* renamed from: O, reason: collision with root package name */
    private String f2946O;

    /* renamed from: P, reason: collision with root package name */
    private String f2947P;

    /* renamed from: R, reason: collision with root package name */
    private boolean f2949R;

    /* renamed from: X, reason: collision with root package name */
    private com.anythink.core.common.k.e f2955X;

    /* renamed from: Y, reason: collision with root package name */
    private Location f2956Y;
    private boolean aG;
    private volatile String aH;
    private volatile JSONObject aJ;
    private JSONArray aa;
    private List<String> ab;
    private String ad;
    private ATDebuggerConfig ae;
    private boolean af;
    private ConcurrentHashMap<String, IATAdFilter> aj;
    private ATUserDeviceInfo al;
    private cb am;
    private String ap;
    private boolean ar;
    private long as;
    private volatile com.anythink.core.common.m.c.i au;
    private com.anythink.core.common.e.b av;
    private String aw;
    private Pair<Integer, List<String>> ay;
    private Pair<Boolean, com.anythink.core.common.h.n> az;

    /* renamed from: g, reason: collision with root package name */
    IATDeviceRiskListener f2962g;

    /* renamed from: h, reason: collision with root package name */
    WeakReference<Activity> f2963h;

    /* renamed from: o, reason: collision with root package name */
    private int f2964o;

    /* renamed from: s, reason: collision with root package name */
    private Context f2967s;

    /* renamed from: t, reason: collision with root package name */
    private String f2968t;

    /* renamed from: u, reason: collision with root package name */
    private String f2969u;

    /* renamed from: v, reason: collision with root package name */
    private ATNetworkConfig f2970v;

    /* renamed from: w, reason: collision with root package name */
    private String f2971w;

    /* renamed from: z, reason: collision with root package name */
    private ConcurrentHashMap<String, ATCustomAdapterConfig> f2974z;
    private static final Object at = new Object();

    /* renamed from: i, reason: collision with root package name */
    public static final String f2925i = "anr_count";

    /* renamed from: j, reason: collision with root package name */
    public static final String f2926j = "dynamic_score";

    /* renamed from: k, reason: collision with root package name */
    public static final String f2927k = "total_score";

    /* renamed from: l, reason: collision with root package name */
    public static final String f2928l = "is_high_consumption";

    /* renamed from: m, reason: collision with root package name */
    public static final String f2929m = "anr_timestamps";
    private static final String[] aK = {f2925i, f2926j, f2927k, f2928l, f2929m};

    /* renamed from: p, reason: collision with root package name */
    private final String f2965p = "SDK.init";

    /* renamed from: q, reason: collision with root package name */
    private boolean f2966q = false;

    /* renamed from: D, reason: collision with root package name */
    private final Object f2935D = new Object();

    /* renamed from: K, reason: collision with root package name */
    private boolean f2942K = false;

    /* renamed from: L, reason: collision with root package name */
    private boolean f2943L = false;

    /* renamed from: M, reason: collision with root package name */
    private long f2944M = 0;

    /* renamed from: N, reason: collision with root package name */
    private long f2945N = 0;

    /* renamed from: S, reason: collision with root package name */
    private boolean f2950S = false;

    /* renamed from: T, reason: collision with root package name */
    private boolean f2951T = false;

    /* renamed from: U, reason: collision with root package name */
    private final Object f2952U = new Object();

    /* renamed from: V, reason: collision with root package name */
    private boolean f2953V = false;

    /* renamed from: W, reason: collision with root package name */
    private final Object f2954W = new Object();

    /* renamed from: Z, reason: collision with root package name */
    private String f2957Z = "";
    private int ag = 1;
    private boolean ah = false;
    private boolean ai = false;
    private String ak = "";
    private final Object ao = new Object();

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f2958c = false;

    /* renamed from: d, reason: collision with root package name */
    boolean f2959d = false;

    /* renamed from: e, reason: collision with root package name */
    volatile long f2960e = 0;

    /* renamed from: f, reason: collision with root package name */
    volatile long f2961f = 0;
    private int ax = -1;
    private final List<l> aA = new ArrayList();
    private final Map<String, ATAdFilter> aB = new HashMap();
    private final Map<String, ATAdFilter> aC = new HashMap();
    private int aD = -1;
    private int aE = -1;
    private int aF = -1;
    private volatile boolean aI = false;

    /* renamed from: y, reason: collision with root package name */
    private ConcurrentHashMap<String, Map<String, Object>> f2973y = new ConcurrentHashMap<>();

    /* renamed from: x, reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f2972x = new ConcurrentHashMap<>();

    /* renamed from: J, reason: collision with root package name */
    private final String f2941J = File.separator + "anythink.test";

    /* renamed from: Q, reason: collision with root package name */
    private boolean f2948Q = true;
    private ConcurrentHashMap<String, List<String>> ac = new ConcurrentHashMap<>();

    /* renamed from: C, reason: collision with root package name */
    private ConcurrentHashMap<String, String> f2934C = new ConcurrentHashMap<>();
    private long an = System.currentTimeMillis();

    /* renamed from: A, reason: collision with root package name */
    private final Map<String, Boolean> f2932A = new ConcurrentHashMap(2);
    private long aq = System.currentTimeMillis();

    /* renamed from: com.anythink.core.common.d.s$16, reason: invalid class name */
    public class AnonymousClass16 implements Runnable {
        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.o.a().a(s.this.f2967s);
            com.anythink.core.common.a.n.a().b();
            com.anythink.core.common.res.d.a(s.this.g()).a();
            com.anythink.core.common.res.d.a(s.this.g());
            com.anythink.core.common.res.d.b();
        }
    }

    /* renamed from: com.anythink.core.common.d.s$17, reason: invalid class name */
    public class AnonymousClass17 implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f2988a;

        public AnonymousClass17(Context context) {
            this.f2988a = context;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public final void onFail(String str) {
            s.this.a("There is a problem with the integrated resources of AnyThink SDK, please check whether you have followed the steps of the integration document.", true, 3, str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public final void onSuccess() {
            com.anythink.core.bridge.a.b.a().a(this.f2988a);
        }
    }

    /* renamed from: com.anythink.core.common.d.s$3, reason: invalid class name */
    public class AnonymousClass3 extends BroadcastReceiver {
        public AnonymousClass3() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(final Context context, final Intent intent) {
            s.a(new Runnable() { // from class: com.anythink.core.common.d.s.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (com.anythink.core.common.v.p.a(context)) {
                        com.anythink.core.common.s.a().b();
                    }
                    s.this.c(context);
                    if (TextUtils.equals(intent.getAction(), i.f2491A)) {
                        com.anythink.core.common.u.f.a(intent.getStringExtra(i.f2492B));
                    }
                }
            });
            try {
                if (s.this.f2940I != null) {
                    s.this.f2940I.resetSSID();
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: com.anythink.core.common.d.s$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f2997a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f2998b;

        public AnonymousClass4(Context context, String str) {
            this.f2997a = context;
            this.f2998b = str;
        }

        @Override // java.lang.Runnable
        public final void run() throws JSONException {
            s.this.c(this.f2997a.getApplicationContext());
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f2997a.getApplicationContext()).b(this.f2998b);
            if (bVarB != null) {
                if (!bVarB.J()) {
                    com.anythink.core.common.q.a(s.this.f2967s).a(bVarB);
                    com.anythink.core.common.c.b.a().a(bVarB.ap());
                    com.anythink.core.common.c.a().b(bVarB.i());
                    com.anythink.core.a.b.a(this.f2997a.getApplicationContext()).a(bVarB.at());
                    s.b().H();
                    s.b().a(bVarB);
                    com.anythink.core.common.v.e.a().a(bVarB.f());
                    r rVarC = s.this.c();
                    if (rVarC != null) {
                        rVarC.uploadAegisData(bVarB);
                    }
                    com.anythink.core.common.l.a(this.f2997a.getApplicationContext()).a(bVarB.aJ());
                }
                s.this.b(bVarB);
                v.a().a(bVarB.g());
                if (TextUtils.isEmpty(com.anythink.core.e.d.a(this.f2997a.getApplicationContext()).a(this.f2998b))) {
                    com.anythink.core.e.d.a(this.f2997a.getApplicationContext());
                }
                com.anythink.core.common.o.e.a().a(bVarB);
            }
        }
    }

    /* renamed from: com.anythink.core.common.d.s$8, reason: invalid class name */
    public class AnonymousClass8 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ATInitConfig f3012a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f3013b;

        public AnonymousClass8(ATInitConfig aTInitConfig, Context context) {
            this.f3012a = aTInitConfig;
            this.f3013b = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Map<String, Object> requestParamMap;
            try {
                ATInitMediation initMediation = this.f3012a.getInitMediation();
                if (initMediation != null) {
                    String strC = ad.c(s.this.f2967s, t.b.f3064g, initMediation.getNetworkName(), "");
                    if (TextUtils.isEmpty(strC)) {
                        requestParamMap = this.f3012a.getRequestParamMap();
                        requestParamMap.put(ATInitMediation.KEY_LOCAL, Boolean.TRUE);
                    } else {
                        requestParamMap = com.anythink.core.common.v.p.c(strC);
                    }
                    try {
                        initMediation.setUserDataConsent(this.f3013b, u.a(this.f3013b).c(), u.a(this.f3013b).d());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f3013b).b(s.this.f2968t);
                    boolean z2 = false;
                    requestParamMap.put("app_ccpa_switch", Boolean.valueOf(bVarB.s() == 3));
                    boolean zB = com.anythink.core.common.v.o.b();
                    if (bVarB.t() == 2 && zB) {
                        z2 = true;
                    }
                    requestParamMap.put("app_coppa_switch", Boolean.valueOf(z2));
                    if (s.b().G()) {
                        new JSONObject(requestParamMap).toString();
                    }
                    initMediation.initSDK(s.this.f2967s, requestParamMap, null);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    /* renamed from: com.anythink.core.common.d.s$9, reason: invalid class name */
    public class AnonymousClass9 implements DevicePerformanceGrader.PerformanceMonitorCallback {
        public AnonymousClass9() {
        }

        @Override // com.varbto.utils.performance.DevicePerformanceGrader.PerformanceMonitorCallback
        public final void onCpuUpdate(float f2, float f3) {
            s.i(s.this);
        }

        @Override // com.varbto.utils.performance.DevicePerformanceGrader.PerformanceMonitorCallback
        public final void onGpuUpdate(float f2) {
        }

        @Override // com.varbto.utils.performance.DevicePerformanceGrader.PerformanceMonitorCallback
        public final void onMemoryUpdate(float f2) {
        }

        @Override // com.varbto.utils.performance.DevicePerformanceGrader.PerformanceMonitorCallback
        public final void onThermalUpdate(int i2) {
        }
    }

    private s() {
    }

    private void aj() {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cE, new AnonymousClass16()));
    }

    private void ak() {
        com.anythink.core.common.e.a.a();
        com.anythink.core.common.e.b bVarA = com.anythink.core.common.e.a.a(this.f2967s);
        if (bVarA != null) {
            a(bVarA.b(), false, bVarA.a(), bVarA.c());
        }
    }

    private static boolean al() {
        return y();
    }

    private void am() {
        try {
            BroadcastReceiver broadcastReceiver = this.f2936E;
            if (broadcastReceiver != null) {
                this.f2967s.unregisterReceiver(broadcastReceiver);
                m.a(this.f2967s).a(this.f2936E);
            }
            this.f2936E = null;
        } catch (Throwable unused) {
        }
        try {
            this.f2936E = new AnonymousClass3();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addAction(i.f2491A);
            this.f2967s.registerReceiver(this.f2936E, intentFilter);
            m.a(this.f2967s).a(this.f2936E, intentFilter);
        } catch (Throwable unused2) {
        }
    }

    private long an() {
        if (this.f2961f == 0) {
            this.f2961f = ad.b(this.f2967s, t.b.f3058a, t.a.f3053v, 0L);
        }
        return this.f2961f;
    }

    private void ao() {
        boolean zExists = false;
        if (this.f2967s != null) {
            try {
                zExists = new File(this.f2967s.getExternalFilesDir(null), this.f2941J).exists();
                if (!zExists) {
                    zExists = new File(this.f2967s.getFilesDir(), this.f2941J).exists();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        this.f2942K = zExists;
    }

    private boolean ap() {
        return this.f2948Q;
    }

    private long aq() {
        return this.an;
    }

    private static boolean ar() {
        return true;
    }

    private static boolean as() {
        return false;
    }

    private static int at() {
        return 100;
    }

    private void au() {
        Context context;
        if (this.aI || (context = this.f2967s) == null) {
            return;
        }
        try {
            MediationUtilsManager mediationUtilsManager = MediationUtilsManager.getInstance(context);
            mediationUtilsManager.setDebugMode(G());
            if (this.aF < 0) {
                this.aF = mediationUtilsManager.getTotalScore();
            }
            if (this.aE < 0) {
                this.aE = mediationUtilsManager.getDynamicScore();
            }
            if (!this.aG) {
                this.aG = ae();
            }
            mediationUtilsManager.startMonitoring(new AnonymousClass9(), 5000L);
        } catch (Throwable unused) {
        }
    }

    private void av() {
        try {
            this.aE = MediationUtilsManager.getInstance(this.f2967s).getDynamicScore();
            this.aG = MediationUtilsManager.getInstance(this.f2967s).isHighConsumption();
        } catch (Throwable unused) {
        }
    }

    private boolean aw() {
        return this.aI;
    }

    public static s b() {
        if (f2931r == null) {
            synchronized (s.class) {
                try {
                    if (f2931r == null) {
                        f2931r = new s();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2931r;
    }

    private Map<String, Object> v(String str) {
        if (this.f2973y == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f2973y.get(str);
    }

    private String x(String str) throws NoSuchAlgorithmException {
        String str2 = this.f2934C.get(str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strA = com.anythink.core.common.v.n.a(str + r());
        try {
            this.f2934C.put(str, strA);
        } catch (Exception unused) {
        }
        com.anythink.core.common.u.f.a(str, "2", (String) null, String.valueOf(jCurrentTimeMillis));
        return strA;
    }

    public static boolean y() {
        return !b.c().b();
    }

    public final boolean A() {
        return this.af && this.ae != null;
    }

    public final ATDebuggerConfig B() {
        return this.ae;
    }

    public final String C() {
        if (TextUtils.isEmpty(this.f2937F)) {
            String strC = ad.c(this.f2967s, t.b.f3058a, t.a.f3054w, "");
            this.f2937F = strC;
            TextUtils.isEmpty(strC);
        }
        return this.f2937F;
    }

    public final String D() {
        if (TextUtils.isEmpty(this.f2938G)) {
            this.f2938G = ad.c(this.f2967s, t.b.f3063f, t.a.f3018B, "");
        }
        return this.f2938G;
    }

    public final String E() {
        if (TextUtils.isEmpty(this.f2939H)) {
            this.f2939H = ad.c(this.f2967s, t.b.f3063f, t.a.f3019C, "");
        }
        return this.f2939H;
    }

    public final int F() {
        return this.ax;
    }

    public final boolean G() {
        return this.f2942K || this.f2943L;
    }

    public final void H() {
        com.anythink.core.common.h.n nVar;
        try {
            if (this.ay != null) {
                if (this.f2967s == null || TextUtils.isEmpty(this.f2968t)) {
                    com.anythink.core.common.h.n nVar2 = new com.anythink.core.common.h.n();
                    nVar2.N(((Integer) this.ay.first).intValue());
                    Object obj = this.ay.second;
                    if (obj != null) {
                        nVar2.x(((List) obj).toString());
                    }
                    this.az = new Pair<>(Boolean.FALSE, nVar2);
                    return;
                }
                com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f2967s).b(this.f2968t);
                if (bVarB == null) {
                    com.anythink.core.common.h.n nVar3 = new com.anythink.core.common.h.n();
                    nVar3.N(((Integer) this.ay.first).intValue());
                    Object obj2 = this.ay.second;
                    if (obj2 != null) {
                        nVar3.x(((List) obj2).toString());
                    }
                    this.az = new Pair<>(Boolean.FALSE, nVar3);
                    return;
                }
                if (bVarB.d() == 1) {
                    Pair<Boolean, com.anythink.core.common.h.n> pair = this.az;
                    if (pair == null || ((Boolean) pair.first).booleanValue()) {
                        nVar = new com.anythink.core.common.h.n();
                        nVar.N(((Integer) this.ay.first).intValue());
                        Object obj3 = this.ay.second;
                        if (obj3 != null) {
                            nVar.x(((List) obj3).toString());
                        }
                    } else {
                        nVar = (com.anythink.core.common.h.n) this.az.second;
                        this.az = null;
                    }
                    com.anythink.core.common.u.e.a(b().f2967s);
                    com.anythink.core.common.u.e.a(27, nVar);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final Pair<Integer, List<String>> I() {
        return this.ay;
    }

    public final List<String> J() {
        return this.ac.get("forbid_network_firm_list");
    }

    public final boolean K() {
        return this.ah;
    }

    public final boolean L() {
        return this.ai;
    }

    public final Context M() {
        WeakReference<Activity> weakReference = this.f2963h;
        return (weakReference == null || weakReference.get() == null) ? this.f2967s : this.f2963h.get();
    }

    public final Activity N() {
        WeakReference<Activity> weakReference = this.f2963h;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.f2963h.get();
    }

    public final String O() {
        return this.ak;
    }

    public final boolean P() {
        return this.f2950S;
    }

    public final ATUserDeviceInfo Q() {
        return this.al;
    }

    public final cb R() {
        if (this.am == null) {
            this.am = new cb();
        }
        try {
            this.am.a(com.anythink.core.common.v.l.q(b().f2967s));
            this.am.b(com.anythink.core.common.v.l.m());
            this.am.c(com.anythink.core.common.v.l.o());
            this.am.d(com.anythink.core.common.v.l.b(com.anythink.core.common.v.l.n()));
        } catch (Throwable unused) {
        }
        return this.am;
    }

    public final void S() {
        this.an = System.currentTimeMillis();
    }

    public final void T() {
        Context context = this.f2967s;
        if (context == null || this.f2951T) {
            return;
        }
        synchronized (this.f2952U) {
            try {
                if (!this.f2951T) {
                    long jB = ad.b(context, t.b.f3058a, t.a.f3057z, 0L);
                    this.f2944M = jB;
                    if (jB == 0) {
                        long j2 = this.as;
                        this.f2944M = j2;
                        ad.a(context, t.b.f3058a, t.a.f3057z, j2);
                    }
                    this.f2945N = ((a(this.as) - a(this.f2944M)) / 86400000) + 1;
                    com.anythink.core.common.g.c.a().a(context);
                    this.f2951T = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String U() {
        return this.ap;
    }

    public final boolean V() {
        return this.f2959d;
    }

    public final boolean W() {
        return this.ar;
    }

    public final com.anythink.core.common.m.c.i X() {
        if (this.au == null) {
            synchronized (at) {
                try {
                    if (this.au == null) {
                        this.au = new com.anythink.core.common.m.c.g(this.f2967s);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.au;
    }

    public final long Y() {
        return this.as;
    }

    public final Map<String, ATAdFilter> Z() {
        return this.aB;
    }

    public final void aa() {
        this.aB.clear();
    }

    public final int ab() {
        int i2 = this.aD;
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    public final int ac() {
        int i2 = this.aE;
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    public final int ad() {
        int i2 = this.aF;
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    public final boolean ae() {
        if (!this.aI) {
            try {
                return MediationUtilsManager.getInstance(this.f2967s).isHighConsumption();
            } catch (Throwable unused) {
            }
        }
        return this.aG;
    }

    public final String af() {
        return this.aH;
    }

    public final long ag() {
        return this.aq;
    }

    public final JSONObject ah() {
        return this.aJ;
    }

    public final void ai() {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cg, new Runnable() { // from class: com.anythink.core.common.d.s.10
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.s.b.a().b();
            }
        }));
    }

    public final r c() {
        IExHandler iExHandler;
        IDlHandler iDlHandler;
        IOdHandler iOdHandler;
        if (this.f2966q) {
            return this.f2940I;
        }
        synchronized (this.ao) {
            if (this.f2966q) {
                return this.f2940I;
            }
            IOsExHandler iOsExHandler = null;
            try {
                iExHandler = (IExHandler) a((Class<?>) IExHandler.class, i.g.f2645b);
            } catch (Throwable unused) {
                iExHandler = null;
            }
            try {
                iDlHandler = (IDlHandler) a((Class<?>) IDlHandler.class, i.g.f2646c);
            } catch (Throwable unused2) {
                iDlHandler = null;
            }
            try {
                iOdHandler = (IOdHandler) a((Class<?>) IOdHandler.class, i.g.f2647d);
            } catch (Throwable unused3) {
                iOdHandler = null;
            }
            try {
                iOsExHandler = (IOsExHandler) a((Class<?>) IOsExHandler.class, "");
            } catch (Throwable unused4) {
            }
            if (iExHandler != null || iDlHandler != null || iOdHandler != null || iOsExHandler != null) {
                this.f2940I = new r(iExHandler, iDlHandler, iOdHandler, iOsExHandler);
            }
            this.f2966q = true;
            return this.f2940I;
        }
    }

    public final String d() {
        return this.f2971w;
    }

    public final long i() {
        return this.f2945N;
    }

    public final int j() {
        return this.f2964o;
    }

    public final List<String> k() {
        return this.ab;
    }

    public final JSONArray l() {
        return this.aa;
    }

    public final Map<String, Object> m() {
        return this.f2972x;
    }

    public final String n() {
        Object obj = this.f2972x.get("channel");
        return obj != null ? obj.toString() : "";
    }

    public final String o() {
        Object obj = this.f2972x.get("sub_channel");
        return obj != null ? obj.toString() : "";
    }

    public final String p() {
        return this.f2968t;
    }

    public final String q() {
        return this.f2969u;
    }

    public final String r() {
        try {
            if (TextUtils.isEmpty(this.f2933B)) {
                a(this.f2967s, this.f2968t, 0);
            }
        } catch (Exception unused) {
        }
        return this.f2933B;
    }

    public final boolean s() {
        return "1".equals(this.f2957Z);
    }

    public final Location t() {
        return this.f2956Y;
    }

    public final String u() {
        return this.f2957Z;
    }

    public final String w() {
        return this.aw;
    }

    public final boolean z() {
        return this.af;
    }

    private static void i(Context context) {
        if (b().c("ua")) {
            return;
        }
        try {
            if (u.a(context).b()) {
                String strJ = com.anythink.core.common.v.l.j();
                String strC = ad.c(context, t.b.f3058a, t.a.f3050s, "");
                if (TextUtils.isEmpty(strJ) || !Build.VERSION.RELEASE.equals(strC)) {
                    com.anythink.core.common.v.l.n(context);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void j(Context context) {
        JSONObject cnDInfo;
        try {
            com.anythink.core.common.e.b bVar = this.av;
            if (bVar != null) {
                com.anythink.core.common.u.f.a(bVar);
                return;
            }
            int i2 = AdxATInitManager.f9210A;
            Object objInvoke = null;
            try {
                objInvoke = AdxATInitManager.class.getDeclaredMethod("getInstance", null).invoke(null, null);
            } catch (Throwable unused) {
            }
            if (objInvoke instanceof ATInitMediation) {
                ATInitMediation aTInitMediation = (ATInitMediation) objInvoke;
                HashMap map = new HashMap();
                map.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PRECHECK_MODE, 1);
                com.anythink.core.bridge.entity.a aVar = new com.anythink.core.bridge.entity.a();
                aVar.a();
                aVar.a(com.anythink.core.common.v.o.a());
                aVar.b(this.f2968t);
                aVar.c(this.f2969u);
                map.put(a.C0044a.f1719b, com.anythink.core.bridge.c.a(aVar));
                com.anythink.core.bridge.entity.d dVar = new com.anythink.core.bridge.entity.d();
                dVar.a(C());
                r rVarC = c();
                if (rVarC != null && (cnDInfo = rVarC.getCnDInfo()) != null) {
                    String strB = af.b(com.anythink.core.bridge.b.f1767a);
                    String strB2 = af.b(com.anythink.core.bridge.b.f1770d);
                    String strB3 = af.b(com.anythink.core.bridge.b.f1769c);
                    String strB4 = af.b(com.anythink.core.bridge.b.f1768b);
                    dVar.c(cnDInfo.optString(strB));
                    dVar.h(cnDInfo.optString(strB2));
                    dVar.j(cnDInfo.optString(strB3));
                    dVar.i(cnDInfo.optString(strB4));
                }
                dVar.k(com.anythink.core.common.v.l.d(context));
                dVar.d(com.anythink.core.common.v.l.p(context));
                dVar.f(com.anythink.core.common.v.l.I());
                dVar.g(com.anythink.core.common.v.l.J());
                map.put(a.C0044a.f1718a, com.anythink.core.bridge.c.a(dVar));
                String[] strArrF = f();
                if (strArrF != null && strArrF.length > 0) {
                    map.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_DENNY_DEVICE_INFO, strArrF);
                }
                aTInitMediation.initSDK(context, map, new AnonymousClass17(context));
            }
        } catch (Throwable unused2) {
        }
    }

    private boolean k(Context context) {
        String strD = com.anythink.core.common.v.l.d(context);
        if (!TextUtils.isEmpty(strD) && strD.equals(this.ad)) {
            return true;
        }
        String strF = com.anythink.core.common.v.l.f();
        if (!TextUtils.isEmpty(strF) && strF.equals(this.ad)) {
            return true;
        }
        r rVarC = b().c();
        return rVarC != null && rVarC.checkDebuggerDevice(context, this.ad);
    }

    private void l(Context context) {
        long jCurrentTimeMillis = this.f2960e;
        try {
            String strC = ad.c(b().f2967s, t.b.f3058a, b().f2968t + "playRecord", "");
            if (!TextUtils.isEmpty(strC)) {
                JSONObject jSONObject = new JSONObject(strC);
                long jOptLong = jSONObject.optLong("start_time");
                long jOptLong2 = jSONObject.optLong("end_time");
                String strOptString = jSONObject.optString(f.f2470c);
                int iOptInt = jSONObject.optInt(f.f2471d);
                if (jCurrentTimeMillis != 0) {
                    com.anythink.core.common.u.f.a(iOptInt == 1 ? 4 : 2, jOptLong, jOptLong2, strOptString);
                } else {
                    jCurrentTimeMillis = jOptLong;
                }
                ad.b(b().f2967s, t.b.f3058a, b().f2968t + "playRecord", "");
            }
        } catch (Exception unused) {
            ad.b(b().f2967s, t.b.f3058a, b().f2968t + "playRecord", "");
        }
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = ad.b(context, t.b.f3058a, t.a.f3053v, 0L);
        }
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        b.c().a(new f(jCurrentTimeMillis));
    }

    @Deprecated
    private void w(String str) {
        this.ad = str;
    }

    private static boolean y(String str) {
        String strA = com.anythink.core.common.v.o.a();
        boolean z2 = !TextUtils.isEmpty(str) && str.startsWith(strA);
        if (!z2) {
            Log.e("anythink", String.format("Adapter Version: The current Adapter version(%s) does not apply to the SDK version(%s).", str, strA));
        }
        return z2;
    }

    private static void z(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e("anythink", "AdSourceId is empty");
            return;
        }
        try {
            if (Long.parseLong(str) == 0) {
                Log.e("anythink", "AdSourceId can't set 0");
            }
        } catch (Exception unused) {
            Log.e("anythink", "AdSourceId '" + str + "' is not compliant");
        }
    }

    public final Map<String, Object> d(String str) {
        Object obj;
        Object obj2;
        HashMap map = new HashMap();
        Map<String, Object> map2 = this.f2973y.get(str);
        ConcurrentHashMap<String, Object> concurrentHashMap = this.f2972x;
        if (concurrentHashMap != null) {
            com.anythink.core.common.v.i.a(map, concurrentHashMap);
        }
        if (map2 != null) {
            com.anythink.core.common.v.i.a(map, map2);
        }
        map.remove("channel");
        map.remove("sub_channel");
        if (map2 != null) {
            obj = map2.get("channel");
            obj2 = map2.get("sub_channel");
        } else {
            obj = null;
            obj2 = null;
        }
        if (obj == null) {
            obj = this.f2972x.get("channel");
        }
        if (obj2 == null) {
            obj2 = this.f2972x.get("sub_channel");
        }
        if (obj != null) {
            map.put("channel", obj);
        }
        if (obj2 != null) {
            map.put("sub_channel", obj2);
        }
        return map;
    }

    public final int e() {
        return this.ag;
    }

    public final String[] f() {
        synchronized (this.f2932A) {
            Set<String> setKeySet = this.f2932A.keySet();
            int size = setKeySet.size();
            if (size <= 0) {
                return null;
            }
            String[] strArr = new String[size];
            setKeySet.toArray(strArr);
            return strArr;
        }
    }

    public final Context g() {
        return this.f2967s;
    }

    public final long h() {
        return this.f2944M;
    }

    public final List<String> m(String str) {
        return this.ac.get(str);
    }

    public final List<String> p(String str) {
        return this.ac.get(str + "_network_firm_f_s");
    }

    public final IATAdFilter q(String str) {
        ConcurrentHashMap<String, IATAdFilter> concurrentHashMap;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = this.aj) == null) {
            return null;
        }
        return concurrentHashMap.get(str);
    }

    public final void s(String str) {
        if (G()) {
            "setBundleName: ".concat(String.valueOf(str));
        }
        this.ap = str;
    }

    public final void t(String str) {
        if (TextUtils.isEmpty(str) || this.aB.isEmpty()) {
            return;
        }
        this.aB.remove(str);
    }

    public final ATAdFilter u(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.aC.get(str);
    }

    private synchronized void h(final Context context) {
        Context context2;
        if (context == null) {
            return;
        }
        this.f2967s = context.getApplicationContext();
        com.anythink.core.common.u.a.a.a().d();
        if (!TextUtils.isEmpty(this.f2968t) && !TextUtils.isEmpty(this.f2969u)) {
            if (this.f2949R) {
                return;
            }
            this.f2949R = true;
            try {
                final Context applicationContext = context.getApplicationContext();
                try {
                    if (!this.aI && (context2 = this.f2967s) != null) {
                        MediationUtilsManager mediationUtilsManager = MediationUtilsManager.getInstance(context2);
                        mediationUtilsManager.setDebugMode(G());
                        if (this.aF < 0) {
                            this.aF = mediationUtilsManager.getTotalScore();
                        }
                        if (this.aE < 0) {
                            this.aE = mediationUtilsManager.getDynamicScore();
                        }
                        if (!this.aG) {
                            this.aG = ae();
                        }
                        mediationUtilsManager.startMonitoring(new AnonymousClass9(), 5000L);
                    }
                } catch (Throwable unused) {
                }
                this.ah = com.anythink.core.common.v.p.a();
                try {
                    BroadcastReceiver broadcastReceiver = this.f2936E;
                    if (broadcastReceiver != null) {
                        this.f2967s.unregisterReceiver(broadcastReceiver);
                        m.a(this.f2967s).a(this.f2936E);
                    }
                    this.f2936E = null;
                } catch (Throwable unused2) {
                }
                try {
                    this.f2936E = new AnonymousClass3();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                    intentFilter.addAction(i.f2491A);
                    this.f2967s.registerReceiver(this.f2936E, intentFilter);
                    m.a(this.f2967s).a(this.f2936E, intentFilter);
                } catch (Throwable unused3) {
                }
                a(new Runnable() { // from class: com.anythink.core.common.d.s.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            s.this.T();
                            s.this.r();
                            s.b(s.this, context);
                            j.a(applicationContext).a();
                            s.d(s.this);
                        } catch (Exception unused4) {
                        }
                    }
                });
                a(new Runnable() { // from class: com.anythink.core.common.d.s.13
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.this.v();
                        s.f(applicationContext);
                        if (!TextUtils.isEmpty(s.this.ad)) {
                            String strP = com.anythink.core.common.v.l.p(s.this.f2967s);
                            if (!TextUtils.isEmpty(strP)) {
                                s.this.h(strP);
                            }
                        }
                        s sVar = s.this;
                        s.c(sVar, sVar.f2967s);
                    }
                });
                b.c().a(new g(y()));
                a(new Runnable() { // from class: com.anythink.core.common.d.s.14
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.this.c();
                        if (s.this.f2940I != null) {
                            s.this.f2940I.initDeviceInfo(context);
                            s.this.f2940I.cleanExpiredInfo();
                        }
                    }
                });
                a(new AnonymousClass4(context, this.f2968t));
                a(new Runnable() { // from class: com.anythink.core.common.d.s.15
                    @Override // java.lang.Runnable
                    public final void run() {
                        s sVar = s.this;
                        s.a(sVar, sVar.f2967s, s.this.f2970v);
                    }
                });
            } catch (Exception e2) {
                Log.e("SDK.init", "init failed: " + e2.getMessage());
            }
        }
    }

    private static void m(Context context) {
        com.anythink.core.common.g.c.a().a(context);
    }

    public final boolean a() {
        return this.f2949R;
    }

    public final void e(String str) {
        this.f2946O = str;
        this.f2972x.put("channel", str);
    }

    public final String g(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = this.f2934C.get(str);
        return !TextUtils.isEmpty(str2) ? str2 : x(str);
    }

    public final List<String> n(String str) {
        return this.ac.get(str + "_network_firm");
    }

    public final List<String> o(String str) {
        return this.ac.get(str + "_network_firm_a_s");
    }

    public final void v() {
        try {
            com.anythink.core.common.v.l.a(this.f2967s);
            com.anythink.core.common.v.l.o(this.f2967s);
        } catch (Exception unused) {
        }
        if (G()) {
            String strD = com.anythink.core.common.v.l.d(this.f2967s);
            com.anythink.core.common.v.o.a();
            com.anythink.core.common.v.l.p(this.f2967s);
            com.anythink.core.common.v.l.H();
            com.anythink.core.common.v.o.a();
            TextUtils.isEmpty(strD);
        }
    }

    private static Object a(Class<?> cls, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                return declaredConstructor.newInstance(null);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private void n(Context context) {
        long jB = ad.b(context, t.b.f3058a, t.a.f3057z, 0L);
        this.f2944M = jB;
        if (jB == 0) {
            long j2 = this.as;
            this.f2944M = j2;
            ad.a(context, t.b.f3058a, t.a.f3057z, j2);
        }
        this.f2945N = ((a(this.as) - a(this.f2944M)) / 86400000) + 1;
    }

    public static boolean e(Context context, List<String> list) {
        int size;
        boolean z2 = true;
        if (list == null || (size = list.size()) == 0) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                for (int i2 = 0; i2 < size; i2++) {
                    String str = list.get(i2);
                    int length = strArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            if (TextUtils.equals(str, strArr[i3])) {
                                break;
                            }
                            i3++;
                        } else {
                            if (sb.length() == 0) {
                                sb.append(str);
                            } else {
                                sb.append(", ");
                                sb.append(str);
                            }
                            z2 = false;
                        }
                    }
                }
                z3 = z2;
            } else {
                for (int i4 = 0; i4 < size; i4++) {
                    String str2 = list.get(i4);
                    if (i4 == 0) {
                        sb.append(str2);
                    } else {
                        sb.append(", ");
                        sb.append(str2);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!z3) {
            Log.e("anythink", "Permission: Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z3;
    }

    public final void r(String str) {
        this.ak = str;
    }

    public final ATCustomAdapterConfig b(String str) {
        if (this.f2974z == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f2974z.get(str);
    }

    private void g(Context context) {
        int iA = com.anythink.core.common.v.p.a(context, "common_custom_pg", "string");
        if (iA > 0) {
            this.aw = context.getResources().getString(iA);
        }
    }

    public static boolean i(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void x() {
        if (!this.f2959d) {
            Log.e("anythink", "Please exec ATSDK.init before ATSDK.start");
        } else {
            a(new Runnable() { // from class: com.anythink.core.common.d.s.2
                @Override // java.lang.Runnable
                public final void run() {
                    r rVarC = s.b().c();
                    if (rVarC != null) {
                        rVarC.startUpDateUPID(s.this.f2967s);
                    }
                }
            });
        }
    }

    private void b(String str, String str2) {
        this.f2968t = str;
        this.f2969u = str2;
    }

    public static /* synthetic */ void i(s sVar) {
        try {
            sVar.aE = MediationUtilsManager.getInstance(sVar.f2967s).getDynamicScore();
            sVar.aG = MediationUtilsManager.getInstance(sVar.f2967s).isHighConsumption();
        } catch (Throwable unused) {
        }
    }

    public final void a(String str) {
        this.f2971w = str;
    }

    public final synchronized void a(String str, ATCustomAdapterConfig aTCustomAdapterConfig) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (this.f2974z == null) {
                this.f2974z = new ConcurrentHashMap<>();
            }
            if (aTCustomAdapterConfig == null) {
                this.f2974z.remove(str);
            } else {
                this.f2974z.put(str, aTCustomAdapterConfig);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void f(String str) {
        this.f2947P = str;
        this.f2972x.put("sub_channel", str);
    }

    public final void k(String str) {
        this.f2939H = str;
        ad.b(this.f2967s, t.b.f3063f, t.a.f3019C, str);
    }

    public final void b(int i2) {
        this.f2964o = i2;
    }

    private void b(Context context, String str) {
        a(new AnonymousClass4(context, str));
    }

    private void f(boolean z2) {
        this.ah = z2;
    }

    public static /* synthetic */ void f(Context context) {
        if (b().c("ua")) {
            return;
        }
        try {
            if (u.a(context).b()) {
                String strJ = com.anythink.core.common.v.l.j();
                String strC = ad.c(context, t.b.f3058a, t.a.f3050s, "");
                if (TextUtils.isEmpty(strJ) || !Build.VERSION.RELEASE.equals(strC)) {
                    com.anythink.core.common.v.l.n(context);
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void b(final Context context) {
        if (G()) {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cF, new Runnable() { // from class: com.anythink.core.common.d.s.5
                @Override // java.lang.Runnable
                public final void run() {
                    Object objInvoke;
                    boolean zC;
                    AnonymousClass5 anonymousClass5 = this;
                    try {
                        Class.forName("android.support.v4.content.LocalBroadcastManager");
                    } catch (Throwable unused) {
                    }
                    try {
                        if (!com.anythink.core.common.v.p.a()) {
                            Log.e("anythink", "isCleartextTrafficPermitted=false, please check whether the \"android:networkSecurityConfig\" configuration in the AndroidManifest.xml of the application module is correct");
                        }
                    } catch (Throwable unused2) {
                    }
                    try {
                        ArrayList arrayList = new ArrayList();
                        Enumeration<String> enumerationEntries = new DexFile(context.getPackageCodePath()).entries();
                        while (enumerationEntries.hasMoreElements()) {
                            String strNextElement = enumerationEntries.nextElement();
                            if (strNextElement.contains("com.anythink.network") && strNextElement.contains("InitManager") && !strNextElement.contains("$")) {
                                arrayList.add(strNextElement);
                            }
                        }
                        arrayList.size();
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            try {
                                Class<?> cls = Class.forName((String) obj);
                                objInvoke = null;
                                try {
                                    objInvoke = cls.getDeclaredMethod("getInstance", null).invoke(null, null);
                                } catch (Throwable unused3) {
                                    Log.e("anythink", "Cannot instantiate " + cls.getName() + ", please check if a third-party SDK is imported");
                                }
                            } catch (Throwable unused4) {
                            }
                            if (objInvoke != null) {
                                if (objInvoke instanceof ATInitMediation) {
                                    ATInitMediation aTInitMediation = (ATInitMediation) objInvoke;
                                    String networkName = aTInitMediation.getNetworkName();
                                    if (!TextUtils.isEmpty(networkName)) {
                                        if (TextUtils.isEmpty(aTInitMediation.getNetworkVersion())) {
                                            "NetworkName: ".concat(String.valueOf(networkName));
                                        }
                                        boolean zI = s.i(aTInitMediation.getNetworkSDKClass());
                                        boolean zB = s.b(aTInitMediation.getPluginClassStatus());
                                        boolean zA = s.a(context, (List<String>) aTInitMediation.getActivityStatus());
                                        boolean zB2 = s.b(context, (List<String>) aTInitMediation.getServiceStatus());
                                        boolean zC2 = s.c(context, (List<String>) aTInitMediation.getProviderStatus());
                                        boolean zD = s.d(context, (List<String>) aTInitMediation.getMetaValutStatus());
                                        boolean zE = s.e(context, (List<String>) aTInitMediation.getPermissionStatus());
                                        String strA = s.this.a(context, aTInitMediation.getResourceStatus(), aTInitMediation.getDevBundleName());
                                        boolean zIsEmpty = TextUtils.isEmpty(strA);
                                        if (!zIsEmpty) {
                                            Log.e("anythink", "Resource: The " + strA + " resources are missing. If shrinkResources is enabled, the " + strA + " resources must be added to the whitelist (keep.xml)");
                                        }
                                        try {
                                            zC = s.c(aTInitMediation.getAdapterBridgeVersion());
                                        } catch (Throwable unused5) {
                                            zC = true;
                                        }
                                        if (!(zI && zB && zA && zB2 && zC2 && zD && zE && zIsEmpty && zC)) {
                                            Log.e("anythink", "Status: Fail");
                                        }
                                    }
                                }
                            }
                            anonymousClass5 = this;
                        }
                    } catch (Exception unused6) {
                    }
                }
            }));
        }
    }

    public final boolean c(String str) {
        boolean zContainsKey;
        synchronized (this.f2932A) {
            zContainsKey = this.f2932A.containsKey(str);
        }
        return zContainsKey;
    }

    public static boolean b(Map<String, Boolean> map) {
        boolean z2 = true;
        if (map == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            if (!map.get(str).booleanValue()) {
                sb.append(", ");
                sb.append(str);
                z2 = false;
            }
        }
        if (sb.length() > 2) {
            sb.delete(0, 2);
        }
        if (z2) {
            return z2;
        }
        Log.e("anythink", "Dependence Plugin: Missing ".concat(String.valueOf(sb)));
        return z2;
    }

    public static boolean d(Context context, List<String> list) {
        boolean z2 = true;
        if (list == null || list.size() == 0) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str = list.get(i2);
                if (TextUtils.isEmpty(applicationInfo.metaData.getString(str))) {
                    sb.append(", \"");
                    sb.append(str);
                    sb.append("\"");
                    z2 = false;
                }
            }
            if (sb.length() > 2) {
                sb.delete(0, 2);
            }
            z3 = z2;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!z3) {
            Log.e("anythink", "meta-data: Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z3;
    }

    public static boolean c(Context context, List<String> list) {
        PackageInfo packageInfo;
        boolean z2 = true;
        if (list == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 8);
        } catch (Throwable th) {
            sb.append(", error: ");
            sb.append(th.getMessage());
            packageInfo = null;
            z2 = false;
        }
        if (packageInfo == null) {
            return false;
        }
        ProviderInfo[] providerInfoArr = packageInfo.providers;
        for (String str : list) {
            int length = providerInfoArr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    if (TextUtils.equals(providerInfoArr[i2].name, str)) {
                        break;
                    }
                    i2++;
                } else {
                    sb.append(", ");
                    sb.append(str);
                    z2 = false;
                    break;
                }
            }
        }
        if (sb.length() > 2) {
            sb.delete(0, 2);
        }
        if (!z2) {
            Log.e("anythink", "Providers : Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z2;
    }

    public final void a(int i2) {
        if (i2 == 2) {
            this.ag = 2;
        } else {
            this.ag = 1;
        }
    }

    public final void a(String... strArr) {
        synchronized (this.f2932A) {
            try {
                if (strArr != null) {
                    for (String str : strArr) {
                        this.f2932A.put(str, Boolean.TRUE);
                    }
                } else {
                    this.f2932A.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final long e(int i2) {
        if (i2 != 1 && i2 != 4 && i2 != 5) {
            return 26214400L;
        }
        com.anythink.core.e.d.a(this.f2967s);
        return com.anythink.core.e.d.b() * 1024;
    }

    public static boolean b(Context context, List<String> list) {
        boolean z2 = true;
        if (list == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        PackageManager packageManager = context.getPackageManager();
        for (String str : list) {
            try {
            } catch (Throwable th) {
                sb.append(", error: ");
                sb.append(th.getMessage());
            }
            if (packageManager.queryIntentServices(new Intent(context, Class.forName(str)), 131072).size() <= 0) {
                sb.append(", ");
                sb.append(str);
                z2 = false;
            }
        }
        if (sb.length() > 2) {
            sb.delete(0, 2);
        }
        if (!z2) {
            Log.e("anythink", "Services : Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z2;
    }

    public final void e(boolean z2) {
        this.ar = z2;
        try {
            synchronized (this.aA) {
                try {
                    if (!this.aA.isEmpty()) {
                        for (l lVar : this.aA) {
                            if (lVar != null) {
                                lVar.a(z2);
                            }
                        }
                    }
                } finally {
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void a(Context context) {
        if (context == null) {
            return;
        }
        this.f2967s = context;
    }

    public final void a(Map<String, Object> map) {
        String string;
        String string2 = "";
        if (map != null && map.containsKey("channel")) {
            Object obj = map.get("channel");
            if (obj == null) {
                string = "";
            } else {
                string = obj.toString();
            }
            this.f2946O = string;
            if (!com.anythink.core.common.v.o.a(string)) {
                this.f2946O = null;
                map.remove("channel");
            }
        }
        if (map != null && map.containsKey("sub_channel")) {
            Object obj2 = map.get("sub_channel");
            if (obj2 != null) {
                string2 = obj2.toString();
            }
            this.f2947P = string2;
            if (!com.anythink.core.common.v.o.b(string2)) {
                this.f2947P = null;
                map.remove("sub_channel");
            }
        }
        this.f2972x.clear();
        if (map != null) {
            com.anythink.core.common.v.i.a(this.f2972x, map);
        }
        if (!TextUtils.isEmpty(this.f2946O)) {
            this.f2972x.put("channel", this.f2946O);
        }
        if (TextUtils.isEmpty(this.f2947P)) {
            return;
        }
        this.f2972x.put("sub_channel", this.f2947P);
    }

    public static void e(Context context) {
        b().h(context);
        b().b(com.anythink.core.e.d.a());
    }

    public final void l(String str) {
        ad.b(this.f2967s, t.b.f3058a, t.a.f3054w, str);
        this.f2937F = str;
    }

    public static boolean c(int i2) {
        try {
            int requireAdapterBridgeVersion = ATSDK.getRequireAdapterBridgeVersion();
            if (i2 == requireAdapterBridgeVersion) {
                return true;
            }
            Log.e("anythink", String.format("Adapter Bridge Version: The current Adapter Bridge version(%s) does not apply to the SDK Require version(%s).", Integer.valueOf(i2), Integer.valueOf(requireAdapterBridgeVersion)));
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private void e(String str, List<ATAdInfo> list) {
        com.anythink.core.e.o oVarA;
        com.anythink.core.e.m mVarF;
        try {
            Context context = this.f2967s;
            if (context == null || (oVarA = com.anythink.core.e.o.a(context)) == null || (mVarF = oVarA.f(str)) == null) {
                return;
            }
            com.anythink.core.common.f fVarA = com.anythink.core.common.f.a(this.f2967s, str, String.valueOf(mVarF.ap()));
            if (fVarA != null) {
                fVarA.a(list);
            }
        } catch (Exception unused) {
        }
    }

    private boolean b(Context context, List<String> list, String str) {
        String strA = a(context, list, str);
        boolean zIsEmpty = TextUtils.isEmpty(strA);
        if (zIsEmpty) {
            return zIsEmpty;
        }
        Log.e("anythink", "Resource: The " + strA + " resources are missing. If shrinkResources is enabled, the " + strA + " resources must be added to the whitelist (keep.xml)");
        return zIsEmpty;
    }

    public final void d(Context context) {
        r rVarC;
        String strA = com.anythink.core.e.d.a(context).a(this.f2968t);
        if (!TextUtils.isEmpty(strA)) {
            com.anythink.core.e.d.a(context).a(this.f2968t, this.f2969u, strA);
        }
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(context).b(this.f2968t);
        if (bVarB == null || (rVarC = b().c()) == null) {
            return;
        }
        rVarC.startRefreshes(bVarB.a());
    }

    public final void c(Context context) {
        d(context);
    }

    public static void c(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().b(runnable);
    }

    public static void b(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().a(runnable);
    }

    public final void c(boolean z2) {
        this.f2948Q = z2;
    }

    public static void b(Runnable runnable, long j2) {
        if (j2 > 0) {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cD, runnable), j2);
        } else {
            runnable.run();
        }
    }

    public final void c(String str, List<String> list) {
        if (G()) {
            String.format("setAllowedShowNetworkFimIdList, placementId=%s, allowShowList=%s", str, list);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.ac.remove(str + "_network_firm_f_s");
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() == 0) {
            this.ac.remove(str + "_network_firm_a_s");
            return;
        }
        this.ac.put(str + "_network_firm_a_s", arrayList);
    }

    public final void b(boolean z2) {
        this.f2943L = z2;
    }

    public final void d(int i2) {
        this.ax = i2;
    }

    public final void b(String str, List<String> list) {
        if (G()) {
            String.format("setFilterNetworkFirmIdList, placementId=%s, networkFilmIdList=%s", str, list);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (list == null) {
            this.ac.remove(str + "_network_firm");
            return;
        }
        this.ac.put(str + "_network_firm", list);
    }

    public final void d(String str, List<String> list) {
        if (G()) {
            String.format("setForbidShowNetworkFirmIdList, placementId=%s, ForbidShowList=%s", str, list);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.ac.remove(str + "_network_firm_a_s");
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() == 0) {
            this.ac.remove(str + "_network_firm_f_s");
            return;
        }
        this.ac.put(str + "_network_firm_f_s", arrayList);
    }

    public final void j(String str) {
        this.f2938G = str;
        ad.b(this.f2967s, t.b.f3063f, t.a.f3018B, str);
    }

    public final void a(String str, Map<String, Object> map) {
        if (map != null) {
            this.f2973y.put(str, map);
        }
    }

    public final void b(List<String> list) {
        if (G()) {
            String.format("setForbidNetworkFirmIdList, ForbidList=%s", list);
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    arrayList.add(str);
                }
            }
        }
        if (arrayList.size() == 0) {
            this.ac.remove("forbid_network_firm_list");
        } else {
            this.ac.put("forbid_network_firm_list", arrayList);
        }
    }

    public final void a(List<String> list) {
        try {
            this.ab = list;
            if (list != null && !list.isEmpty()) {
                this.aa = new JSONArray((Collection) list);
            } else {
                this.aa = null;
            }
        } catch (Exception unused) {
        }
    }

    public final void c(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        if (map.containsKey("mmed_m_a_c")) {
            Object obj = map.get("mmed_m_a_c");
            if (obj instanceof JSONObject) {
                this.aJ = (JSONObject) obj;
            }
        }
        for (String str : aK) {
            if (!map.containsKey(str)) {
                return;
            }
        }
        if (map.containsKey(f2925i)) {
            Object obj2 = map.get(f2925i);
            if (obj2 instanceof Integer) {
                this.aD = ((Integer) obj2).intValue();
            }
        }
        if (map.containsKey(f2926j)) {
            Object obj3 = map.get(f2926j);
            if (obj3 instanceof Integer) {
                this.aE = ((Integer) obj3).intValue();
            }
        }
        if (map.containsKey(f2927k)) {
            Object obj4 = map.get(f2927k);
            if (obj4 instanceof Integer) {
                this.aF = ((Integer) obj4).intValue();
            }
        }
        if (map.containsKey(f2928l)) {
            Object obj5 = map.get(f2928l);
            if (obj5 instanceof Boolean) {
                this.aG = ((Boolean) obj5).booleanValue();
            }
        }
        if (map.containsKey(f2929m)) {
            Object obj6 = map.get(f2929m);
            if (obj6 instanceof String) {
                this.aH = (String) obj6;
            }
        }
        this.aI = true;
    }

    public final void h(String str) {
        if (TextUtils.isEmpty(this.ad)) {
            return;
        }
        if (TextUtils.equals(str, this.ad)) {
            this.af = true;
        }
        if (this.af) {
            G();
        }
    }

    public final synchronized void a(Location location) {
        this.f2956Y = location;
    }

    public final void d(boolean z2) {
        this.ai = z2;
    }

    public static /* synthetic */ void d(s sVar) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cE, sVar.new AnonymousClass16()));
    }

    public final synchronized void a(boolean z2) {
        try {
            this.f2957Z = z2 ? "1" : "2";
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(final Context context, String str, String str2, ATNetworkConfig aTNetworkConfig) {
        try {
            if (this.f2959d) {
                return;
            }
            this.f2959d = true;
            this.f2967s = context.getApplicationContext();
            if (context instanceof Activity) {
                a((Activity) context);
            }
            this.f2970v = aTNetworkConfig;
            try {
                this.as = System.currentTimeMillis();
                this.f2960e = 0L;
                a(this.f2967s);
                this.f2968t = str;
                this.f2969u = str2;
                com.anythink.core.common.u.a.a.a().d();
                b.c().a((Application) this.f2967s);
            } catch (Throwable unused) {
            }
            a(new Runnable() { // from class: com.anythink.core.common.d.s.1
                @Override // java.lang.Runnable
                public final void run() {
                    r rVarC = s.b().c();
                    if (rVarC != null) {
                        rVarC.startPlugin(s.this.f2967s);
                    }
                }
            });
            a(new Runnable() { // from class: com.anythink.core.common.d.s.11
                @Override // java.lang.Runnable
                public final void run() {
                    s.a(s.this, context);
                    s.b(s.this);
                    com.anythink.core.common.a.h.a(context).a();
                    com.anythink.core.common.s.b bVarA = com.anythink.core.common.s.b.a();
                    Context context2 = context;
                    String[] strArr = {t.b.f3058a, t.b.f3060c, t.b.f3064g, t.b.f3065h, t.b.f3066i, t.b.f3067j, t.b.f3068k, "anythink_app_pl_cl_retry", t.b.f3061d};
                    for (int i2 = 0; i2 < 9; i2++) {
                        com.anythink.core.common.s.a aVarB = bVarA.b(context2, strArr[i2]);
                        if (aVarB instanceof com.anythink.core.common.s.b.e) {
                            ((com.anythink.core.common.s.b.e) aVarB).d();
                        }
                    }
                    s.c(s.this);
                }
            });
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b(l lVar) {
        if (lVar != null) {
            try {
                synchronized (this.aA) {
                    this.aA.remove(lVar);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void b(String str, ATAdFilter aTAdFilter) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.aC.put(str, aTAdFilter);
    }

    public final void b(com.anythink.core.e.b bVar) {
        if (this.f2953V) {
            return;
        }
        synchronized (this.f2954W) {
            try {
                if (!this.f2953V) {
                    c(bVar);
                    this.f2953V = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void b(long j2) {
        this.aq = j2;
    }

    public static /* synthetic */ void b(s sVar) {
        boolean zExists = false;
        if (sVar.f2967s != null) {
            try {
                zExists = new File(sVar.f2967s.getExternalFilesDir(null), sVar.f2941J).exists();
                if (!zExists) {
                    zExists = new File(sVar.f2967s.getFilesDir(), sVar.f2941J).exists();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        sVar.f2942K = zExists;
    }

    public static void a(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cG, runnable));
    }

    public static /* synthetic */ void b(s sVar, Context context) {
        long jCurrentTimeMillis = sVar.f2960e;
        try {
            String strC = ad.c(b().f2967s, t.b.f3058a, b().f2968t + "playRecord", "");
            if (!TextUtils.isEmpty(strC)) {
                JSONObject jSONObject = new JSONObject(strC);
                long jOptLong = jSONObject.optLong("start_time");
                long jOptLong2 = jSONObject.optLong("end_time");
                String strOptString = jSONObject.optString(f.f2470c);
                int iOptInt = jSONObject.optInt(f.f2471d);
                if (jCurrentTimeMillis != 0) {
                    com.anythink.core.common.u.f.a(iOptInt == 1 ? 4 : 2, jOptLong, jOptLong2, strOptString);
                } else {
                    jCurrentTimeMillis = jOptLong;
                }
                ad.b(b().f2967s, t.b.f3058a, b().f2968t + "playRecord", "");
            }
        } catch (Exception unused) {
            ad.b(b().f2967s, t.b.f3058a, b().f2968t + "playRecord", "");
        }
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = ad.b(context, t.b.f3058a, t.a.f3053v, 0L);
        }
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        b.c().a(new f(jCurrentTimeMillis));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, boolean z2, int i2, String str2) {
        if (ATCommonConfig.isShowInitErrorTips) {
            Log.e("anythink", str);
            a(new Runnable() { // from class: com.anythink.core.common.d.s.18
                @Override // java.lang.Runnable
                public final void run() {
                    if (s.this.f2967s != null) {
                        Toast.makeText(s.this.f2967s, str, 1).show();
                    }
                }
            }, 500L);
        }
        if (z2) {
            com.anythink.core.common.u.f.a(new com.anythink.core.common.e.b(i2, str, str2));
        } else {
            this.av = new com.anythink.core.common.e.b(i2, str, str2);
        }
    }

    public static void c(com.anythink.core.e.b bVar) {
        if (bVar == null) {
            return;
        }
        b().a(bVar.aV());
        com.anythink.core.common.b.f.a().f();
        com.anythink.core.common.v.b.c.a().a(com.anythink.core.common.b.e.a(bVar.aX()));
        com.anythink.core.common.b.f.a().k();
    }

    public final void a(Context context, String str, ATDebuggerConfig aTDebuggerConfig) {
        r rVarC;
        if (context == null) {
            if (G()) {
                Log.e("SDK.init", "setDebuggerConfig fail, because context is null.");
                return;
            }
            return;
        }
        if (b().f2967s == null) {
            b().a(context.getApplicationContext());
        }
        this.ad = str;
        this.ae = aTDebuggerConfig;
        String strD = com.anythink.core.common.v.l.d(context);
        boolean z2 = true;
        if (TextUtils.isEmpty(strD) || !strD.equals(this.ad)) {
            String strF = com.anythink.core.common.v.l.f();
            if ((TextUtils.isEmpty(strF) || !strF.equals(this.ad)) && ((rVarC = b().c()) == null || !rVarC.checkDebuggerDevice(context, this.ad))) {
                z2 = false;
            }
        }
        this.af = z2;
        if (TextUtils.isEmpty(this.ad)) {
            if (G()) {
                Log.e("SDK.init", "Setting Debugger's device fail, because deviceId is empty.");
            }
            this.af = false;
        } else {
            if (this.af) {
                G();
                if (this.ae != null) {
                    G();
                    return;
                }
                return;
            }
            if (G()) {
                Log.e("SDK.init", "The incoming device id does not match the current device id, and the debugger mode cannot take effect.");
            }
        }
    }

    public static /* synthetic */ void c(s sVar) {
        com.anythink.core.common.e.a.a();
        com.anythink.core.common.e.b bVarA = com.anythink.core.common.e.a.a(sVar.f2967s);
        if (bVarA != null) {
            sVar.a(bVarA.b(), false, bVarA.a(), bVarA.c());
        }
    }

    public static /* synthetic */ void c(s sVar, Context context) {
        JSONObject cnDInfo;
        try {
            com.anythink.core.common.e.b bVar = sVar.av;
            if (bVar != null) {
                com.anythink.core.common.u.f.a(bVar);
                return;
            }
            int i2 = AdxATInitManager.f9210A;
            Object objInvoke = null;
            try {
                objInvoke = AdxATInitManager.class.getDeclaredMethod("getInstance", null).invoke(null, null);
            } catch (Throwable unused) {
            }
            if (objInvoke instanceof ATInitMediation) {
                ATInitMediation aTInitMediation = (ATInitMediation) objInvoke;
                HashMap map = new HashMap();
                map.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PRECHECK_MODE, 1);
                com.anythink.core.bridge.entity.a aVar = new com.anythink.core.bridge.entity.a();
                aVar.a();
                aVar.a(com.anythink.core.common.v.o.a());
                aVar.b(sVar.f2968t);
                aVar.c(sVar.f2969u);
                map.put(a.C0044a.f1719b, com.anythink.core.bridge.c.a(aVar));
                com.anythink.core.bridge.entity.d dVar = new com.anythink.core.bridge.entity.d();
                dVar.a(sVar.C());
                r rVarC = sVar.c();
                if (rVarC != null && (cnDInfo = rVarC.getCnDInfo()) != null) {
                    String strB = af.b(com.anythink.core.bridge.b.f1767a);
                    String strB2 = af.b(com.anythink.core.bridge.b.f1770d);
                    String strB3 = af.b(com.anythink.core.bridge.b.f1769c);
                    String strB4 = af.b(com.anythink.core.bridge.b.f1768b);
                    dVar.c(cnDInfo.optString(strB));
                    dVar.h(cnDInfo.optString(strB2));
                    dVar.j(cnDInfo.optString(strB3));
                    dVar.i(cnDInfo.optString(strB4));
                }
                dVar.k(com.anythink.core.common.v.l.d(context));
                dVar.d(com.anythink.core.common.v.l.p(context));
                dVar.f(com.anythink.core.common.v.l.I());
                dVar.g(com.anythink.core.common.v.l.J());
                map.put(a.C0044a.f1718a, com.anythink.core.bridge.c.a(dVar));
                String[] strArrF = sVar.f();
                if (strArrF != null && strArrF.length > 0) {
                    map.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_DENNY_DEVICE_INFO, strArrF);
                }
                aTInitMediation.initSDK(context, map, sVar.new AnonymousClass17(context));
            }
        } catch (Throwable unused2) {
        }
    }

    public final long a(Context context, String str, int i2) {
        boolean z2;
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(context).b(str);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jS = i2 == 0 ? bVarB.S() : bVarB.E();
        synchronized (this.f2935D) {
            try {
                if (this.f2961f == 0) {
                    this.f2961f = ad.b(this.f2967s, t.b.f3058a, t.a.f3053v, 0L);
                }
                if (Math.max(0L, jCurrentTimeMillis - this.f2961f) > jS) {
                    this.f2933B = com.anythink.core.common.v.n.a(str + jCurrentTimeMillis);
                    this.f2961f = jCurrentTimeMillis;
                    z2 = true;
                } else {
                    z2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            this.f2934C.clear();
            HashMap map = new HashMap();
            map.put(t.a.f3051t, this.f2933B);
            map.put(t.a.f3053v, Long.valueOf(jCurrentTimeMillis));
            if (context != null) {
                try {
                    com.anythink.core.common.s.b.a().b(context, t.b.f3058a).a(map);
                } catch (Throwable unused) {
                }
            }
            com.anythink.core.common.u.f.a((String) null, "1", (String) null, String.valueOf(jCurrentTimeMillis));
            if (i2 == 0) {
                this.f2960e = jCurrentTimeMillis;
            }
            return jCurrentTimeMillis;
        }
        if (TextUtils.isEmpty(this.f2933B)) {
            synchronized (this.f2935D) {
                try {
                    if (TextUtils.isEmpty(this.f2933B)) {
                        this.f2933B = ad.c(context, t.b.f3058a, t.a.f3051t, "");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return 0L;
    }

    public static boolean a(Context context, List<String> list) {
        boolean z2 = true;
        if (list == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            try {
            } catch (Throwable th) {
                sb.append(", error: ");
                sb.append(th.getMessage());
            }
            if (context.getPackageManager().queryIntentActivities(new Intent(context, Class.forName(str)), 131072).size() <= 0) {
                sb.append(", ");
                sb.append(str);
                z2 = false;
            }
        }
        if (sb.length() > 2) {
            sb.delete(0, 2);
        }
        if (!z2) {
            Log.e("anythink", "Activities : Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00c1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c2 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(android.content.Context r12, java.util.List<java.lang.String> r13, java.lang.String r14) {
        /*
            r11 = this;
            java.lang.String r0 = ""
            if (r13 == 0) goto Lc3
            int r1 = r13.size()
            if (r1 != 0) goto Lc
            goto Lc3
        Lc:
            r1 = 0
            int r2 = r13.size()     // Catch: java.lang.Throwable -> Lba
            r3 = 1
            r5 = r0
            r4 = r1
            r6 = r3
        L15:
            if (r4 >= r2) goto Lb8
            java.lang.Object r7 = r13.get(r4)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> Lb6
            boolean r8 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> Lbf
            if (r8 == 0) goto L3c
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbf
            r8.<init>()     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r9 = "_"
            java.lang.String[] r9 = r7.split(r9)     // Catch: java.lang.Throwable -> Lbf
            r9 = r9[r1]     // Catch: java.lang.Throwable -> Lbf
            r8.append(r9)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r9 = "_*"
            r8.append(r9)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r5 = r8.toString()     // Catch: java.lang.Throwable -> Lbf
        L3c:
            boolean r8 = android.text.TextUtils.isEmpty(r14)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r9 = "layout"
            if (r8 != 0) goto L4d
            android.content.res.Resources r8 = r12.getResources()     // Catch: java.lang.Throwable -> Lbf
            int r8 = r8.getIdentifier(r7, r9, r14)     // Catch: java.lang.Throwable -> Lbf
            goto L4e
        L4d:
            r8 = -1
        L4e:
            if (r8 > 0) goto L62
            java.lang.String r10 = r11.ap     // Catch: java.lang.Throwable -> Lbf
            boolean r10 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Throwable -> Lbf
            if (r10 != 0) goto L62
            android.content.res.Resources r8 = r12.getResources()     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r10 = r11.ap     // Catch: java.lang.Throwable -> Lbf
            int r8 = r8.getIdentifier(r7, r9, r10)     // Catch: java.lang.Throwable -> Lbf
        L62:
            if (r8 > 0) goto L70
            android.content.res.Resources r8 = r12.getResources()     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r10 = r12.getPackageName()     // Catch: java.lang.Throwable -> Lbf
            int r8 = r8.getIdentifier(r7, r9, r10)     // Catch: java.lang.Throwable -> Lbf
        L70:
            if (r8 > 0) goto L73
            goto Lbf
        L73:
            r7 = 0
            android.content.res.Resources r9 = r12.getResources()     // Catch: java.lang.Throwable -> L99
            android.content.res.XmlResourceParser r7 = r9.getLayout(r8)     // Catch: java.lang.Throwable -> L99
        L7c:
            int r8 = r7.next()     // Catch: java.lang.Throwable -> L99
            if (r8 == r3) goto La1
            r9 = 2
            if (r8 != r9) goto L7c
            java.lang.String r8 = "x"
            java.lang.String r9 = r7.getName()     // Catch: java.lang.Throwable -> L99
            boolean r8 = r8.equalsIgnoreCase(r9)     // Catch: java.lang.Throwable -> L99
            if (r8 == 0) goto L9b
            int r8 = r7.getAttributeCount()     // Catch: java.lang.Throwable -> L99
            if (r8 != 0) goto L7c
            r6 = r1
            goto La1
        L99:
            r8 = move-exception
            goto La5
        L9b:
            int r8 = r7.getAttributeCount()     // Catch: java.lang.Throwable -> L99
            if (r8 < 0) goto L7c
        La1:
            r7.close()     // Catch: java.lang.Throwable -> Lbf
            goto Lab
        La5:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> Laf
            if (r7 == 0) goto Lab
            goto La1
        Lab:
            int r4 = r4 + 1
            goto L15
        Laf:
            r12 = move-exception
            if (r7 == 0) goto Lb5
            r7.close()     // Catch: java.lang.Throwable -> Lbf
        Lb5:
            throw r12     // Catch: java.lang.Throwable -> Lbf
        Lb6:
            r12 = move-exception
            goto Lbc
        Lb8:
            r1 = r6
            goto Lbf
        Lba:
            r12 = move-exception
            r5 = r0
        Lbc:
            r12.printStackTrace()
        Lbf:
            if (r1 == 0) goto Lc2
            return r0
        Lc2:
            return r5
        Lc3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.d.s.a(android.content.Context, java.util.List, java.lang.String):java.lang.String");
    }

    public static void a(Runnable runnable, long j2) {
        com.anythink.core.common.v.b.c.a().a(runnable, j2);
    }

    private static long a(long j2) {
        Date date = new Date(j2);
        return new Date(date.getYear(), date.getMonth(), date.getDate()).getTime();
    }

    public static com.anythink.core.common.k.e a(com.anythink.core.common.f fVar) {
        return new com.anythink.core.common.q.e(fVar);
    }

    public final void a(String str, List<String> list) {
        if (G()) {
            String.format("setFilterAdSourceIdList, placementId=%s, adSourceIdList=%s", str, list);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (list == null) {
            this.ac.remove(str);
        } else {
            this.ac.put(str, list);
        }
    }

    public final void a(int i2, List<String> list) {
        if (G()) {
            String.format("setForbidShowNetworkFirmIdList, risk=%s, ForbidList=%s", Integer.valueOf(i2), list);
        }
        this.ay = new Pair<>(Integer.valueOf(i2), list);
        H();
    }

    public final void a(IATDeviceRiskListener iATDeviceRiskListener) {
        this.f2962g = iATDeviceRiskListener;
    }

    public final void a(com.anythink.core.e.b bVar) throws JSONException {
        if (bVar != null) {
            try {
                if (G()) {
                    Log.e("anythink", "notifyDeviceRisk:" + this.f2962g);
                }
                if (this.f2962g != null) {
                    JSONObject jSONObject = new JSONObject();
                    String strC = C();
                    if (!TextUtils.isEmpty(strC)) {
                        jSONObject.put("device_upid", strC);
                    }
                    String strE = bVar.e();
                    if (!TextUtils.isEmpty(strE)) {
                        jSONObject.put("device_risk_labels", strE);
                    }
                    this.f2962g.onDeviceRiskInfo(jSONObject);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static boolean a(List<String> list, String str) {
        return list != null && list.contains(str);
    }

    public final void a(final Context context, final DeviceInfoCallback deviceInfoCallback) {
        if (!G()) {
            String strConcat = "Before call \"ATSDK.testModeDeviceInfo()\", you must to call \"ATSDK.setNetworkLogDebug(true);\" first. ".concat("Note: The call to the \"ATSDK.testModeDeviceInfo()\" method must be removed after the test is completed!!!");
            Log.e("anythink", strConcat);
            if (deviceInfoCallback != null) {
                deviceInfoCallback.deviceInfo(strConcat);
                return;
            }
            return;
        }
        Log.e("anythink", "Note: The call to the \"ATSDK.testModeDeviceInfo()\" method must be removed after the test is completed!!!");
        if (!this.f2959d) {
            Log.e("anythink", "You should init SDK first.");
            if (deviceInfoCallback != null) {
                deviceInfoCallback.deviceInfo("You should init SDK first.");
                return;
            }
            return;
        }
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cH, new Runnable() { // from class: com.anythink.core.common.d.s.6
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(context).b(s.b().p());
                String strI = bVarB != null ? bVarB.I() : "";
                boolean z2 = true;
                if (!TextUtils.isEmpty(strI)) {
                    try {
                        JSONObject jSONObject = new JSONObject(strI);
                        if (!jSONObject.isNull("a")) {
                            if (jSONObject.optInt("a") != 1) {
                                z2 = false;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    r rVarC = s.b().c();
                    if (rVarC != null) {
                        rVarC.fillTestDeviceData(jSONObject2, bVarB);
                    }
                    jSONObject2.put("GAID", com.anythink.core.common.v.l.p(context));
                    jSONObject2.put("AndroidID", z2 ? com.anythink.core.common.v.l.d(context) : "");
                    jSONObject2.put("How to config TestMode", "Please visit the document center and learn more through: Integration(Basic) -> How To Test");
                    aa.a("testModeDeviceInfo", jSONObject2.toString());
                    DeviceInfoCallback deviceInfoCallback2 = deviceInfoCallback;
                    if (deviceInfoCallback2 != null) {
                        deviceInfoCallback2.deviceInfo(jSONObject2.toString());
                    }
                } catch (Throwable unused2) {
                }
            }
        }));
    }

    public final void a(final com.anythink.core.common.f fVar, final String str, final String str2, final Map<String, Object> map) {
        if (!this.f2959d) {
            Log.e("SDK.init", "SDK should be inited first!");
            return;
        }
        if (fVar == null) {
            Log.e("SDK.init", "The commonAdManager object has not been created yet!");
            return;
        }
        final boolean zL = fVar.l();
        ae aeVar = new ae();
        aeVar.a(map);
        aeVar.a(fVar.n());
        final com.anythink.core.common.h.c cVarB = fVar.b(this.f2967s, false, false, aeVar);
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cC, new Runnable() { // from class: com.anythink.core.common.d.s.7
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.e.m mVarA = com.anythink.core.e.o.a(s.this.f2967s).a(fVar.c());
                String strM = fVar.m();
                String strD = com.anythink.core.common.v.o.d(str);
                com.anythink.core.common.h.c cVar = cVarB;
                if (cVar != null) {
                    com.anythink.core.common.h.n nVarAh = cVar.i().ah();
                    nVarAh.k(1);
                    nVarAh.f4324H = strD;
                    if (v.a().a(mVarA)) {
                        ah.a(fVar.c(), mVarA, nVarAh);
                    }
                    com.anythink.core.common.u.e.a(s.this.f2967s);
                    com.anythink.core.common.u.e.a(16, nVarAh);
                    return;
                }
                if (TextUtils.isEmpty(strM)) {
                    strM = "";
                }
                com.anythink.core.common.h.n nVarA = ah.a(strM, fVar.c(), mVarA, 0, 0, map, null, 0, fVar.n(), fVar);
                nVarA.k(zL ? 3 : 2);
                if (mVarA == null) {
                    nVarA.K(str2);
                }
                nVarA.f4324H = strD;
                if (v.a().a(mVarA)) {
                    ah.a(fVar.c(), mVarA, nVarA);
                }
                com.anythink.core.common.u.e.a(s.this.f2967s);
                com.anythink.core.common.u.e.a(16, nVarA);
            }
        }));
    }

    public final void a(Activity activity) {
        WeakReference<Activity> weakReference = this.f2963h;
        if (weakReference == null || weakReference.get() == null) {
            this.f2963h = new WeakReference<>(activity);
        }
    }

    private void a(Context context, ATNetworkConfig aTNetworkConfig) {
        if (aTNetworkConfig == null) {
            aTNetworkConfig = new ATNetworkConfig();
        }
        List<ATInitConfig> aTInitConfigList = aTNetworkConfig.getATInitConfigList();
        if (aTInitConfigList == null) {
            aTInitConfigList = new ArrayList<>(2);
        }
        try {
            if (A()) {
                aTInitConfigList.clear();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            aTInitConfigList = new ArrayList<>(2);
        }
        boolean z2 = false;
        ATInitConfig aTInitConfig = null;
        if (Build.VERSION.SDK_INT != 29 && !a(b().J(), "1")) {
            try {
                Constructor declaredConstructor = Class.forName("com.anythink.network.facebook.FacebookATInitConfig").asSubclass(ATInitConfig.class).getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                ATInitConfig aTInitConfig2 = (ATInitConfig) declaredConstructor.newInstance(null);
                try {
                    aTInitConfigList.add(0, aTInitConfig2);
                } catch (Throwable unused) {
                }
                aTInitConfig = aTInitConfig2;
            } catch (Throwable unused2) {
            }
        }
        this.f2950S = aTInitConfigList.size() > 0;
        for (ATInitConfig aTInitConfig3 : aTInitConfigList) {
            if (aTInitConfig3 != null) {
                if (aTInitConfig != null && TextUtils.equals(aTInitConfig.getClass().getSimpleName(), aTInitConfig3.getClass().getSimpleName())) {
                    if (!z2) {
                        z2 = true;
                    }
                }
                a(new AnonymousClass8(aTInitConfig3, context));
            }
        }
    }

    public final void a(String str, Map<String, Object> map, String... strArr) {
        com.anythink.core.common.h.n nVar;
        if (map == null || map.containsKey(ATInitMediation.KEY_LOCAL)) {
            return;
        }
        try {
            nVar = (com.anythink.core.common.h.n) map.get("anythink_tracking_info");
        } catch (Throwable unused) {
            nVar = null;
        }
        map.remove("anythink_tracking_info");
        String string = new JSONObject(map).toString();
        Log.e("anythink", "Mismatched initialization parameters! server params: [" + str + "], " + string);
        ad.b(this.f2967s, t.b.f3064g, str, string);
        if (nVar == null || strArr == null) {
            return;
        }
        try {
            com.anythink.core.common.u.f.a(nVar, strArr[0], strArr.length > 1 ? strArr[1] : null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(String[] strArr, IATAdFilter iATAdFilter) {
        ConcurrentHashMap<String, IATAdFilter> concurrentHashMap = this.aj;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        if (this.aj == null) {
            this.aj = new ConcurrentHashMap<>();
        }
        for (String str : strArr) {
            this.aj.put(str, iATAdFilter);
        }
    }

    public final void a(ATUserDeviceInfo aTUserDeviceInfo) {
        this.al = aTUserDeviceInfo;
    }

    public static void a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            com.anythink.core.e.o.a(context.getApplicationContext()).j(str);
            com.anythink.core.e.d.a(context.getApplicationContext()).d(str);
        } else {
            Log.e("SDK.init", "setPrePlacementStrategy failed: path is null or empty.");
        }
    }

    public static void a(ATSharedPlacementConfig aTSharedPlacementConfig) {
        v.a().a(aTSharedPlacementConfig);
    }

    public final void a(l lVar) {
        if (lVar != null) {
            try {
                synchronized (this.aA) {
                    try {
                        if (!this.aA.contains(lVar)) {
                            this.aA.add(lVar);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void a(String str, ATAdFilter aTAdFilter) {
        if (TextUtils.isEmpty(str) || aTAdFilter == null) {
            return;
        }
        this.aB.put(str, aTAdFilter);
    }

    public static void a(String str, String str2) {
        com.anythink.core.common.u.f.a("1", str, str2);
    }

    public final void a(Boolean bool) {
        if (bool != null) {
            synchronized (this.f2932A) {
                try {
                    if (!bool.booleanValue()) {
                        this.f2932A.put("sensor_deny", Boolean.TRUE);
                    } else {
                        this.f2932A.remove("sensor_deny");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void a(com.anythink.core.common.b.b bVar) {
        if (this.aI || bVar == null) {
            return;
        }
        int iA = bVar.a();
        try {
            MediationUtilsManager mediationUtilsManager = MediationUtilsManager.getInstance(this.f2967s);
            this.aD = mediationUtilsManager.getAnrCountWithinDays(iA);
            this.aH = mediationUtilsManager.getAnrTimestampsWithinDays(iA).toString();
        } catch (Throwable unused) {
        }
    }

    private boolean a(long j2, long j3) {
        if (this.f2961f == 0) {
            this.f2961f = ad.b(this.f2967s, t.b.f3058a, t.a.f3053v, 0L);
        }
        return Math.max(0L, j2 - this.f2961f) > j3;
    }

    private void a(String str, int i2) {
        com.anythink.core.e.o oVarA;
        com.anythink.core.e.m mVarF;
        try {
            Context context = this.f2967s;
            if (context == null || (oVarA = com.anythink.core.e.o.a(context)) == null || (mVarF = oVarA.f(str)) == null) {
                return;
            }
            com.anythink.core.common.f fVarA = com.anythink.core.common.f.a(this.f2967s, str, String.valueOf(mVarF.ap()));
            if (fVarA != null) {
                fVarA.a(i2);
            }
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void a(s sVar, Context context) {
        int iA = com.anythink.core.common.v.p.a(context, "common_custom_pg", "string");
        if (iA > 0) {
            sVar.aw = context.getResources().getString(iA);
        }
    }

    public static /* synthetic */ void a(s sVar, Context context, ATNetworkConfig aTNetworkConfig) {
        if (aTNetworkConfig == null) {
            aTNetworkConfig = new ATNetworkConfig();
        }
        List<ATInitConfig> aTInitConfigList = aTNetworkConfig.getATInitConfigList();
        if (aTInitConfigList == null) {
            aTInitConfigList = new ArrayList<>(2);
        }
        try {
            if (sVar.A()) {
                aTInitConfigList.clear();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            aTInitConfigList = new ArrayList<>(2);
        }
        boolean z2 = false;
        ATInitConfig aTInitConfig = null;
        if (Build.VERSION.SDK_INT != 29 && !a(b().J(), "1")) {
            try {
                Constructor declaredConstructor = Class.forName("com.anythink.network.facebook.FacebookATInitConfig").asSubclass(ATInitConfig.class).getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                ATInitConfig aTInitConfig2 = (ATInitConfig) declaredConstructor.newInstance(null);
                try {
                    aTInitConfigList.add(0, aTInitConfig2);
                } catch (Throwable unused) {
                }
                aTInitConfig = aTInitConfig2;
            } catch (Throwable unused2) {
            }
        }
        sVar.f2950S = aTInitConfigList.size() > 0;
        for (ATInitConfig aTInitConfig3 : aTInitConfigList) {
            if (aTInitConfig3 != null) {
                if (aTInitConfig != null && TextUtils.equals(aTInitConfig.getClass().getSimpleName(), aTInitConfig3.getClass().getSimpleName())) {
                    if (!z2) {
                        z2 = true;
                    }
                }
                a(sVar.new AnonymousClass8(aTInitConfig3, context));
            }
        }
    }
}

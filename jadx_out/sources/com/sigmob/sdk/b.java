package com.sigmob.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.location.Location;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.AdLifecycleManager;
import com.czhj.sdk.common.utils.RomUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ag;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntityActive;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes3.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static WeakReference<Activity> f35485a = null;

    /* renamed from: b, reason: collision with root package name */
    private static Context f35486b = null;

    /* renamed from: c, reason: collision with root package name */
    private static a f35487c = null;

    /* renamed from: d, reason: collision with root package name */
    private static WeakReference<Activity> f35488d = null;

    /* renamed from: e, reason: collision with root package name */
    private static boolean f35489e = false;

    /* renamed from: f, reason: collision with root package name */
    private static DeviceContext f35490f;

    /* renamed from: g, reason: collision with root package name */
    private static Handler f35491g = new Handler(Looper.getMainLooper());

    /* renamed from: h, reason: collision with root package name */
    private static C0765b f35492h;

    public static class a implements AdLifecycleManager.LifecycleListener {

        /* renamed from: a, reason: collision with root package name */
        private String f35493a;

        /* renamed from: b, reason: collision with root package name */
        private long f35494b;

        /* renamed from: d, reason: collision with root package name */
        private String f35496d;

        /* renamed from: e, reason: collision with root package name */
        private int f35497e;

        /* renamed from: i, reason: collision with root package name */
        private boolean f35501i;

        /* renamed from: k, reason: collision with root package name */
        private final BroadcastReceiver f35503k;

        /* renamed from: c, reason: collision with root package name */
        private final Map<String, String> f35495c = new HashMap();

        /* renamed from: f, reason: collision with root package name */
        private boolean f35498f = true;

        /* renamed from: g, reason: collision with root package name */
        private boolean f35499g = false;

        /* renamed from: h, reason: collision with root package name */
        private boolean f35500h = false;

        /* renamed from: j, reason: collision with root package name */
        private int f35502j = 0;

        public a() {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.sigmob.sdk.b.a.1
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
                @Override // android.content.BroadcastReceiver
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onReceive(android.content.Context r5, android.content.Intent r6) {
                    /*
                        r4 = this;
                        java.lang.String r5 = r6.getAction()
                        boolean r6 = com.sigmob.sdk.base.utils.s.a(r5)
                        if (r6 == 0) goto Lb
                        goto L45
                    Lb:
                        byte[] r5 = r5.getBytes()
                        r6 = 2
                        java.lang.String r5 = android.util.Base64.encodeToString(r5, r6)
                        r5.getClass()
                        int r0 = r5.hashCode()
                        r1 = 1
                        r2 = 0
                        r3 = -1
                        switch(r0) {
                            case -252353173: goto L37;
                            case 1349729289: goto L2c;
                            case 1349784159: goto L23;
                            default: goto L21;
                        }
                    L21:
                        r6 = r3
                        goto L41
                    L23:
                        java.lang.String r0 = "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNDUkVFTl9PTg=="
                        boolean r5 = r5.equals(r0)
                        if (r5 != 0) goto L41
                        goto L21
                    L2c:
                        java.lang.String r6 = "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNDUkVFTl9PRkY="
                        boolean r5 = r5.equals(r6)
                        if (r5 != 0) goto L35
                        goto L21
                    L35:
                        r6 = r1
                        goto L41
                    L37:
                        java.lang.String r6 = "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlVTRVJfUFJFU0VOVA=="
                        boolean r5 = r5.equals(r6)
                        if (r5 != 0) goto L40
                        goto L21
                    L40:
                        r6 = r2
                    L41:
                        r5 = 0
                        switch(r6) {
                            case 0: goto L60;
                            case 1: goto L51;
                            case 2: goto L46;
                            default: goto L45;
                        }
                    L45:
                        return
                    L46:
                        java.lang.String r6 = "screen on"
                        com.czhj.sdk.logger.SigmobLog.d(r6)
                        java.lang.String r6 = "screen_on"
                    L4d:
                        com.sigmob.sdk.base.common.ad.a(r6, r5, r5, r5)
                        return
                    L51:
                        java.lang.String r6 = "screen off"
                        com.czhj.sdk.logger.SigmobLog.d(r6)
                        com.sigmob.sdk.manager.d r6 = com.sigmob.sdk.manager.d.a()
                        r6.a(r1)
                        java.lang.String r6 = "locked"
                        goto L4d
                    L60:
                        java.lang.String r6 = "screen user present"
                        com.czhj.sdk.logger.SigmobLog.d(r6)
                        com.sigmob.sdk.manager.d r6 = com.sigmob.sdk.manager.d.a()
                        r6.a(r2)
                        java.lang.String r6 = "unlock"
                        goto L4d
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.b.a.AnonymousClass1.onReceive(android.content.Context, android.content.Intent):void");
                }
            };
            this.f35503k = broadcastReceiver;
            AdLifecycleManager.getInstance().initialize(b.h());
            this.f35494b = System.currentTimeMillis();
            this.f35493a = UUID.randomUUID().toString();
            SigmobLog.i("session_start: " + this.f35494b + ":" + this.f35493a);
            PointEntityActive.ActiveTracking(PointCategory.SESSION_START, this.f35493a, "0", String.valueOf(this.f35494b));
            AdLifecycleManager.getInstance().addLifecycleListener(this);
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(new String(Base64.decode(com.sigmob.sdk.base.n.f36427M, 2)));
                intentFilter.addAction(new String(Base64.decode(com.sigmob.sdk.base.n.f36428N, 2)));
                intentFilter.addAction(new String(Base64.decode(com.sigmob.sdk.base.n.f36429O, 2)));
                com.sigmob.sdk.base.utils.h.a(b.f35486b, broadcastReceiver, intentFilter);
            } catch (Throwable th) {
                SigmobLog.e("register screen status receiver error" + th.getMessage());
            }
        }

        public int a() {
            return this.f35497e;
        }

        public void b(Activity activity) {
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onCreate(Activity activity) {
            String simpleName = activity.getClass().getSimpleName();
            this.f35496d = simpleName;
            this.f35495c.put(simpleName, simpleName);
            this.f35498f = true;
            this.f35499g = false;
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onDestroy(Activity activity) {
            if (activity instanceof AdActivity) {
                this.f35501i = false;
            }
            this.f35495c.remove(activity.getClass().getSimpleName());
            if (this.f35495c.isEmpty() && this.f35498f) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j2 = (jCurrentTimeMillis - this.f35494b) / 1000;
                SigmobLog.i("onActivityDestroyed session_end: " + jCurrentTimeMillis + ":" + this.f35493a + ":" + j2);
                PointEntityActive.ActiveTracking(PointCategory.SESSION_END, this.f35493a, String.valueOf(j2), String.valueOf(jCurrentTimeMillis));
                this.f35494b = System.currentTimeMillis();
                this.f35498f = false;
            }
            if (this.f35495c.isEmpty()) {
                this.f35500h = true;
            }
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onPause(Activity activity) {
            if (!RomUtils.isHuawei()) {
                this.f35502j = 3;
                return;
            }
            int i2 = this.f35502j;
            if (i2 == 0) {
                this.f35502j = 1;
                return;
            }
            if (i2 == 2) {
                this.f35502j = 3;
            } else if (i2 != 3) {
                this.f35502j = 0;
            } else {
                b.f35491g.removeCallbacksAndMessages(null);
            }
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onResume(final Activity activity) {
            if (activity instanceof AdActivity) {
                this.f35501i = true;
            } else if (!this.f35501i) {
                WeakReference unused = b.f35488d = new WeakReference(activity);
            }
            if (RomUtils.isHuawei()) {
                int i2 = this.f35502j;
                if (i2 == 1) {
                    this.f35502j = 2;
                } else if (i2 == 3) {
                    b.f35491g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.j
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.c(activity);
                        }
                    }, 500L);
                }
            } else {
                b.c(activity);
            }
            this.f35499g = !activity.getClass().getSimpleName().equals(this.f35496d);
            this.f35496d = activity.getClass().getSimpleName();
            if (this.f35499g) {
                WeakReference unused2 = b.f35485a = new WeakReference(activity);
            }
            if (!this.f35498f || this.f35500h) {
                this.f35500h = false;
                this.f35493a = UUID.randomUUID().toString();
                this.f35494b = System.currentTimeMillis();
                this.f35498f = true;
                SigmobLog.i("onActivityResumed session_start: " + this.f35494b + ":" + this.f35493a);
                PointEntityActive.ActiveTracking(PointCategory.SESSION_START, this.f35493a, "0", String.valueOf(this.f35494b));
            }
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onStart(Activity activity) {
            this.f35502j = 0;
            this.f35497e++;
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onStop(Activity activity) {
            this.f35497e--;
            b.f35491g.removeCallbacksAndMessages(null);
            Activity activityI = b.i();
            String simpleName = activity.getClass().getSimpleName();
            if (simpleName.equals(this.f35496d) || (v.b(activityI) && simpleName.equals(activityI.getClass().getSimpleName()))) {
                b.j();
                if (!this.f35499g || this.f35495c.size() == 1) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j2 = (jCurrentTimeMillis - this.f35494b) / 1000;
                    SigmobLog.i("onActivityStopped session_end: " + jCurrentTimeMillis + ":" + this.f35493a + ":" + j2);
                    PointEntityActive.ActiveTracking(PointCategory.SESSION_END, this.f35493a, String.valueOf(j2), String.valueOf(jCurrentTimeMillis));
                    this.f35494b = System.currentTimeMillis();
                    this.f35498f = false;
                }
            }
        }

        public void a(Activity activity) {
        }

        public void a(Activity activity, int i2, int i3, Intent intent) {
        }
    }

    /* renamed from: com.sigmob.sdk.b$b, reason: collision with other inner class name */
    public static class C0765b implements SensorEventListener {

        /* renamed from: a, reason: collision with root package name */
        private static final int f35505a = 1000;

        /* renamed from: b, reason: collision with root package name */
        private volatile Boolean f35506b = null;

        public C0765b() {
            b();
            c();
        }

        private void b() {
            if (b.f35486b == null) {
                return;
            }
            ag.a(b.f35486b).a(this);
        }

        private void c() {
            ThreadPoolFactory.BackgroundThreadPool.getInstance().getIOHandler().postDelayed(new Runnable() { // from class: com.sigmob.sdk.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f37755b.e();
                }
            }, 1000L);
        }

        private void d() {
            if (b.f35486b == null) {
                return;
            }
            ag.a(b.f35486b).b(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (this.f35506b == null) {
                this.f35506b = Boolean.FALSE;
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            this.f35506b = Boolean.TRUE;
            d();
        }

        public Boolean a() {
            return this.f35506b == null ? Boolean.TRUE : this.f35506b;
        }
    }

    public static String a() {
        return "";
    }

    public static DeviceContext b() {
        DeviceContext deviceContext = f35490f;
        if (deviceContext != null || f35486b == null) {
            return deviceContext;
        }
        DeviceContext deviceContext2 = new DeviceContext() { // from class: com.sigmob.sdk.b.1
            private WindCustomController a() {
                return WindAds.sharedAds().getOptions().getCustomController();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getAndroidId() {
                WindCustomController windCustomControllerA = a();
                if ((windCustomControllerA == null || windCustomControllerA.isCanUseAndroidId()) && b.f35489e && WindAds.sharedAds().isPersonalizedAdvertisingOn()) {
                    return ClientMetadata.getInstance().getAndroidId();
                }
                if (windCustomControllerA == null || windCustomControllerA.isCanUseAndroidId()) {
                    return null;
                }
                return windCustomControllerA.getAndroidId();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getCarrier() {
                if (com.sigmob.sdk.base.o.a().j()) {
                    return null;
                }
                WindCustomController windCustomControllerA = a();
                if (windCustomControllerA != null && !windCustomControllerA.isCanUseSimOperator()) {
                    return windCustomControllerA.getDevSimOperatorCode();
                }
                String networkOperatorForUrl = ClientMetadata.getInstance().getNetworkOperatorForUrl();
                SigmobLog.d(String.format("SDKContext: simOperator = %s", networkOperatorForUrl));
                return networkOperatorForUrl;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getCarrierName() {
                if (com.sigmob.sdk.base.o.a().j()) {
                    return null;
                }
                WindCustomController windCustomControllerA = a();
                if (windCustomControllerA != null && !windCustomControllerA.isCanUseSimOperator()) {
                    return windCustomControllerA.getDevSimOperatorName();
                }
                String networkOperatorName = ClientMetadata.getInstance().getNetworkOperatorName();
                SigmobLog.d(String.format("SDKContext: carrierName = %s", networkOperatorName));
                return networkOperatorName;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei() {
                WindCustomController windCustomControllerA = a();
                if (((windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) && b.f35489e && WindAds.sharedAds().isPersonalizedAdvertisingOn()) || windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) {
                    return null;
                }
                return windCustomControllerA.getDevImei();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei1() {
                WindCustomController windCustomControllerA = a();
                if (((windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) && b.f35489e && WindAds.sharedAds().isPersonalizedAdvertisingOn()) || windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) {
                    return null;
                }
                return windCustomControllerA.getDevImei();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei2() {
                WindCustomController windCustomControllerA = a();
                if (((windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) && b.f35489e && WindAds.sharedAds().isPersonalizedAdvertisingOn()) || windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) {
                    return null;
                }
                return windCustomControllerA.getDevImei();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public Location getLocation() {
                if (com.sigmob.sdk.base.o.a().P()) {
                    return null;
                }
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseLocation()) ? ClientMetadata.getInstance().getLocation() : windCustomControllerA.getLocation();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getOaid() {
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseOaid()) ? ClientMetadata.getInstance().getOAID() : windCustomControllerA.getDevOaid();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomAndroidId() {
                WindCustomController windCustomControllerA = a();
                return windCustomControllerA == null || windCustomControllerA.isCanUseAndroidId();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomOaId() {
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseOaid()) ? false : true;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomOperatorCode() {
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseSimOperator() || com.sigmob.sdk.base.utils.s.a((CharSequence) windCustomControllerA.getDevSimOperatorCode())) ? false : true;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomOperatorName() {
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseSimOperator() || com.sigmob.sdk.base.utils.s.a((CharSequence) windCustomControllerA.getDevSimOperatorName())) ? false : true;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomPhoneState() {
                WindCustomController windCustomControllerA = a();
                return windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState();
            }
        };
        f35490f = deviceContext2;
        return deviceContext2;
    }

    public static Activity c() {
        WeakReference<Activity> weakReference = f35488d;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static void d() {
        if (f35487c == null) {
            f35487c = new a();
        }
    }

    public static Context e() {
        return f35486b;
    }

    public static boolean f() {
        if (f35492h == null) {
            f35492h = new C0765b();
        }
        return f35492h.a().booleanValue();
    }

    public static boolean g() {
        AudioManager audioManager;
        return (f35486b == null || (audioManager = (AudioManager) e().getSystemService(MediaFormat.KEY_AUDIO)) == null || audioManager.getStreamVolume(3) != 0) ? false : true;
    }

    public static Application h() {
        Context context = f35486b;
        if (context instanceof Application) {
            return (Application) context;
        }
        return null;
    }

    public static Activity i() {
        WeakReference<Activity> weakReference = f35485a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static void j() {
        o();
        p();
    }

    private static void n() {
        WindAdOptions options;
        WindCustomController customController;
        List<PackageInfo> installPackageInfoList;
        if (com.sigmob.sdk.base.o.a().Q() || (options = WindAds.sharedAds().getOptions()) == null || (customController = options.getCustomController()) == null || customController.isCanUseAppList() || (installPackageInfoList = customController.getInstallPackageInfoList()) == null || installPackageInfoList.isEmpty()) {
            return;
        }
        Iterator<PackageInfo> it = installPackageInfoList.iterator();
        while (it.hasNext()) {
            ad.a(it.next(), 2);
        }
    }

    private static void o() {
        BaseAdUnit baseAdUnitF = C1258h.f();
        if (baseAdUnitF == null) {
            return;
        }
        C1258h.c((BaseAdUnit) null);
        com.sigmob.sdk.base.network.h.a(baseAdUnitF, "open_pkg");
        ad.a("open_pkg", "1", baseAdUnitF, (ad.a) null);
    }

    private static void p() {
        BaseAdUnit baseAdUnitM = C1258h.m();
        if (baseAdUnitM == null) {
            return;
        }
        C1258h.d((BaseAdUnit) null);
        baseAdUnitM.getClickCommon().isDeeplink = "1";
        Uri deeplinkUri = baseAdUnitM.getDeeplinkUri();
        com.sigmob.sdk.manager.b.b(baseAdUnitM, C1244a.f35655G, deeplinkUri == null ? baseAdUnitM.getDeeplinkUrl() : deeplinkUri.toString());
    }

    private static void q() {
        BaseAdUnit baseAdUnitF = C1258h.f();
        if (baseAdUnitF == null) {
            return;
        }
        C1258h.c((BaseAdUnit) null);
        ad.a("open_pkg", "0", baseAdUnitF, (ad.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Activity activity) {
        q();
        d(activity);
    }

    private static void d(Activity activity) {
        Uri uri;
        BaseAdUnit baseAdUnitM = C1258h.m();
        if (baseAdUnitM == null || activity == null) {
            return;
        }
        C1258h.d((BaseAdUnit) null);
        baseAdUnitM.getClickCommon().isDeeplink = "0";
        com.sigmob.sdk.manager.b.b(baseAdUnitM, C1244a.f35656H, null);
        String landing_page = baseAdUnitM.getLanding_page();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) landing_page) || (uri = Uri.parse(landing_page)) == null) {
            return;
        }
        if (!baseAdUnitM.isSkipSigmobBrowser()) {
            C1258h.a(baseAdUnitM);
            BaseAdActivity.a(activity, (Class<? extends BaseAdActivity>) AdActivity.class, baseAdUnitM.getUuid());
        } else {
            try {
                com.sigmob.sdk.base.utils.h.a(activity, uri);
            } catch (Throwable th) {
                SigmobLog.e("can't open load ", th);
            }
        }
    }

    public static void a(Activity activity) {
        if (activity == null) {
            return;
        }
        f35485a = new WeakReference<>(activity);
    }

    public static synchronized void a(Context context) {
        if (f35486b == null) {
            Context applicationContext = context.getApplicationContext();
            f35486b = applicationContext;
            com.sigmob.sdk.base.utils.n.a(applicationContext, com.sigmob.sdk.base.n.f36452o);
            com.sigmob.sdk.base.o.a().e();
            b(f35486b);
            com.sigmob.sdk.base.db.a.a(f35486b);
            ClientMetadata.getInstance().initialize(f35486b);
            n();
        }
    }

    private static void b(Context context) {
        Networking.AddSigmobServerURL(com.sigmob.sdk.base.o.c());
        Networking.AddSigmobServerURL(com.sigmob.sdk.base.o.a().a(false));
        Networking.AddSigmobServerURL(com.sigmob.sdk.base.o.a().b(false));
        Networking.AddSigmobServerURL(com.sigmob.sdk.base.o.a().r());
        Networking.initializeV2(context);
        Networking.initializeSigRequestQueue(context);
    }

    public static void a(boolean z2) {
        f35489e = z2;
    }
}

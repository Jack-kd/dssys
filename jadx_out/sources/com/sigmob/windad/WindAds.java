package com.sigmob.windad;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.b;
import com.sigmob.sdk.base.i;
import com.sigmob.sdk.base.n;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.base.utils.k;
import com.sigmob.windad.consent.ConsentStatus;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* loaded from: classes5.dex */
public class WindAds {
    public static final String ADN_ID = "ADN_ID";
    public static final String ADX_ID = "_adx_id";
    public static final String AD_SCENE_DESC = "scene_desc";
    public static final String AD_SCENE_ID = "scene_id";
    public static final String AUCTION_PRICE = "AUCTION_PRICE";
    public static final String CNY = "CNY";
    public static final String CURRENCY = "CURRENCY";
    public static final String HIGHEST_LOSS_PRICE = "HIGHEST_LOSS_PRICE";
    public static final String LOSS_REASON = "LOSS_REASON";
    public static final String REWARD_TYPE = "reward_type";
    public static final String SAAS_OPTIONS = "saas_options";
    public static final String SERVER_ARRIVED = "server_arrived";
    public static final String TAG = "WindAds";
    public static final String TRANS_ID = "trans_id";
    public static final String USD = "USD";

    /* renamed from: a, reason: collision with root package name */
    private static volatile WindAds f39168a;

    /* renamed from: e, reason: collision with root package name */
    private boolean f39172e;

    /* renamed from: g, reason: collision with root package name */
    private OnInitializationListener f39174g;

    /* renamed from: i, reason: collision with root package name */
    private int f39176i;

    /* renamed from: k, reason: collision with root package name */
    private int f39178k;

    /* renamed from: l, reason: collision with root package name */
    private int f39179l;

    /* renamed from: m, reason: collision with root package name */
    private Context f39180m;

    /* renamed from: b, reason: collision with root package name */
    private volatile boolean f39169b = false;

    /* renamed from: c, reason: collision with root package name */
    private volatile boolean f39170c = false;

    /* renamed from: h, reason: collision with root package name */
    private boolean f39175h = true;

    /* renamed from: j, reason: collision with root package name */
    private boolean f39177j = true;

    /* renamed from: n, reason: collision with root package name */
    private boolean f39181n = true;

    /* renamed from: o, reason: collision with root package name */
    private final CountDownLatch f39182o = new CountDownLatch(1);

    /* renamed from: d, reason: collision with root package name */
    private WindAdOptions f39171d = null;

    /* renamed from: f, reason: collision with root package name */
    private Handler f39173f = new Handler(Looper.getMainLooper());

    /* renamed from: com.sigmob.windad.WindAds$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f39184a;

        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f39184a = iArr;
            try {
                iArr[ConsentStatus.ACCEPT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39184a[ConsentStatus.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39184a[ConsentStatus.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private WindAds() {
    }

    private void b() {
        k.b(TAG, "notifyInitSuccess", new Object[0]);
        OnInitializationListener onInitializationListener = this.f39174g;
        if (onInitializationListener == null) {
            return;
        }
        onInitializationListener.onInitializationSuccess();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d A[Catch: all -> 0x002f, PHI: r1
      0x002d: PHI (r1v2 int) = (r1v1 int), (r1v3 int) binds: [B:8:0x0027, B:10:0x002a] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {all -> 0x002f, blocks: (B:7:0x0012, B:12:0x002d), top: B:19:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c() {
        /*
            r3 = this;
            int r0 = r3.f39176i
            if (r0 != 0) goto L2f
            com.sigmob.sdk.base.i r0 = com.sigmob.sdk.base.i.a()     // Catch: java.lang.Throwable -> Le
            int r0 = r0.g()     // Catch: java.lang.Throwable -> Le
            r3.f39176i = r0     // Catch: java.lang.Throwable -> Le
        Le:
            int r0 = r3.f39176i
            if (r0 != 0) goto L2f
            android.content.Context r0 = com.sigmob.sdk.b.e()     // Catch: java.lang.Throwable -> L2f
            com.sigmob.windad.consent.WindAdConsentInformation r0 = com.sigmob.windad.consent.WindAdConsentInformation.getInstance(r0)     // Catch: java.lang.Throwable -> L2f
            com.sigmob.windad.consent.ConsentStatus r0 = r0.getConsentStatus()     // Catch: java.lang.Throwable -> L2f
            int[] r1 = com.sigmob.windad.WindAds.AnonymousClass2.f39184a     // Catch: java.lang.Throwable -> L2f
            int r0 = r0.ordinal()     // Catch: java.lang.Throwable -> L2f
            r0 = r1[r0]     // Catch: java.lang.Throwable -> L2f
            r1 = 1
            if (r0 == r1) goto L2d
            r1 = 2
            if (r0 == r1) goto L2d
            goto L2f
        L2d:
            r3.f39176i = r1     // Catch: java.lang.Throwable -> L2f
        L2f:
            com.sigmob.sdk.base.i r0 = com.sigmob.sdk.base.i.a()
            int r1 = r3.f39176i
            r2 = 0
            r0.c(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.windad.WindAds.c():void");
    }

    private void d() {
        try {
            if (this.f39178k == 0) {
                this.f39178k = i.a().c();
            } else {
                i.a().b(this.f39178k, false);
            }
            if (this.f39179l == 0) {
                this.f39179l = i.a().b();
            } else {
                i.a().a(this.f39179l, false);
            }
        } catch (Throwable unused) {
        }
    }

    private void e() {
        try {
            d();
            c();
            i.a().b(this.f39177j, false);
            i.a().a(this.f39175h, false);
        } catch (Throwable th) {
            SigmobLog.e("loadPrivacyInfo: error = " + th.getMessage());
        }
    }

    private void f() {
    }

    public static String getUserId() {
        return ClientMetadata.getUserId();
    }

    public static String getVersion() {
        return n.f36448k;
    }

    public static void requestPermission(Activity activity) {
        if (activity == null || ClientMetadata.isPermissionGranted(activity, "android.permission.READ_PHONE_STATE")) {
            return;
        }
        activity.requestPermissions(new String[]{"android.permission.READ_PHONE_STATE"}, 0);
    }

    public static void setOAIDCertPem(String str) {
        if (TextUtils.isEmpty(str)) {
            k.e(TAG, "certPem is unavailable.", new Object[0]);
            return;
        }
        try {
            ClientMetadata.setOAIDCertPem(str);
        } catch (Throwable unused) {
            k.f(TAG, "not support OAID module.", new Object[0]);
        }
    }

    public static void setUserId(String str) {
        ClientMetadata.setUserId(str);
    }

    public static WindAds sharedAds() {
        if (f39168a == null) {
            synchronized (WindAds.class) {
                try {
                    if (f39168a == null) {
                        WindAds windAds = new WindAds();
                        windAds.setDebugEnable(true);
                        f39168a = windAds;
                    }
                } finally {
                }
            }
        }
        return f39168a;
    }

    public int a() {
        return 159;
    }

    public void checkAndResGuard(Context context) {
        if (ResourceUtil.getLayoutId(context, "sig_new_interstitial_layout") != 0) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList<String>() { // from class: com.sigmob.windad.WindAds.1
            {
                add("R.string.sig_*");
                add("R.integer.sig_*");
                add("R.layout.sig_*");
                add("R.drawable.sig_*");
                add("R.style.sig_*");
                add("R.dimen.sig_*");
                add("R.anim.sig_*");
                add("R.color.sig_*");
                add("R.id.sig_*");
                add("R.attr.sig_*");
            }
        };
        k.f(TAG, "The Wind SDK resources may have been obfuscated by AndResGuard. Please add the following " + arrayList + " to the whitelist.", new Object[0]);
    }

    public int getAgeRestrictedStatus() {
        return this.f39178k;
    }

    public String getAppId() {
        WindAdOptions windAdOptions = this.f39171d;
        if (windAdOptions == null) {
            return null;
        }
        return windAdOptions.getAppId();
    }

    public String getAppKey() {
        WindAdOptions windAdOptions = this.f39171d;
        if (windAdOptions == null) {
            return null;
        }
        return windAdOptions.getAppKey();
    }

    public int getCommonVersion() {
        try {
            return Constants.getVersion();
        } catch (Throwable unused) {
            return 198;
        }
    }

    public Handler getHandler() {
        if (this.f39173f == null) {
            this.f39173f = new Handler(Looper.getMainLooper());
        }
        return this.f39173f;
    }

    public WindAdOptions getOptions() {
        return this.f39171d;
    }

    public String getSDKToken() throws InterruptedException {
        if (this.f39170c) {
            k.c(TAG, "getSDKToken: SDK is ready, Retrieving token.", new Object[0]);
            return Sigmob.getInstance().getSDKToken();
        }
        try {
            this.f39182o.await(o.a().ag(), TimeUnit.MILLISECONDS);
            if (this.f39170c) {
                k.c(TAG, "getSDKToken(await): SDK is ready, Retrieving token.", new Object[0]);
                return Sigmob.getInstance().getSDKToken();
            }
        } catch (Exception e2) {
            k.f(TAG, "getSDKToken: error = " + e2.getMessage(), new Object[0]);
        }
        k.f(TAG, "getSDKToken: SDK is not ready, Cannot retrieve token.", new Object[0]);
        return null;
    }

    public boolean getSensorStatus() {
        return this.f39181n;
    }

    public int getUserAge() {
        return this.f39179l;
    }

    public int getUserGDPRConsentStatus() {
        return this.f39176i;
    }

    public String getWindUid() {
        try {
            return ClientMetadata.getUid();
        } catch (Exception e2) {
            SigmobLog.e("getWindUid: error = " + e2.getMessage());
            return null;
        }
    }

    public boolean init(Context context, WindAdOptions windAdOptions, OnInitializationListener onInitializationListener) {
        synchronized (this) {
            try {
                this.f39174g = onInitializationListener;
                if (!this.f39169b) {
                    if (context == null) {
                        a("context is null.");
                    } else if (windAdOptions == null) {
                        a("WindAdOptions is null.");
                    } else if (TextUtils.isEmpty(windAdOptions.getAppId())) {
                        a("appId is empty.");
                    } else {
                        int commonVersion = getCommonVersion();
                        if (commonVersion < 198) {
                            a("Your COMMON Lib version must be equal or higher than 198, current Version [ " + commonVersion + " ]");
                        } else {
                            this.f39171d = windAdOptions;
                            this.f39180m = context.getApplicationContext();
                            this.f39169b = true;
                            checkAndResGuard(context);
                            f();
                        }
                    }
                    return false;
                }
                b();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isAdult() {
        return this.f39175h;
    }

    public boolean isDebugEnable() {
        return this.f39172e;
    }

    public boolean isInit() {
        return this.f39169b;
    }

    public boolean isPersonalizedAdvertisingOn() {
        return this.f39177j;
    }

    public void setAdult(boolean z2) {
        this.f39175h = z2;
        k.b(TAG, "setAdult: result = " + z2, new Object[0]);
        if (this.f39170c) {
            i.a().a(z2, true);
        }
    }

    public void setDebugEnable(boolean z2) throws SecurityException {
        this.f39172e = z2;
        if (n.f36443f.booleanValue()) {
            SigmobLog.setSdkHandlerLevel(z2 ? Level.FINE : Level.SEVERE);
        } else {
            SigmobLog.setSdkHandlerLevel(z2 ? Level.INFO : Level.SEVERE);
        }
    }

    public void setIsAgeRestrictedUser(int i2) {
        this.f39178k = i2;
        if (this.f39170c) {
            i.a().b(i2, true);
        }
    }

    public void setOAIDCertFileName(String str) {
        ClientMetadata.setOaidCertFileName(str);
    }

    public void setPersonalizedAdvertisingOn(boolean z2) {
        this.f39177j = z2;
        k.b(TAG, "setPersonalized: result = " + z2, new Object[0]);
        if (this.f39170c) {
            i.a().b(z2, true);
        }
    }

    public void setSensorStatus(boolean z2) {
        this.f39181n = z2;
        k.b(TAG, "setSensorStatus: status = " + z2, new Object[0]);
    }

    public void setUserAge(int i2) {
        this.f39179l = i2;
        if (this.f39170c) {
            i.a().a(i2, true);
        }
    }

    public void setUserGDPRConsentStatus(int i2) {
        this.f39176i = i2;
        if (this.f39170c) {
            i.a().c(i2, true);
        }
    }

    public void start(OnStartListener onStartListener) {
        synchronized (this) {
            if (this.f39169b) {
                if (!this.f39170c) {
                    try {
                        b.a(this.f39180m.getApplicationContext());
                        e();
                        Sigmob.getInstance().init();
                        this.f39170c = true;
                        k.b(TAG, "start: appId = " + getAppId(), new Object[0]);
                        this.f39182o.countDown();
                    } catch (Throwable th) {
                        if (onStartListener == null) {
                            k.f(TAG, "start: error = " + th.getMessage(), new Object[0]);
                            this.f39182o.countDown();
                            return;
                        }
                        try {
                            onStartListener.onStartFail("Wind SDK Start fail Exception " + th.getMessage());
                            k.f(TAG, "start: error = " + th.getMessage(), new Object[0]);
                            this.f39182o.countDown();
                            return;
                        } catch (Throwable th2) {
                            this.f39182o.countDown();
                            throw th2;
                        }
                    }
                }
                if (onStartListener != null) {
                    onStartListener.onStartSuccess();
                }
            } else if (onStartListener != null) {
                onStartListener.onStartFail("Wind SDK Start fail, need Init SDK first.");
            }
        }
    }

    private void a(String str) {
        k.f(TAG, "notifyInitError: error = " + str, new Object[0]);
        OnInitializationListener onInitializationListener = this.f39174g;
        if (onInitializationListener == null) {
            return;
        }
        onInitializationListener.onInitializationFail(str);
    }
}

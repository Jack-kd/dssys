package com.czhj.sdk.common;

import android.annotation.SuppressLint;
import android.app.DownloadManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowInsets;
import com.czhj.devicehelper.DeviceHelper;
import com.czhj.devicehelper.cnoaid.c;
import com.czhj.devicehelper.msaoaId.a;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import com.czhj.sdk.common.Database.SQLiteTrackHelper;
import com.czhj.sdk.common.ThreadPool.RepeatingHandlerRunnable;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.mta.BuriedPointManager;
import com.czhj.sdk.common.network.SigmobRequestUtil;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.common.utils.AdvertisingId;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.common.utils.DeviceUtils;
import com.czhj.sdk.common.utils.IdentifierManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.common.utils.RomUtils;
import com.czhj.sdk.common.utils.SharedPreferencesUtil;
import com.czhj.sdk.logger.SigmobLog;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class ClientMetadata implements IdentifierManager.AdvertisingIdChangeListener {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f29208a = new AtomicInteger(1);

    /* renamed from: b, reason: collision with root package name */
    private static String f29209b = "-1";

    /* renamed from: c, reason: collision with root package name */
    private static String f29210c;

    /* renamed from: d, reason: collision with root package name */
    private static volatile ClientMetadata f29211d;

    /* renamed from: g, reason: collision with root package name */
    private static String f29212g;

    /* renamed from: A, reason: collision with root package name */
    private int f29213A;

    /* renamed from: B, reason: collision with root package name */
    private boolean f29214B;

    /* renamed from: C, reason: collision with root package name */
    private long f29215C;

    /* renamed from: e, reason: collision with root package name */
    private Location f29216e;

    /* renamed from: f, reason: collision with root package name */
    private IdentifierManager f29217f;

    /* renamed from: h, reason: collision with root package name */
    private int f29218h;

    /* renamed from: j, reason: collision with root package name */
    private String f29220j;

    /* renamed from: k, reason: collision with root package name */
    private String f29221k;

    /* renamed from: l, reason: collision with root package name */
    private String f29222l;

    /* renamed from: m, reason: collision with root package name */
    private String f29223m;

    /* renamed from: n, reason: collision with root package name */
    private Context f29224n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f29225o;

    /* renamed from: p, reason: collision with root package name */
    private String f29226p;

    /* renamed from: q, reason: collision with root package name */
    private String f29227q;

    /* renamed from: r, reason: collision with root package name */
    private String f29228r;

    /* renamed from: s, reason: collision with root package name */
    private String f29229s;

    /* renamed from: t, reason: collision with root package name */
    private String f29230t;

    /* renamed from: u, reason: collision with root package name */
    private long f29231u;

    /* renamed from: v, reason: collision with root package name */
    private int f29232v;

    /* renamed from: w, reason: collision with root package name */
    private int f29233w;

    /* renamed from: x, reason: collision with root package name */
    private Display f29234x;

    /* renamed from: y, reason: collision with root package name */
    private RepeatingHandlerRunnable f29235y;

    /* renamed from: i, reason: collision with root package name */
    private boolean f29219i = true;

    /* renamed from: z, reason: collision with root package name */
    private boolean f29236z = false;

    public enum a {
        FORCE_PORTRAIT("portrait"),
        FORCE_LANDSCAPE("landscape"),
        DEVICE_ORIENTATION("device"),
        UNDEFINED("");

        private final String mKey;

        a(String str) {
            this.mKey = str;
        }
    }

    private String c() {
        try {
            if (Build.VERSION.SDK_INT > 28 && !Config.sharedInstance().getOaidApiDisable()) {
                if (!TextUtils.isEmpty(this.f29229s)) {
                    return this.f29229s;
                }
                if (this.f29213A <= 10 && !this.f29214B && System.currentTimeMillis() - this.f29215C >= 1000) {
                    this.f29215C = System.currentTimeMillis();
                    this.f29214B = true;
                    this.f29213A++;
                    com.czhj.devicehelper.cnoaid.a.a(this.f29224n, new c() { // from class: com.czhj.sdk.common.ClientMetadata.2
                        @Override // com.czhj.devicehelper.cnoaid.c
                        public void a(Exception exc) {
                            ClientMetadata.this.f29214B = false;
                        }

                        @Override // com.czhj.devicehelper.cnoaid.c
                        public void a(String str) {
                            ClientMetadata.this.f29214B = false;
                            if (TextUtils.isEmpty(str) || str.equalsIgnoreCase(ClientMetadata.this.f29229s)) {
                                return;
                            }
                            ClientMetadata.this.f29229s = str;
                            if (str.equalsIgnoreCase(ClientMetadata.this.f29226p)) {
                                return;
                            }
                            SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(ClientMetadata.this.f29224n).edit();
                            editorEdit.putString("oaid_aes_gcm", AESUtil.EncryptString(str, Constants.AESKEY));
                            editorEdit.apply();
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private boolean d() {
        return !this.f29224n.getPackageManager().queryIntentActivities(new Intent("android.settings.USAGE_ACCESS_SETTINGS"), 65536).isEmpty();
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i2;
        int i3;
        do {
            atomicInteger = f29208a;
            i2 = atomicInteger.get();
            i3 = i2 + 1;
            if (i3 > 16777215) {
                i3 = 1;
            }
        } while (!atomicInteger.compareAndSet(i2, i3));
        return i2;
    }

    public static Long getBootSystemTime() {
        return Long.valueOf(DeviceUtils.getBootSystemTime());
    }

    public static String getCPUInfo() {
        try {
            return DeviceUtils.getCPUInfo();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getCPUModel() {
        return Build.BOARD;
    }

    public static String getCell_ip() {
        return DeviceUtils.getCell_ip();
    }

    public static String getDeviceBrand() {
        return DeviceUtils.getDeviceBrand();
    }

    public static String getDeviceManufacturer() {
        return DeviceUtils.getDeviceManufacturer();
    }

    public static String getDeviceModel() {
        return DeviceUtils.getDeviceModel();
    }

    public static Integer getDeviceOSLevel() {
        return Integer.valueOf(DeviceUtils.getDeviceOSLevel());
    }

    public static String getDeviceOsVersion() {
        return DeviceUtils.getDeviceOsVersion();
    }

    public static ClientMetadata getInstance() {
        if (f29211d == null) {
            synchronized (ClientMetadata.class) {
                try {
                    if (f29211d == null) {
                        f29211d = new ClientMetadata();
                    }
                } finally {
                }
            }
        }
        return f29211d;
    }

    public static String getMacAddress() {
        try {
            return DeviceHelper.getMacAddress();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static PackageInfo getPackageInfoWithUri(Context context, String str) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Map<String, String> getQueryParamMap(Uri uri) {
        HashMap map = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            map.put(str, TextUtils.join(",", uri.getQueryParameters(str)));
        }
        return map;
    }

    public static String getUid() {
        return f29212g;
    }

    public static String getUserId() {
        return TextUtils.isEmpty(f29209b) ? "-1" : f29209b;
    }

    public static String getVAID() {
        try {
            return DeviceHelper.getVAID();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean isEmulator() {
        try {
            return DeviceUtils.isEmulator();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isPermissionGranted(Context context, String str) {
        return context != null && context.checkSelfPermission(str) == 0;
    }

    public static boolean isRoot() {
        try {
            return DeviceUtils.isRoot();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void setOAIDCertPem(String str) {
        try {
            com.czhj.devicehelper.msaoaId.a.a(str);
        } catch (Throwable unused) {
            SigmobLog.e("not support OAID Module");
        }
    }

    public static void setOaidCertFileName(String str) {
        try {
            com.czhj.devicehelper.msaoaId.a.b(str);
        } catch (Throwable unused) {
            SigmobLog.e("not support OAID Module");
        }
    }

    public static void setUserId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f29209b = str;
    }

    public DownloadManager a() {
        return (DownloadManager) this.f29224n.getSystemService("download");
    }

    public int getActiveNetworkType() {
        try {
            return DeviceUtils.getActiveNetworkType().getId();
        } catch (Throwable unused) {
            return DeviceUtils.NetworkType.UNKNOWN.getId();
        }
    }

    public String getAdvertisingId() {
        return null;
    }

    public String getAndroidId() {
        try {
            return DeviceUtils.getAndroidId(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getApkMd5() {
        try {
            return DeviceUtils.getApkSha1OrMd5(this.f29224n, "MD5");
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getApkSha1() {
        try {
            return DeviceUtils.getApkSha1OrMd5(this.f29224n, "SHA1");
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getAppName() {
        return AppPackageUtil.getAppName(this.f29224n);
    }

    public String getAppPackageName() {
        try {
            return AppPackageUtil.getAppPackageName(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getAppVersion() {
        try {
            return AppPackageUtil.getAppVersionFromContext(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public Float getBatteryLevel() {
        try {
            return Float.valueOf(DeviceUtils.getBatteryLevel(this.f29224n));
        } catch (Throwable unused) {
            return Float.valueOf(0.0f);
        }
    }

    public Boolean getBatterySaveEnable() {
        try {
            return Boolean.valueOf(DeviceUtils.getBatterySaveEnable(this.f29224n));
        } catch (Throwable unused) {
            return Boolean.FALSE;
        }
    }

    public Integer getBatteryState() {
        try {
            return Integer.valueOf(DeviceUtils.getBatteryState(this.f29224n));
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String getBlueToothName() {
        try {
            return DeviceUtils.getBlueToothName(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getBootId() {
        try {
        } catch (Throwable th) {
            SigmobLog.e("getBootId: error = " + th.getMessage());
        }
        if (Config.sharedInstance().isDisableBootMark()) {
            return "";
        }
        if (TextUtils.isEmpty(f29210c)) {
            return f29210c;
        }
        String strReplaceAll = f29210c.replaceAll("\\s*|\t|\r|\n", "");
        f29210c = strReplaceAll;
        if (strReplaceAll.length() > 36) {
            f29210c = f29210c.substring(0, 36);
        }
        SigmobLog.i("getBootId: bootId = " + f29210c);
        return f29210c;
    }

    public Context getContext() {
        return this.f29224n;
    }

    public int getDensityDpi() {
        try {
            return (int) DeviceUtils.getDensityDpi(this.f29224n);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String getDeviceId() {
        try {
            return getDeviceId(-1);
        } catch (Throwable th) {
            SigmobLog.e("getDeviceId:" + th.getMessage());
            return null;
        }
    }

    public Locale getDeviceLocale() {
        try {
            return DeviceUtils.getDeviceLocale(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getDeviceName() {
        try {
            return DeviceUtils.getDeviceName(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public Integer getDeviceScreenHeightDip() {
        try {
            return Integer.valueOf(DeviceUtils.getDeviceScreenHeightDip(this.f29224n));
        } catch (Throwable unused) {
            return 0;
        }
    }

    public Integer getDeviceScreenRealHeightDip() {
        try {
            return Integer.valueOf(DeviceUtils.getDeviceScreenRealHeightDip(this.f29224n));
        } catch (Throwable unused) {
            return null;
        }
    }

    public Integer getDeviceScreenRealWidthDip() {
        try {
            return Integer.valueOf(DeviceUtils.getDeviceScreenRealWidthDip(this.f29224n));
        } catch (Throwable unused) {
            return null;
        }
    }

    public Integer getDeviceScreenWidthDip() {
        try {
            return Integer.valueOf(DeviceUtils.getDeviceScreenWidthDip(this.f29224n));
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String getDeviceSerial() {
        try {
            return DeviceUtils.getDeviceSerial();
        } catch (Throwable unused) {
            return null;
        }
    }

    public DisplayMetrics getDisplayMetrics() {
        try {
            return DeviceUtils.getDisplayMetrics(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getIMSI() {
        try {
            return DeviceHelper.getIMSI(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public int getInsetBottom() {
        return this.f29218h;
    }

    public long getInstallTime() {
        return this.f29231u;
    }

    public boolean getLimitAdTrackingEnabled() {
        return false;
    }

    @SuppressLint({"MissingPermission"})
    public Location getLocation() {
        if (!this.f29225o) {
            return null;
        }
        Location location = this.f29216e;
        if (location != null) {
            return location;
        }
        LocationManager locationManager = getLocationManager();
        if (locationManager != null && DeviceUtils.isCanRetryLocation()) {
            SigmobLog.d("private :use_location ");
            Location lastKnownLocation = locationManager.getLastKnownLocation("passive");
            if (lastKnownLocation != null) {
                this.f29216e = lastKnownLocation;
            }
        }
        return this.f29216e;
    }

    public LocationManager getLocationManager() {
        try {
            if (DeviceUtils.isCanUseLocation(this.f29224n)) {
                return (LocationManager) this.f29224n.getSystemService("location");
            }
            return null;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public String getNetworkOperatorForUrl() {
        try {
            return DeviceUtils.getNetworkOperatorForUrl(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getNetworkOperatorName() {
        try {
            return DeviceUtils.getNetworkOperatorName(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getOAID() {
        int disable_up_OAid = Config.sharedInstance().getDisable_up_OAid();
        boolean oaidApiDisable = Config.sharedInstance().getOaidApiDisable();
        if ((disable_up_OAid < 0 || disable_up_OAid > 1) && oaidApiDisable) {
            return null;
        }
        String oaid_sdk = getOAID_SDK();
        if (TextUtils.isEmpty(oaid_sdk) && this.f29236z) {
            oaid_sdk = c();
        }
        if (TextUtils.isEmpty(oaid_sdk) || oaid_sdk.equalsIgnoreCase(this.f29226p)) {
            return this.f29226p;
        }
        this.f29226p = oaid_sdk;
        return oaid_sdk;
    }

    public String getOAID_API() {
        return this.f29229s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
    
        if (android.os.Build.VERSION.SDK_INT > 28) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getOAID_SDK() {
        /*
            r3 = this;
            r0 = 1
            com.czhj.sdk.common.models.Config r1 = com.czhj.sdk.common.models.Config.sharedInstance()     // Catch: java.lang.Throwable -> L1a
            int r1 = r1.getDisable_up_OAid()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L13
            if (r1 == r0) goto Le
            goto L1a
        Le:
            java.lang.String r0 = r3.b()     // Catch: java.lang.Throwable -> L1a
            return r0
        L13:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L1a
            r2 = 28
            if (r1 <= r2) goto L1a
            goto Le
        L1a:
            r3.f29214B = r0
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.sdk.common.ClientMetadata.getOAID_SDK():java.lang.String");
    }

    public Integer getOrientationInt() {
        try {
            return Integer.valueOf(DeviceUtils.getOrientationInt(this.f29224n));
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String getPermission(Context context) {
        StringBuilder sb;
        String string = "";
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            String[] strArr = packageManager.getPackageInfo(packageName, 4096).requestedPermissions;
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (packageManager.checkPermission(strArr[i2], packageName) == 0) {
                    if (i2 == strArr.length - 1) {
                        sb = new StringBuilder();
                        sb.append(string);
                        sb.append(strArr[i2]);
                    } else {
                        sb = new StringBuilder();
                        sb.append(string);
                        sb.append(strArr[i2]);
                        sb.append(",");
                    }
                    string = sb.toString();
                }
            }
            SigmobLog.d("permissionReq:" + string);
            return !TextUtils.isEmpty(string) ? Base64.encodeToString(string.getBytes(), 2) : string;
        } catch (Throwable th) {
            th.printStackTrace();
            return string;
        }
    }

    public DisplayMetrics getRealMetrics() {
        try {
            return DeviceUtils.getRealMetrics(this.f29224n);
        } catch (Throwable unused) {
            return DeviceUtils.getDisplayMetrics(this.f29224n);
        }
    }

    public String getRotation() {
        try {
            return DeviceUtils.getRotation(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getSDCardPath() {
        try {
            return DeviceUtils.getSDCardPath(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public int getScreenOrientation(Context context) {
        Display display = DeviceUtils.getDisplay(context);
        if (display == null) {
            return 0;
        }
        return display.getRotation();
    }

    public String getStringResources(String str, String str2) {
        return ResourceUtil.getString(this.f29224n, str, str2, new Object[0]);
    }

    public int getStyleResources(String str) {
        return ResourceUtil.getStyleId(this.f29224n, str);
    }

    public Long getSystemTotalMemorySize() {
        try {
            return Long.valueOf(DeviceUtils.getSysteTotalMemorySize(this.f29224n));
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getTargetSdkVersion() {
        try {
            if (!TextUtils.isEmpty(this.f29230t)) {
                return this.f29230t;
            }
            String strValueOf = String.valueOf(this.f29224n.getApplicationInfo().targetSdkVersion);
            this.f29230t = strValueOf;
            return strValueOf;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getUDID() {
        String str = this.f29228r;
        if (str != null) {
            return str;
        }
        this.f29228r = UUID.randomUUID().toString();
        SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(this.f29224n).edit();
        editorEdit.putString("sig_UDID", this.f29228r);
        editorEdit.apply();
        return this.f29228r;
    }

    public String getUpdateId() {
        try {
            if (Config.sharedInstance().isDisableBootMark()) {
                return "";
            }
        } catch (Throwable th) {
            SigmobLog.e("getUpdateId: error = " + th.getMessage());
        }
        return this.f29223m;
    }

    public String getWifiName() {
        try {
            return DeviceHelper.getWifiName(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getWifimac() {
        try {
            return DeviceHelper.getWifimac(this.f29224n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public synchronized void initialize(Context context) {
        String str;
        try {
            if (this.f29224n == null) {
                Context applicationContext = context.getApplicationContext();
                this.f29224n = applicationContext;
                long j2 = SharedPreferencesUtil.getSharedPreferences(applicationContext).getLong("install_time", 0L);
                this.f29231u = j2;
                if (j2 == 0) {
                    PackageInfo packageInfo = AppPackageUtil.getPackageInfo(context);
                    this.f29231u = packageInfo == null ? System.currentTimeMillis() / 1000 : packageInfo.firstInstallTime / 1000;
                    SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(this.f29224n).edit();
                    editorEdit.putLong("install_time", this.f29231u);
                    editorEdit.apply();
                }
                this.f29228r = SharedPreferencesUtil.getSharedPreferences(this.f29224n).getString("sig_UDID", null);
                String string = SharedPreferencesUtil.getSharedPreferences(this.f29224n).getString("uid_aes_gcm", null);
                if (string != null) {
                    f29212g = AESUtil.DecryptString(string, Constants.AESKEY);
                } else {
                    String string2 = SharedPreferencesUtil.getSharedPreferences(this.f29224n).getString("uid", null);
                    f29212g = string2;
                    if (string2 != null) {
                        SharedPreferences.Editor editorEdit2 = SharedPreferencesUtil.getSharedPreferences(this.f29224n).edit();
                        editorEdit2.remove("uid");
                        editorEdit2.putString("uid_aes_gcm", AESUtil.EncryptString(f29212g, Constants.AESKEY));
                        editorEdit2.apply();
                    }
                }
                String string3 = SharedPreferencesUtil.getSharedPreferences(this.f29224n).getString("oaid_aes_gcm", null);
                if (string3 != null) {
                    this.f29226p = AESUtil.DecryptString(string3, Constants.AESKEY);
                } else {
                    String string4 = SharedPreferencesUtil.getSharedPreferences(this.f29224n).getString("oaid", null);
                    this.f29226p = string4;
                    if (string4 != null) {
                        SharedPreferences.Editor editorEdit3 = SharedPreferencesUtil.getSharedPreferences(this.f29224n).edit();
                        editorEdit3.remove("oaid");
                        editorEdit3.putString("oaid_aes_gcm", AESUtil.EncryptString(this.f29226p, Constants.AESKEY));
                        editorEdit3.apply();
                    }
                }
                this.f29217f = new IdentifierManager(this.f29224n, this);
                SQLiteMTAHelper.initialize(this.f29224n);
                SQLiteTrackHelper.initialize(this.f29224n);
                BuriedPointManager.getInstance().start();
                try {
                    DeviceUtils.registerNetworkChange(this.f29224n);
                } catch (Exception e2) {
                    if ((e2.getMessage() == null || !e2.getMessage().contains("Too many requests")) && !e2.getClass().getSimpleName().equals("TooManyRequestsException")) {
                        str = "Failed to register network monitoring: " + e2.getMessage();
                    } else {
                        str = "Failed to register network monitoring: registration limit exceeded - " + e2.getMessage();
                    }
                    SigmobLog.e(str);
                    TrackManager.getInstance().startRetryTracking();
                    ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            RomUtils.getRomInfo();
                        }
                    });
                } catch (Throwable th) {
                    str = "Failed to register network monitoring: " + th.getMessage();
                    SigmobLog.e(str);
                    TrackManager.getInstance().startRetryTracking();
                    ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            RomUtils.getRomInfo();
                        }
                    });
                }
                TrackManager.getInstance().startRetryTracking();
                ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        RomUtils.getRomInfo();
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public boolean isNetworkConnected(String str) {
        try {
            return SigmobRequestUtil.isConnection(new URL(str).getHost());
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean isRetryAble() {
        return this.f29219i;
    }

    public boolean isSDCardAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public boolean isTablet() {
        try {
            return DeviceUtils.isTablet(this.f29224n);
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.czhj.sdk.common.utils.IdentifierManager.AdvertisingIdChangeListener
    public void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
    }

    public void setEnableLocation(boolean z2) {
        this.f29225o = z2;
    }

    public void setLocation(Location location) {
        this.f29216e = location;
    }

    public void setRetryAble(boolean z2) {
        this.f29219i = z2;
    }

    public void setUid(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (!TextUtils.isEmpty(f29212g) && str.equalsIgnoreCase(f29212g)) {
                return;
            }
            f29212g = str;
            SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(this.f29224n).edit();
            editorEdit.putString("uid_aes_gcm", AESUtil.EncryptString(str, Constants.AESKEY));
            editorEdit.apply();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public void setWindInsets(WindowInsets windowInsets) {
        if (windowInsets == null || !windowInsets.isRound()) {
            return;
        }
        this.f29218h = windowInsets.getSystemWindowInsetBottom();
    }

    private String b() {
        if (!TextUtils.isEmpty(this.f29227q)) {
            return this.f29227q;
        }
        try {
            DeviceHelper.getOAID(this.f29224n, new a.InterfaceC0453a() { // from class: com.czhj.sdk.common.ClientMetadata.1
                @Override // com.czhj.devicehelper.msaoaId.a.InterfaceC0453a
                public void a(String str) {
                    if (!TextUtils.isEmpty(str)) {
                        ClientMetadata.this.f29227q = str;
                        if (!str.equalsIgnoreCase(ClientMetadata.this.f29226p)) {
                            SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(ClientMetadata.this.f29224n).edit();
                            editorEdit.putString("oaid_aes_gcm", AESUtil.EncryptString(str, Constants.AESKEY));
                            editorEdit.apply();
                        }
                    }
                    ClientMetadata.this.f29236z = true;
                }
            });
        } catch (Throwable unused) {
        }
        return this.f29227q;
    }

    public synchronized String getDeviceId(int i2) {
        try {
            if (TextUtils.isEmpty(this.f29220j) && Build.VERSION.SDK_INT < 29) {
                if (DeviceUtils.isCanUsePhoneState(this.f29224n) && DeviceUtils.isCanRetryIMEI()) {
                    this.f29220j = DeviceHelper.getIMEI(this.f29224n);
                    this.f29221k = DeviceHelper.getIMEI(this.f29224n, 0);
                    this.f29222l = DeviceHelper.getIMEI(this.f29224n, 1);
                }
                return null;
            }
            if (i2 == -1) {
                return this.f29220j;
            }
            if (i2 == 0) {
                return this.f29221k;
            }
            return this.f29222l;
        } catch (Throwable th) {
            SigmobLog.e("getDeviceId:" + th.getMessage());
            return null;
        }
    }

    public String getStringResources(String str, String str2, Object... objArr) {
        return ResourceUtil.getString(this.f29224n, str, str2, objArr);
    }
}

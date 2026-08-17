package com.czhj.sdk.common.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.BatteryManager;
import android.os.Build;
import android.os.IBinder;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.work.WorkRequest;
import com.byazt.pu.TTDownloadField;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.kuaishou.weapon.p0.g;
import com.umeng.analytics.pro.bv;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DeviceUtils {

    /* renamed from: A, reason: collision with root package name */
    private static String f29432A = null;

    /* renamed from: B, reason: collision with root package name */
    private static Display f29433B = null;

    /* renamed from: b, reason: collision with root package name */
    private static final int f29435b = 31457280;

    /* renamed from: c, reason: collision with root package name */
    private static final String f29436c = "getSimState";

    /* renamed from: d, reason: collision with root package name */
    private static final String f29437d = "getImei";

    /* renamed from: e, reason: collision with root package name */
    private static final String f29438e = "getLine1Number";

    /* renamed from: f, reason: collision with root package name */
    private static final int f29439f = 31457280;

    /* renamed from: g, reason: collision with root package name */
    private static final int f29440g = 104857600;

    /* renamed from: h, reason: collision with root package name */
    private static final int f29441h = -1;

    /* renamed from: i, reason: collision with root package name */
    private static String f29442i;

    /* renamed from: k, reason: collision with root package name */
    private static String f29444k;

    /* renamed from: l, reason: collision with root package name */
    private static String f29445l;

    /* renamed from: m, reason: collision with root package name */
    private static String f29446m;

    /* renamed from: n, reason: collision with root package name */
    private static String f29447n;

    /* renamed from: p, reason: collision with root package name */
    private static boolean f29449p;

    /* renamed from: q, reason: collision with root package name */
    private static long f29450q;

    /* renamed from: r, reason: collision with root package name */
    private static long f29451r;

    /* renamed from: s, reason: collision with root package name */
    private static long f29452s;

    /* renamed from: t, reason: collision with root package name */
    private static long f29453t;

    /* renamed from: v, reason: collision with root package name */
    private static Network f29455v;

    /* renamed from: w, reason: collision with root package name */
    private static long f29456w;

    /* renamed from: x, reason: collision with root package name */
    private static String f29457x;

    /* renamed from: y, reason: collision with root package name */
    private static String f29458y;

    /* renamed from: z, reason: collision with root package name */
    private static String f29459z;

    /* renamed from: a, reason: collision with root package name */
    static final String[] f29434a = {"/system/lib/libdroid4x.so", "/system/bin/mount.vboxsf", "/system/lib/vboxguest.ko", "/etc/mumu-configs", "/system/lib/vboxsf.ko", "/system/lib/vboxvideo.ko", "/data/.bluestacks.prop", "/system/bin/microvirt-vbox-sf", "/system/lib/tboxsf.ko", "/system/bin/androVM-vbox-sf", "/system/bin/microvirtd", "/system/bin/windroyed", "/system/lib/libdroid4x.so"};

    /* renamed from: j, reason: collision with root package name */
    private static int f29443j = 0;

    /* renamed from: o, reason: collision with root package name */
    private static NetworkType f29448o = NetworkType.UNKNOWN;

    /* renamed from: u, reason: collision with root package name */
    private static ArrayList<Network> f29454u = new ArrayList<>();

    public static class NetBroadcastReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action != null && action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                DeviceUtils.updateNetworkType(context);
            }
        }
    }

    public enum NetworkType {
        UNKNOWN(0),
        ETHERNET(101),
        WIFI(100),
        MOBILE(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        MOBILE_4G(4),
        MOBILE_5G(5);

        private final int mId;

        NetworkType(int i2) {
            this.mId = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static NetworkType b(Context context, int i2) {
            if (i2 != 0) {
                if (i2 == 1) {
                    return WIFI;
                }
                if (i2 != 2 && i2 != 3 && i2 != 4 && i2 != 5) {
                    return i2 != 9 ? UNKNOWN : ETHERNET;
                }
            }
            return DeviceUtils.getDataNetworkType(context);
        }

        public int getId() {
            return this.mId;
        }

        @Override // java.lang.Enum
        public String toString() {
            return Integer.toString(this.mId);
        }
    }

    public static long diskCacheSizeBytes(File file, long j2) {
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j2 = (statFs.getBlockCount() * statFs.getBlockSize()) / 50;
        } catch (IllegalArgumentException unused) {
            SigmobLog.d("Unable to calculate 2% of available disk space, defaulting to minimum");
        }
        return Math.max(Math.min(j2, 104857600L), 31457280L);
    }

    public static NetworkType getActiveNetworkType() {
        return f29448o;
    }

    public static String getAndroidId(Context context) {
        if (f29446m == null && context != null) {
            try {
                SigmobLog.d("private : AndroidId");
                f29446m = Settings.Secure.getString(context.getContentResolver(), "android_id");
            } catch (Throwable th) {
                f29446m = "";
                SigmobLog.e(th.getMessage());
                f29446m = "";
            }
        }
        return f29446m;
    }

    public static String getApkSha1OrMd5(Context context, String str) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException {
        Signature[] signatureArr;
        Signature signature;
        String str2;
        String str3;
        String strSubstring = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equals("SHA1") && (str3 = f29457x) != null) {
            return str3;
        }
        if (str.equals("MD5") && (str2 = f29458y) != null) {
            return str2;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
                byte[] byteArray = signature.toByteArray();
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                if (messageDigest != null) {
                    byte[] bArrDigest = messageDigest.digest(byteArray);
                    StringBuilder sb = new StringBuilder();
                    for (byte b3 : bArrDigest) {
                        sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3).toUpperCase());
                        sb.append(":");
                    }
                    strSubstring = sb.substring(0, sb.length() - 1);
                    if (str.equals("SHA1")) {
                        f29457x = strSubstring;
                        return strSubstring;
                    }
                    if (str.equals("MD5")) {
                        f29458y = strSubstring;
                    }
                }
            }
            return strSubstring;
        } catch (Exception e2) {
            SigmobLog.e(e2.getMessage());
            return null;
        }
    }

    @SuppressLint({"PrivateApi"})
    public static int getAppLaunchCount(Context context, String str) throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            SigmobLog.d("getAppLaunchCount==" + str);
            if (launchIntentForPackage == null) {
                return 0;
            }
            ComponentName component = launchIntentForPackage.getComponent();
            SigmobLog.d("getAppLaunchCount==" + str);
            Object objInvoke = Class.forName("com.android.internal.app.IUsageStats$Stub").getMethod("asInterface", IBinder.class).invoke(null, Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "usagestats"));
            if (objInvoke == null) {
                return 0;
            }
            Object objInvoke2 = objInvoke.getClass().getMethod("getPkgUsageStats", ComponentName.class).invoke(objInvoke, component);
            SigmobLog.d("getAppLaunchCount==" + str);
            if (objInvoke2 == null) {
                return 0;
            }
            Class<?> cls = Class.forName("com.android.internal.os.PkgUsageStats");
            SigmobLog.d("getAppLaunchCount==" + str);
            return cls.getDeclaredField("launchCount").getInt(objInvoke2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static float getBatteryLevel(Context context) {
        if (((BatteryManager) context.getSystemService("batterymanager")) == null) {
            return 0.0f;
        }
        return r1.getIntProperty(4) / 100.0f;
    }

    public static boolean getBatterySaveEnable(Context context) {
        BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
        return batteryManager != null && batteryManager.getIntProperty(4) < 16;
    }

    public static int getBatteryState(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
        if (batteryManager == null) {
            return 0;
        }
        int intProperty = i2 >= 26 ? batteryManager.getIntProperty(6) : 0;
        if (intProperty == 2) {
            return 2;
        }
        if (intProperty == 3 || intProperty == 4) {
            return 1;
        }
        return intProperty != 5 ? 0 : 3;
    }

    public static String getBlueToothName(Context context) {
        if (TextUtils.isEmpty(f29447n)) {
            try {
                f29447n = Settings.Secure.getString(context.getContentResolver(), "bluetooth_name");
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }
        return f29447n;
    }

    public static long getBootSystemTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public static String getCPUInfo() {
        try {
            return Build.SUPPORTED_ABIS[0];
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String getCell_ip() throws SocketException {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                        return inetAddressNextElement.getHostAddress();
                    }
                }
            }
            return "0.0.0.0";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "0.0.0.0";
        }
    }

    public static ConnectivityManager getConnectivityManager(Context context) {
        if (context != null) {
            return (ConnectivityManager) context.getSystemService("connectivity");
        }
        return null;
    }

    @SuppressLint({"MissingPermission"})
    public static NetworkType getDataNetworkType(Context context) {
        NetworkInfo activeNetworkInfo;
        SigmobLog.d("getDataNetworkType ");
        TelephonyManager telephonyManager = getTelephonyManager(context);
        int dataNetworkType = telephonyManager != null ? telephonyManager.getDataNetworkType() : 0;
        ConnectivityManager connectivityManager = getConnectivityManager(context);
        if (dataNetworkType == 0 && connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            dataNetworkType = activeNetworkInfo.getSubtype();
        }
        SigmobLog.d("getDataNetworkType " + dataNetworkType);
        if (dataNetworkType == 20) {
            return NetworkType.MOBILE_5G;
        }
        switch (dataNetworkType) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return NetworkType.MOBILE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return NetworkType.MOBILE_3G;
            case 13:
                return NetworkType.MOBILE_4G;
            default:
                return NetworkType.MOBILE;
        }
    }

    public static float getDensityDpi(Context context) {
        try {
            return getRealMetrics(context).densityDpi;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return 0.0f;
        }
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    public static String getDeviceDispaly() {
        return Build.DISPLAY;
    }

    public static Locale getDeviceLocale(Context context) {
        try {
            return context.getResources().getConfiguration().locale;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String getDeviceManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static String getDeviceName(Context context) {
        try {
            return Settings.Global.getString(context.getContentResolver(), bv.f48883J);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static int getDeviceOSLevel() {
        return Build.VERSION.SDK_INT;
    }

    public static String getDeviceOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public static int getDeviceScreenHeightDip(Context context) {
        if (context == null) {
            return 0;
        }
        return Dips.screenHeightAsIntDips(context);
    }

    public static int getDeviceScreenRealHeightDip(Context context) {
        if (context == null) {
            return 0;
        }
        return Dips.pixelsToIntDips(getRealMetrics(context).heightPixels, context);
    }

    public static int getDeviceScreenRealWidthDip(Context context) {
        if (context == null) {
            return 0;
        }
        return Dips.pixelsToIntDips(getRealMetrics(context).widthPixels, context);
    }

    public static int getDeviceScreenWidthDip(Context context) {
        return Dips.screenWidthAsIntDips(context);
    }

    public static String getDeviceSerial() {
        return Build.SERIAL;
    }

    public static String getDeviceType(Context context) {
        return isTablet(context) ? "pad" : "phone";
    }

    public static Display getDisplay(Context context) {
        if (f29433B == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return null;
            }
            f29433B = windowManager.getDefaultDisplay();
        }
        return f29433B;
    }

    public static DisplayMetrics getDisplayMetrics(Context context) {
        try {
            return context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String getNetworkOperator(Context context) {
        String str = f29432A;
        if (str != null) {
            return str;
        }
        TelephonyManager telephonyManager = getTelephonyManager(context);
        if (telephonyManager != null) {
            f29432A = (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) ? telephonyManager.getSimOperator() : telephonyManager.getNetworkOperator();
            if (f29432A == null) {
                f29432A = "";
            }
        }
        return f29432A;
    }

    public static String getNetworkOperatorForUrl(Context context) {
        return getNetworkOperator(context);
    }

    public static String getNetworkOperatorName(Context context) {
        String str = f29459z;
        if (str != null) {
            return str;
        }
        TelephonyManager telephonyManager = getTelephonyManager(context);
        if (telephonyManager != null) {
            f29459z = (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) ? telephonyManager.getSimOperatorName() : telephonyManager.getNetworkOperatorName();
            if (f29459z == null) {
                f29459z = "";
            }
        }
        return f29459z;
    }

    public static int getOrientationInt(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    public static String getProperty(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            if (objInvoke != null) {
                return (String) objInvoke;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static DisplayMetrics getRealMetrics(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display display = getDisplay(context);
        if (display == null) {
            return context.getResources().getDisplayMetrics();
        }
        display.getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String getRotation(Context context) {
        Display display = getDisplay(context);
        if (display == null) {
            return "0";
        }
        int rotation = display.getRotation();
        return rotation != 1 ? rotation != 2 ? rotation != 3 ? "0" : "270" : "180" : "90";
    }

    public static String getSDCardPath(Context context) {
        for (StorageVolume storageVolume : ((StorageManager) context.getSystemService("storage")).getStorageVolumes()) {
            if (storageVolume.isRemovable()) {
                try {
                    return (String) storageVolume.getClass().getMethod("getPath", null).invoke(storageVolume, null);
                } catch (Exception e2) {
                    SigmobLog.e(e2.getMessage());
                }
            }
        }
        return null;
    }

    public static long getSysteTotalMemorySize(Context context) {
        long j2 = f29456w;
        if (j2 > 0) {
            return j2;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                long j3 = memoryInfo.totalMem;
                f29456w = j3;
                return j3;
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        return 0L;
    }

    public static TelephonyManager getTelephonyManager(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (!isCanUsePhoneState(context)) {
                return null;
            }
        } catch (Throwable unused) {
        }
        return (TelephonyManager) context.getSystemService("phone");
    }

    public static WindowManager getWindowManger(Context context) {
        return (WindowManager) context.getSystemService("window");
    }

    public static boolean isCanRetryIMEI() {
        boolean z2 = System.currentTimeMillis() - f29450q > WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        if (z2) {
            f29450q = System.currentTimeMillis();
        }
        SigmobLog.d("isCanRetryIMEI status " + z2);
        return z2;
    }

    public static boolean isCanRetryLocation() {
        boolean z2 = System.currentTimeMillis() - f29452s > 36000;
        if (z2) {
            f29452s = System.currentTimeMillis();
        }
        SigmobLog.d("isCanRetryLocation status " + z2);
        return z2;
    }

    public static boolean isCanRetryWIFI() {
        boolean z2 = System.currentTimeMillis() - f29453t > WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        if (z2) {
            f29453t = System.currentTimeMillis();
        }
        SigmobLog.d("isCanRetryWIFI status " + z2);
        return z2;
    }

    public static boolean isCanUseLocation(Context context) {
        boolean z2 = context.checkCallingOrSelfPermission(g.f31166h) == 0 || context.checkCallingOrSelfPermission(g.f31165g) == 0;
        SigmobLog.d("isCanUseLocation status " + z2);
        return z2;
    }

    public static boolean isCanUsePhoneState(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0;
    }

    public static boolean isCanUseWriteExternal(Context context) {
        boolean z2 = context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
        SigmobLog.d("isCanUseWriteExternal status " + z2);
        return z2;
    }

    public static boolean isEmulator() {
        int i2 = f29443j;
        if (i2 > 0) {
            return i2 > 3;
        }
        try {
            String property = getProperty("gsm.version.baseband");
            if (TextUtils.isEmpty(property) || property.contains("1.0.0.0")) {
                f29443j++;
            }
            String property2 = getProperty("ro.build.flavor");
            if (TextUtils.isEmpty(property2)) {
                f29443j++;
            } else if (property2.contains("vbox") || property2.contains("sdk_gphone")) {
                f29443j += 10;
            }
            String property3 = getProperty("ro.product.board");
            if (TextUtils.isEmpty(property3)) {
                f29443j++;
            } else if (property3.contains("android") || property3.contains("goldfish")) {
                f29443j += 10;
            }
            String property4 = getProperty("ro.board.platform");
            if (TextUtils.isEmpty(property4) || property4.contains("android")) {
                f29443j++;
            }
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || str.contains("android")) {
                f29443j++;
            }
            String property5 = getProperty("ro.hardware");
            if (property5 == null) {
                f29443j++;
            } else if (property5.toLowerCase().contains("ttvm") || property5.toLowerCase().contains("nox")) {
                f29443j += 10;
            }
            for (String str2 : f29434a) {
                if (new File(str2).exists()) {
                    SigmobLog.e("find emulator " + str2);
                    f29443j = f29443j + 10;
                }
            }
        } catch (Throwable unused) {
        }
        return f29443j > 3;
    }

    public static boolean isNetworkConnected() {
        return f29449p;
    }

    public static boolean isNetworkValid(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(4) || networkCapabilities.hasCapability(16);
    }

    public static boolean isRoot() {
        if (new File("/system/bin/su").exists() && a("/system/bin/su")) {
            return true;
        }
        return new File("/system/xbin/su").exists() && a("/system/xbin/su");
    }

    public static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static int memoryCacheSizeBytes(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager == null) {
            return 0;
        }
        long memoryClass = activityManager.getMemoryClass();
        try {
            if (a(context.getApplicationInfo().flags, ApplicationInfo.class.getDeclaredField("FLAG_LARGE_HEAP").getInt(null))) {
                memoryClass = ((Integer) new ReflectionUtil.MethodBuilder(activityManager, "getLargeMemoryClass").execute()).intValue();
            }
        } catch (Throwable unused) {
            SigmobLog.d("Unable to reflectively determine large heap size.");
        }
        return (int) Math.min(31457280L, (memoryClass / 8) * 1048576);
    }

    @SuppressLint({"MissingPermission"})
    public static void registerNetworkChange(final Context context) {
        ConnectivityManager connectivityManager = getConnectivityManager(context);
        if (connectivityManager == null) {
            return;
        }
        connectivityManager.registerDefaultNetworkCallback(new ConnectivityManager.NetworkCallback() { // from class: com.czhj.sdk.common.utils.DeviceUtils.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                SigmobLog.d("updateNetworkType registerNetworkCallback onAvailable " + network.hashCode());
                super.onAvailable(network);
                DeviceUtils.f29454u.add(network);
                DeviceUtils.updateNetworkType(context);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                super.onCapabilitiesChanged(network, networkCapabilities);
                DeviceUtils.updateNetworkType(context);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                SigmobLog.d("updateNetworkType registerNetworkCallback onLost" + network.hashCode());
                super.onLost(network);
                NetworkType unused = DeviceUtils.f29448o = NetworkType.UNKNOWN;
                boolean unused2 = DeviceUtils.f29449p = false;
                try {
                    Network unused3 = DeviceUtils.f29455v = network;
                    DeviceUtils.f29454u.remove(network);
                    DeviceUtils.updateNetworkType(context);
                } catch (Throwable unused4) {
                }
            }
        });
    }

    public static void resetRetryIMEI() {
        f29450q = 0L;
    }

    @SuppressLint({"MissingPermission"})
    public static void updateNetworkType(Context context) {
        NetworkCapabilities networkCapabilities;
        try {
            if (a(context)) {
                Network activeNetwork = getConnectivityManager(context).getActiveNetwork();
                if (activeNetwork == null || activeNetwork == f29455v) {
                    NetworkCapabilities networkCapabilities2 = null;
                    for (int size = f29454u.size() - 1; size >= 0; size--) {
                        networkCapabilities2 = getConnectivityManager(context).getNetworkCapabilities(f29454u.get(size));
                        if (networkCapabilities2 != null) {
                            break;
                        }
                    }
                    networkCapabilities = networkCapabilities2;
                } else {
                    networkCapabilities = getConnectivityManager(context).getNetworkCapabilities(activeNetwork);
                }
                if (networkCapabilities != null) {
                    f29449p = isNetworkValid(networkCapabilities);
                    f29448o = (networkCapabilities.hasCapability(12) && networkCapabilities.hasTransport(1)) ? NetworkType.WIFI : (networkCapabilities.hasCapability(12) && networkCapabilities.hasTransport(0)) ? getDataNetworkType(context) : NetworkType.UNKNOWN;
                }
            }
        } catch (Exception unused) {
        }
    }

    private static boolean a(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    private static boolean a(Context context) {
        return context.checkCallingOrSelfPermission(g.f31159a) == 0;
    }

    private static boolean a(String str) {
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec("ls -l " + str);
            String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
            if (line != null && line.length() >= 4) {
                char cCharAt = line.charAt(3);
                if (cCharAt == 's' || cCharAt == 'x') {
                    processExec.destroy();
                    return true;
                }
            }
        } catch (Throwable unused) {
            if (processExec == null) {
                return false;
            }
        }
        processExec.destroy();
        return false;
    }
}

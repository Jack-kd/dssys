package com.ubix.ssp.ad.e.a0;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.widget.LinearLayout;
import com.anythink.core.common.f.g;
import com.byazt.pu.TTDownloadField;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.ad.e.z.h;
import java.io.File;
import java.io.FileFilter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static Context f46112a = null;

    /* renamed from: b, reason: collision with root package name */
    public static int f46113b = 0;

    /* renamed from: c, reason: collision with root package name */
    public static String f46114c = "";

    /* renamed from: z, reason: collision with root package name */
    private static boolean f46137z;

    /* renamed from: d, reason: collision with root package name */
    public static Executor f46115d = y();

    /* renamed from: e, reason: collision with root package name */
    public static ScheduledExecutorService f46116e = z();

    /* renamed from: f, reason: collision with root package name */
    public static ExecutorService f46117f = A();

    /* renamed from: g, reason: collision with root package name */
    private static HashMap<String, Long> f46118g = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    private static String f46119h = "";

    /* renamed from: i, reason: collision with root package name */
    private static final Object f46120i = new Object();

    /* renamed from: j, reason: collision with root package name */
    private static String f46121j = "";

    /* renamed from: k, reason: collision with root package name */
    private static int f46122k = 0;

    /* renamed from: l, reason: collision with root package name */
    private static String f46123l = "";

    /* renamed from: m, reason: collision with root package name */
    private static String f46124m = "";

    /* renamed from: n, reason: collision with root package name */
    private static long f46125n = 0;

    /* renamed from: o, reason: collision with root package name */
    public static long f46126o = 0;

    /* renamed from: p, reason: collision with root package name */
    public static String f46127p = "";

    /* renamed from: q, reason: collision with root package name */
    public static int f46128q = -1;

    /* renamed from: r, reason: collision with root package name */
    private static String f46129r = "";

    /* renamed from: s, reason: collision with root package name */
    private static String f46130s = "";

    /* renamed from: t, reason: collision with root package name */
    private static String f46131t = "";

    /* renamed from: u, reason: collision with root package name */
    private static String f46132u = "";

    /* renamed from: v, reason: collision with root package name */
    private static String f46133v = "";

    /* renamed from: w, reason: collision with root package name */
    private static String f46134w = "";

    /* renamed from: x, reason: collision with root package name */
    private static int f46135x = -1;

    /* renamed from: y, reason: collision with root package name */
    private static int f46136y = 0;

    /* renamed from: A, reason: collision with root package name */
    public static String f46110A = "0";

    /* renamed from: B, reason: collision with root package name */
    public static String f46111B = "0";

    public class a implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.OtherRequestExecuteThread");
        }
    }

    public class b implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.a0.c$c, reason: collision with other inner class name */
    public class ThreadFactoryC0787c implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.RequestCommonExecuteThread");
        }
    }

    public class d implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.ResourceLoadThread");
        }
    }

    public class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f46138a;

        public e(Context context) {
            this.f46138a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                k.a(k.e(this.f46138a).getAbsolutePath(), 104857600L);
                k.a(k.f(this.f46138a).getAbsolutePath(), 209715200L);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class f implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            c.t();
        }
    }

    public class g implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private int f46139a = 0;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f46140b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ArrayList f46141c;

        public g(h hVar, ArrayList arrayList) {
            this.f46140b = hVar;
            this.f46141c = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int iA = new t().a(c.f46112a);
                if (iA != 0) {
                    int i2 = this.f46139a + 1;
                    this.f46139a = i2;
                    if (i2 <= 20) {
                        return;
                    }
                }
                h hVar = this.f46140b;
                if (hVar != null) {
                    hVar.a(iA, this.f46139a);
                }
                if (this.f46141c.get(0) != null) {
                    ((ScheduledFuture) this.f46141c.get(0)).cancel(true);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface h {
        void a(int i2, int i3);
    }

    private c() {
    }

    public static ExecutorService A() {
        if (f46117f == null) {
            f46117f = new ThreadPoolExecutor(5, 5, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new d());
        }
        return f46117f;
    }

    public static boolean B() {
        try {
            if (System.currentTimeMillis() - e("isDebugMode") > com.ubix.ssp.ad.d.b.f45812s) {
                h("isDebugMode");
                Calendar calendar = Calendar.getInstance();
                String str = calendar.get(2) + "-" + calendar.get(5);
                String strD = v.d(f46112a, "ubix_sp_world", "DEBUG_ON");
                if (TextUtils.isEmpty(strD) || !strD.equals(str)) {
                    String strD2 = d("sys.usb.config");
                    if (!TextUtils.isEmpty(strD2)) {
                        if (!strD2.contains("adb")) {
                            f46137z = false;
                            return false;
                        }
                        v.b(f46112a, "ubix_sp_world", "DEBUG_ON", str);
                    }
                }
                f46137z = true;
                return true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f46137z;
    }

    public static boolean C() {
        ActivityManager activityManager;
        Context context = f46112a;
        if (context != null && (activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)) != null && activityManager.getRunningAppProcesses() != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(f46112a.getPackageName()) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int D() {
        int i2;
        try {
            i2 = f46113b;
        } catch (Throwable unused) {
        }
        if (i2 != 0) {
            return i2;
        }
        Class<?> cls = Class.forName("com.huawei.system.BuildEx");
        if ("harmony".equalsIgnoreCase(cls.getMethod("getOsBrand", null).invoke(cls, null).toString())) {
            f46113b = 3;
            return 3;
        }
        f46113b = 1;
        return 1;
    }

    public static Activity a() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("currentActivityThread", null).invoke(null, null);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            for (Object obj : ((Map) declaredField.get(objInvoke)).values()) {
                Class<?> cls2 = obj.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(obj)) {
                    Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                    declaredField3.setAccessible(true);
                    return (Activity) declaredField3.get(obj);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    public static int b(boolean z2) throws NumberFormatException {
        if (!z2) {
            return 0;
        }
        try {
            if (f46135x == -1) {
                long jE = e("getCarrierCode");
                if (com.ubix.ssp.ad.e.a0.d0.c.a(f46112a, "android.permission.READ_PHONE_STATE") && System.currentTimeMillis() - jE > com.ubix.ssp.ad.d.b.f45812s) {
                    h("getCarrierCode");
                    int i2 = Integer.parseInt(((TelephonyManager) f46112a.getSystemService("phone")).getSimOperator());
                    f46135x = i2;
                    return i2;
                }
                f46135x = 0;
            }
            return f46135x;
        } catch (Exception unused) {
            f46135x = 0;
            return 0;
        }
    }

    public static Intent c(String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(805339136);
        intent.setData(Uri.parse(str));
        return intent;
    }

    public static int d(Context context) {
        try {
            return context.getApplicationContext().getPackageManager().getApplicationInfo(n(), 0).icon;
        } catch (Exception e2) {
            e2.printStackTrace();
            return R.drawable.stat_sys_download;
        }
    }

    public static int e(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static String f() {
        return Locale.getDefault().getCountry();
    }

    public static long g() {
        long j2;
        Context context;
        long jLastModified;
        try {
            j2 = f46125n;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (j2 > 0) {
            return j2;
        }
        long jC = v.c(f46112a, "ubix_sp_world", "create_time");
        f46125n = jC;
        if (jC > 0) {
            return jC;
        }
        File parentFile = k.d(f46112a).getParentFile();
        if (parentFile == null || !parentFile.exists()) {
            File parentFile2 = k.b(f46112a).getParentFile();
            if (parentFile2 != null && parentFile2.exists()) {
                context = f46112a;
                jLastModified = parentFile2.lastModified();
                f46125n = jLastModified;
            }
            return f46125n;
        }
        context = f46112a;
        jLastModified = parentFile.lastModified();
        f46125n = jLastModified;
        v.a(context, "ubix_sp_world", "create_time", jLastModified);
        return f46125n;
    }

    public static String h() {
        try {
            if (!TextUtils.isEmpty(f46121j)) {
                return f46121j;
            }
            String id = TimeZone.getDefault().getID();
            f46121j = id;
            return id;
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006f, code lost:
    
        if (r0.equalsIgnoreCase("CDMA2000") == false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int i() {
        /*
            java.lang.String r0 = "getNetType"
            r1 = 1
            android.content.Context r2 = com.ubix.ssp.ad.e.a0.c.f46112a     // Catch: java.lang.Exception -> L83
            java.lang.String r3 = "android.permission.ACCESS_NETWORK_STATE"
            java.lang.String[] r3 = new java.lang.String[]{r3}     // Catch: java.lang.Exception -> L83
            boolean r2 = com.ubix.ssp.ad.e.a0.d0.c.a(r2, r3)     // Catch: java.lang.Exception -> L83
            long r3 = e(r0)     // Catch: java.lang.Exception -> L83
            if (r2 == 0) goto L80
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L83
            long r5 = r5 - r3
            long r2 = com.ubix.ssp.ad.d.b.f45812s     // Catch: java.lang.Exception -> L83
            int r2 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r2 <= 0) goto L80
            h(r0)     // Catch: java.lang.Exception -> L83
            android.content.Context r0 = com.ubix.ssp.ad.e.a0.c.f46112a     // Catch: java.lang.Exception -> L83
            java.lang.String r2 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r2)     // Catch: java.lang.Exception -> L83
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: java.lang.Exception -> L83
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L83
            r2 = 0
            if (r0 == 0) goto L43
            boolean r3 = r0.isAvailable()     // Catch: java.lang.Exception -> L83
            if (r3 != 0) goto L3b
            goto L43
        L3b:
            int r3 = r0.getType()     // Catch: java.lang.Exception -> L83
            if (r3 == 0) goto L49
            if (r3 == r1) goto L46
        L43:
            com.ubix.ssp.ad.e.a0.c.f46136y = r2     // Catch: java.lang.Exception -> L83
            return r2
        L46:
            com.ubix.ssp.ad.e.a0.c.f46136y = r1     // Catch: java.lang.Exception -> L83
            return r1
        L49:
            int r2 = r0.getSubtype()     // Catch: java.lang.Exception -> L83
            java.lang.String r0 = r0.getSubtypeName()     // Catch: java.lang.Exception -> L83
            r3 = 20
            if (r2 == r3) goto L7c
            r3 = 3
            switch(r2) {
                case 1: goto L78;
                case 2: goto L78;
                case 3: goto L71;
                case 4: goto L78;
                case 5: goto L71;
                case 6: goto L71;
                case 7: goto L78;
                case 8: goto L71;
                case 9: goto L71;
                case 10: goto L71;
                case 11: goto L78;
                case 12: goto L71;
                case 13: goto L74;
                case 14: goto L71;
                case 15: goto L71;
                case 16: goto L78;
                case 17: goto L71;
                default: goto L59;
            }     // Catch: java.lang.Exception -> L83
        L59:
            java.lang.String r2 = "TD-SCDMA"
            boolean r2 = r0.equalsIgnoreCase(r2)     // Catch: java.lang.Exception -> L83
            if (r2 != 0) goto L71
            java.lang.String r2 = "WCDMA"
            boolean r2 = r0.equalsIgnoreCase(r2)     // Catch: java.lang.Exception -> L83
            if (r2 != 0) goto L71
            java.lang.String r2 = "CDMA2000"
            boolean r0 = r0.equalsIgnoreCase(r2)     // Catch: java.lang.Exception -> L83
            if (r0 == 0) goto L80
        L71:
            com.ubix.ssp.ad.e.a0.c.f46136y = r3     // Catch: java.lang.Exception -> L83
            return r3
        L74:
            r0 = 4
            com.ubix.ssp.ad.e.a0.c.f46136y = r0     // Catch: java.lang.Exception -> L83
            return r0
        L78:
            r0 = 2
            com.ubix.ssp.ad.e.a0.c.f46136y = r0     // Catch: java.lang.Exception -> L83
            return r0
        L7c:
            r0 = 5
            com.ubix.ssp.ad.e.a0.c.f46136y = r0     // Catch: java.lang.Exception -> L83
            return r0
        L80:
            int r0 = com.ubix.ssp.ad.e.a0.c.f46136y     // Catch: java.lang.Exception -> L83
            return r0
        L83:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.a0.c.i():int");
    }

    public static int j() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new b()).length;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    public static int k() {
        try {
            DisplayMetrics displayMetrics = f46112a.getApplicationContext().getResources().getDisplayMetrics();
            return displayMetrics.widthPixels > displayMetrics.heightPixels ? 2 : 1;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String l() {
        f("hw_sc.build.platform.version");
        return D() == 3 ? (TextUtils.isEmpty(f46114c) || f46114c.equals("0")) ? Build.VERSION.RELEASE : f46114c : Build.VERSION.RELEASE;
    }

    public static PackageInfo m() {
        try {
            Context context = f46112a;
            if (context == null) {
                return null;
            }
            return b(context, context.getPackageName());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String n() {
        try {
            if (!TextUtils.isEmpty(f46123l)) {
                return f46123l;
            }
            Context context = f46112a;
            if (context != null) {
                String strD = v.d(context, "ubix_sp_world", g.a.f3270g);
                if (!TextUtils.isEmpty(strD)) {
                    f46123l = strD;
                    return strD;
                }
                String packageName = f46112a.getPackageName();
                f46123l = packageName;
                v.b(f46112a, "ubix_sp_world", g.a.f3270g, packageName);
            }
            return f46123l;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String o() {
        try {
            WindowManager windowManager = (WindowManager) f46112a.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
        } catch (Exception unused) {
            return "720x1280";
        }
    }

    public static int p() {
        try {
            String strD = d("gsm.sim.state");
            if (TextUtils.isEmpty(strD)) {
                return 0;
            }
            return strD.toUpperCase().contains("LOADED") ? 1 : 2;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public static int q() {
        if (f46112a == null) {
            return -1;
        }
        return new t().a(f46112a);
    }

    public static int r() {
        try {
            int i2 = f46128q;
            if (i2 != -1) {
                return i2;
            }
            ApplicationInfo applicationInfo = f46112a.getPackageManager().getApplicationInfo(f46112a.getPackageName(), 0);
            if (applicationInfo == null) {
                return 0;
            }
            int i3 = applicationInfo.targetSdkVersion;
            f46128q = i3;
            return i3;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public static String s() {
        String str;
        try {
            if ("0".equals(f46111B)) {
                String strA = new i().a("cd /data/data;stat  .;", 1000).a();
                if (strA.toLowerCase().contains("cannot")) {
                    f46111B = "";
                    return "";
                }
                String strSubstring = strA.substring(strA.indexOf("Access:") + 7, strA.lastIndexOf("Modify"));
                String[] strArrSplit = (strSubstring.contains("+") ? strSubstring.substring(strSubstring.indexOf("Access:") + 7, strSubstring.lastIndexOf("+")) : strSubstring.substring(strSubstring.indexOf("Access:") + 7)).split("\\.");
                str = a(strArrSplit[0]) + com.anythink.core.common.d.i.f2495E + strArrSplit[1];
                f46111B = str;
            } else {
                str = f46111B;
            }
            return str.trim();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String t() {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!TextUtils.isEmpty(f46119h)) {
            return f46119h;
        }
        String defaultUserAgent = WebSettings.getDefaultUserAgent(f46112a);
        f46119h = defaultUserAgent;
        if (!TextUtils.isEmpty(defaultUserAgent)) {
            v.b(f46112a, "ubix_sp_beacon", "user_agent", f46119h);
        }
        return TextUtils.isEmpty(f46119h) ? "" : f46119h;
    }

    public static void u() {
        try {
            y();
            f46115d.execute(new f());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static int v() {
        if (System.currentTimeMillis() - e("getVPNStatus") > com.ubix.ssp.ad.d.b.f45812s) {
            h("getVPNStatus");
            try {
                if (com.ubix.ssp.ad.e.a0.d0.c.a(f46112a, com.kuaishou.weapon.p0.g.f31160b)) {
                    ConnectivityManager connectivityManager = (ConnectivityManager) f46112a.getSystemService("connectivity");
                    NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                    if (networkCapabilities != null && networkCapabilities.hasTransport(4)) {
                        f46122k = 1;
                    }
                    f46122k = 2;
                } else if (ProxySelector.getDefault().select(URI.create("https://adx-cfg-u1.ubixioe.com")).get(0).type() != Proxy.Type.DIRECT) {
                    f46122k = 1;
                } else {
                    f46122k = 2;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return f46122k;
    }

    public static String w() {
        try {
            if (!TextUtils.isEmpty(f46127p)) {
                return f46127p;
            }
            PackageInfo packageInfoM = m();
            if (packageInfoM == null) {
                return "";
            }
            String str = packageInfoM.versionName;
            f46127p = str;
            return str;
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static long x() {
        long j2 = f46126o;
        if (j2 != 0) {
            return j2;
        }
        long jC = v.c(f46112a, "ubix_sp_world", "v291");
        if (jC <= 0) {
            Context context = f46112a;
            jC = System.currentTimeMillis();
            v.a(context, "ubix_sp_world", "v291", jC);
        }
        f46126o = jC;
        return jC;
    }

    public static Executor y() {
        if (f46115d == null) {
            f46115d = Executors.newFixedThreadPool(1, new ThreadFactoryC0787c());
        }
        return f46115d;
    }

    public static ScheduledExecutorService z() {
        if (f46116e == null) {
            f46116e = Executors.newScheduledThreadPool(1, new a());
        }
        return f46116e;
    }

    public static Dialog a(Context context, View view) {
        try {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            boolean zIsFinishing = context instanceof Activity ? ((Activity) context).isFinishing() : true;
            if (zIsFinishing) {
                context = a();
            }
            if (context == null) {
                return null;
            }
            return a(context, view, true);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static PackageInfo b(Context context, String str) {
        PackageManager packageManager;
        try {
            if (!TextUtils.isEmpty(str) && context != null && (packageManager = context.getPackageManager()) != null) {
                return packageManager.getPackageInfo(str, 128);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String c() {
        String str;
        try {
            if (!"0".equals(f46110A)) {
                str = f46110A;
            } else {
                if (f46110A.contains("kernel")) {
                    return "";
                }
                if ("0".equals(f46110A)) {
                    String strA = new i().a("cat /proc/sys/kernel/random/boot_id", 1000).a();
                    f46110A = strA;
                    if (strA.contains("kernel")) {
                        f46110A = "kernel";
                        return "";
                    }
                    if (f46110A.toLowerCase().contains("cannot")) {
                        f46110A = "";
                        return "";
                    }
                    str = f46110A;
                } else {
                    str = f46110A;
                }
            }
            return str.trim();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String d() {
        String string;
        SharedPreferences.Editor editorPutString;
        try {
            if (!TextUtils.isEmpty(f46129r)) {
                return f46129r;
            }
            String string2 = f46112a.getSharedPreferences("device_info", 0).getString("client_id", null);
            if (!TextUtils.isEmpty(string2)) {
                return string2;
            }
            SharedPreferences sharedPreferences = f46112a.getSharedPreferences("ubix_sp_fake_seed", 0);
            if (sharedPreferences.contains("FAKE_ID")) {
                string = sharedPreferences.getString("FAKE_ID", "");
                if (TextUtils.isEmpty(string)) {
                    string = "u." + UUID.randomUUID().toString().replace("-", "") + "DO.NOT.TOUCH.MY.ID";
                    editorPutString = sharedPreferences.edit().putString("FAKE_ID", string);
                }
                f46129r = string;
                return string;
            }
            string = "u." + UUID.randomUUID().toString().replace("-", "");
            editorPutString = sharedPreferences.edit().putString("FAKE_ID", string);
            editorPutString.apply();
            f46129r = string;
            return string;
        } catch (Throwable unused) {
            return "u." + UUID.randomUUID().toString().replace("-", "") + "EXCEPTION";
        }
    }

    private static long e(String str) {
        HashMap<String, Long> map = f46118g;
        if (map == null) {
            f46118g = new HashMap<>();
            return 0L;
        }
        Long l2 = map.get(str);
        if (l2 == null) {
            return 0L;
        }
        return l2.longValue();
    }

    public static String f(Context context) {
        String strC;
        long jE = e("getVivoStoreVersionCode");
        if (jE != 0) {
            return f46131t;
        }
        if (System.currentTimeMillis() - jE > com.ubix.ssp.ad.d.b.f45812s) {
            h("getVivoStoreVersionCode");
            if (!TextUtils.isEmpty(f46131t)) {
                return f46131t;
            }
            try {
                strC = c(context, "com.bbk.appstore");
            } catch (Exception unused) {
            }
        } else {
            strC = "";
        }
        if (TextUtils.isEmpty(strC)) {
            return f46131t;
        }
        f46131t = strC;
        return strC;
    }

    public static boolean g(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            if (!com.ubix.ssp.ad.e.a0.d0.c.a(context, com.kuaishou.weapon.p0.g.f31160b) || (activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isAvailable();
        } catch (Throwable unused) {
            return true;
        }
    }

    private static void h(String str) {
        HashMap<String, Long> map = f46118g;
        if (map == null) {
            return;
        }
        map.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    public static boolean i(Context context) {
        try {
            return com.ubix.ssp.ad.e.a0.d0.c.a(context, com.kuaishou.weapon.p0.g.f31160b) ? ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType() == 1 : g(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static void j(Context context) {
        try {
            y();
            f46115d.execute(new e(context));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void k(Context context) {
        Context applicationContext = context.getApplicationContext();
        f46112a = applicationContext;
        com.ubix.ssp.ad.e.a0.b.a(applicationContext);
    }

    public static Dialog a(Context context, View view, boolean z2) {
        Dialog dialog;
        try {
            try {
                dialog = new Dialog(context, R.style.Theme.DeviceDefault.Light.Dialog.NoActionBar);
            } catch (Throwable unused) {
                return new Dialog(context);
            }
        } catch (Throwable th) {
            th = th;
            dialog = null;
        }
        try {
            dialog.getWindow().requestFeature(1);
            dialog.setContentView(view);
            dialog.setCancelable(false);
            dialog.setCanceledOnTouchOutside(false);
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            dialog.getWindow().setLayout(-1, -1);
            return dialog;
        } catch (Throwable th2) {
            th = th2;
            th.printStackTrace();
            return dialog;
        }
    }

    public static Bitmap b(String str) {
        try {
            new BitmapFactory.Options().inPreferredConfig = Bitmap.Config.RGB_565;
            try {
                com.ubix.ssp.ad.e.v.a aVarB = com.ubix.ssp.ad.e.v.e.b();
                aVarB.c(str);
                Bitmap bitmapB = aVarB.b(str);
                if (bitmapB != null) {
                    return j.a(Bitmap.createScaledBitmap(bitmapB, bitmapB.getWidth() / 50, bitmapB.getHeight() / 50, false), 5, false);
                }
                return null;
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String c(Context context) {
        String strC;
        long jE = e("getHuaweiAgVersionCode");
        if (jE != 0) {
            return f46132u;
        }
        if (System.currentTimeMillis() - jE > com.ubix.ssp.ad.d.b.f45812s) {
            h("getHuaweiAgVersionCode");
            if (!TextUtils.isEmpty(f46132u)) {
                return f46132u;
            }
            try {
                strC = c(context, "com.huawei.appmarket");
            } catch (Exception unused) {
            }
        } else {
            strC = "";
        }
        if (TextUtils.isEmpty(strC)) {
            return f46132u;
        }
        f46132u = strC;
        return strC;
    }

    private static String d(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static Context e() {
        return f46112a;
    }

    private static void f(String str) {
        String str2;
        try {
            str2 = f46114c;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (str2 != "0") {
            if (str2 == "0" || str2 == "") {
                String strD = d(str);
                if (!TextUtils.isEmpty(strD)) {
                    f46114c = strD;
                } else {
                    f46114c = "0";
                    f46114c = "0";
                }
            }
        }
    }

    public static boolean g(String str) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        try {
            packageInfo = f46112a.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static boolean h(Context context) {
        try {
            return ((context.getResources().getConfiguration().screenLayout & 15) >= 3) || (context.getResources().getConfiguration().smallestScreenWidthDp >= 600);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static Drawable a(Context context, int i2, int i3) {
        float f2 = i3;
        float[] fArr = {f2, f2, f2, f2, f2, f2, f2, f2};
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadii(fArr);
        return gradientDrawable;
    }

    public static String b() {
        try {
            if (!TextUtils.isEmpty(f46124m)) {
                return f46124m;
            }
            PackageManager packageManager = f46112a.getPackageManager();
            return packageManager.getApplicationInfo(f46112a.getPackageName(), 128).loadLabel(packageManager).toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private static String c(Context context, String str) {
        PackageInfo packageInfoB = b(context, str);
        if (packageInfoB == null) {
            return null;
        }
        return String.valueOf(packageInfoB.versionCode);
    }

    public static Drawable a(Context context, int i2, int i3, int i4) {
        float f2 = i3;
        float[] fArr = {f2, f2, f2, f2, f2, f2, f2, f2};
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadii(fArr);
        gradientDrawable.setStroke(4, i4);
        return gradientDrawable;
    }

    public static String b(Context context) {
        String strC;
        long jE = e("getHmsVersionCode");
        if (jE != 0) {
            return f46133v;
        }
        if (System.currentTimeMillis() - jE > com.ubix.ssp.ad.d.b.f45812s) {
            h("getHmsVersionCode");
            if (!TextUtils.isEmpty(f46133v)) {
                return f46133v;
            }
            try {
                strC = c(context, "com.huawei.hwid");
            } catch (Exception unused) {
            }
        } else {
            strC = "";
        }
        if (TextUtils.isEmpty(strC)) {
            return f46133v;
        }
        f46133v = strC;
        return strC;
    }

    public static String c(boolean z2) {
        String str;
        if (!z2) {
            f46134w = "0";
            return "0";
        }
        if (TextUtils.isEmpty(f46134w)) {
            try {
                if (!com.ubix.ssp.ad.e.a0.d0.c.a(f46112a, "android.permission.READ_PHONE_STATE")) {
                    f46134w = "0";
                    return "0";
                }
                long jE = e("getSimOperatorType");
                if (TextUtils.isEmpty(f46134w) && System.currentTimeMillis() - jE > com.ubix.ssp.ad.d.b.f45812s) {
                    h("getSimOperatorType");
                    String simOperator = ((TelephonyManager) f46112a.getSystemService("phone")).getSimOperator();
                    if ("46001".equals(simOperator) || "46006".equals(simOperator) || "46009".equals(simOperator)) {
                        str = "2";
                    } else if ("46000".equals(simOperator) || "46002".equals(simOperator) || "46004".equals(simOperator) || "46007".equals(simOperator)) {
                        str = "1";
                    } else {
                        if (!"46003".equals(simOperator) && !"46005".equals(simOperator) && !"46011".equals(simOperator)) {
                            f46134w = "0";
                        }
                        str = "3";
                    }
                    f46134w = str;
                }
            } catch (Exception e2) {
                f46134w = "0";
                e2.printStackTrace();
            }
        }
        return f46134w;
    }

    public static Drawable a(Context context, int i2, int i3, int i4, int i5) {
        float f2 = i3;
        float[] fArr = {f2, f2, f2, f2, f2, f2, f2, f2};
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadii(fArr);
        gradientDrawable.setStroke(i5, i4);
        return gradientDrawable;
    }

    public static boolean b(Context context, Bundle bundle, h.c cVar, h.b bVar) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        boolean zIsFinishing = context instanceof Activity ? ((Activity) context).isFinishing() : true;
        if (zIsFinishing) {
            context = a();
        }
        if (context == null) {
            return false;
        }
        try {
            int i2 = bundle.getInt("TYPE", 0);
            com.ubix.ssp.ad.e.z.h gVar = i2 == 1 ? new com.ubix.ssp.ad.e.z.g(context) : i2 == 0 ? new com.ubix.ssp.ad.e.z.a(context) : i2 == 2 ? new com.ubix.ssp.ad.e.z.e(context) : i2 == 3 ? new com.ubix.ssp.ad.e.z.b(context) : null;
            l lVar = new l(gVar, -2, -2);
            lVar.b(((Activity) context).getWindow().getDecorView(), 17);
            gVar.a(lVar, cVar, bVar);
            gVar.setData(bundle);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static GradientDrawable a(int i2, int i3, int i4) {
        return a(i2, i3, i4, GradientDrawable.Orientation.TOP_BOTTOM);
    }

    public static GradientDrawable a(int i2, int i3, int i4, GradientDrawable.Orientation orientation) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setOrientation(orientation);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setColors(new int[]{i2, i3});
        float f2 = i4;
        gradientDrawable.setCornerRadii(new float[]{f2, f2, f2, f2, f2, f2, f2, f2});
        return gradientDrawable;
    }

    public static String a(Context context) {
        String string;
        ActivityInfo activityInfo;
        boolean zBooleanValue;
        String str;
        synchronized (f46120i) {
            try {
                try {
                    u.e("run getAL");
                    Intent intent = new Intent(new String(Base64.decode("YW5kcm9pZC5pbnRlbnQuYWN0aW9uLk1BSU4=", 0)));
                    intent.addCategory(new String(Base64.decode("YW5kcm9pZC5pbnRlbnQuY2F0ZWdvcnkuTEFVTkNIRVI=", 0)));
                    PackageManager packageManager = context.getPackageManager();
                    StringBuilder sb = new StringBuilder();
                    Object objInvoke = packageManager.getClass().getMethod(new String(Base64.decode("cXVlcnlJbnRlbnRBY3Rpdml0aWVz", 0)), Intent.class, Integer.TYPE).invoke(packageManager, intent, 131072);
                    if (objInvoke instanceof List) {
                        List list = (List) objInvoke;
                        String str2 = new String(Base64.decode("Y29tLmFuZHJvaWQu", 0));
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            ResolveInfo resolveInfo = (ResolveInfo) list.get(i2);
                            if (resolveInfo != null && (activityInfo = resolveInfo.activityInfo) != null && !TextUtils.isEmpty(activityInfo.packageName)) {
                                try {
                                    zBooleanValue = ((Boolean) resolveInfo.getClass().getField(new String(Base64.decode("c3lzdGVt", 0))).get(resolveInfo)).booleanValue();
                                } catch (Throwable th) {
                                    th.printStackTrace();
                                    zBooleanValue = false;
                                }
                                if (!zBooleanValue && !resolveInfo.activityInfo.packageName.startsWith(str2)) {
                                    if (i2 == list.size() - 1) {
                                        str = resolveInfo.activityInfo.packageName;
                                    } else {
                                        sb.append(resolveInfo.activityInfo.packageName);
                                        str = ",";
                                    }
                                    sb.append(str);
                                }
                            }
                        }
                    }
                    string = sb.toString();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    throw new RuntimeException(th2.getMessage());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return string;
    }

    public static String a(Context context, String str) {
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1);
            if (packageArchiveInfo == null) {
                return "";
            }
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            applicationInfo.sourceDir = str;
            applicationInfo.publicSourceDir = str;
            return applicationInfo.packageName;
        } catch (Throwable unused) {
            u.a("this file is not valid apk");
            return "";
        }
    }

    public static String a(a.c cVar) {
        if (cVar == null || !cVar.f47563o) {
            return null;
        }
        return cVar.f47562n;
    }

    public static String a(String str) {
        try {
            return String.valueOf(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str).getTime() / 1000);
        } catch (ParseException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String a(boolean z2) {
        long jE;
        if (z2) {
            try {
                jE = e("getAndroidId");
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (jE == 0) {
                if (System.currentTimeMillis() - jE > com.ubix.ssp.ad.d.b.f45812s) {
                    h("getAndroidId");
                    String string = Settings.Secure.getString(f46112a.getContentResolver(), "android_id");
                    f46130s = string;
                    if (TextUtils.isEmpty(string)) {
                        f46130s = "";
                    } else {
                        v.a(e(), "ubix_sp_seed", "android_id_expired", System.currentTimeMillis() + 864000000);
                        v.b(e(), "ubix_sp_seed", "android_id", Base64.encodeToString(f46130s.getBytes(), 10));
                    }
                }
                return f46130s;
            }
        }
        return f46130s;
    }

    public static void a(int i2, int i3, String str) {
        StringBuilder sb;
        String str2;
        String strA;
        boolean z2;
        String str3;
        String string;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = v.c(f46112a, "ubix_sp_dungeon1", "throw_time");
        if (jC != 0 || (i2 == 2 && !TextUtils.isEmpty(str))) {
            if (jC == 0) {
                v.a(f46112a, "ubix_sp_dungeon1", "throw_time", System.currentTimeMillis());
            }
            if (System.currentTimeMillis() - jC > com.ubix.ssp.ad.d.b.f45790I || (i2 == 2 && !TextUtils.isEmpty(str))) {
                long jC2 = v.c(f46112a, "ubix_sp_dungeon1", "ex_time");
                if (System.currentTimeMillis() - jC2 > com.ubix.ssp.ad.d.b.f45789H) {
                    if (i2 == 1) {
                        try {
                            strA = a(f46112a);
                        } catch (Throwable th) {
                            str2 = "error=" + th.getMessage();
                            strA = null;
                            z2 = true;
                        }
                    } else {
                        z = TextUtils.isEmpty(str);
                        strA = str;
                    }
                    z2 = z;
                    str2 = "";
                    v.a(f46112a, "ubix_sp_dungeon1", "ex_time", System.currentTimeMillis());
                    if (strA != null) {
                        u.e("shouldGetAppList " + strA);
                        if (z2) {
                            String strEncodeToString = Base64.encodeToString(strA.getBytes(StandardCharsets.UTF_8), 2);
                            p.a(strEncodeToString);
                            v.b(f46112a, "ubix_sp_mansion", "ubix_sp_vindicator", strEncodeToString);
                        }
                        HashMap<String, Object> map = new HashMap<>();
                        HashMap map2 = new HashMap();
                        map2.put("ubix_tx_pkg_list", strA);
                        map2.put("ubix_tx_oaid", com.ubix.ssp.ad.d.b.f45798e);
                        map2.put("ubix_tx_android_id", com.ubix.ssp.ad.d.b.f45799f);
                        map2.put("ubix_tx_granted", i2 + "");
                        map2.put("ubix_tx_custom_granted", i3 + "");
                        map.put("EVENT_ATTRS", map2);
                        long jElapsedRealtime = SystemClock.elapsedRealtime() - jCurrentTimeMillis;
                        map.put("EVENT_DURATION", Long.valueOf(jElapsedRealtime > 0 ? jElapsedRealtime : 0L));
                        com.ubix.ssp.ad.e.w.f.a(f46112a).j(map);
                        return;
                    }
                    if (TextUtils.isEmpty(str2)) {
                        sb = new StringBuilder();
                        str3 = "list is empty bt=";
                    } else {
                        sb = new StringBuilder();
                        sb.append("list is empty?last msg:");
                        sb.append(str2);
                        str3 = " bt=";
                    }
                } else {
                    sb = new StringBuilder();
                    sb.append("not you,skip! rt=");
                    sb.append(jC2);
                    sb.append(";now=");
                    sb.append(System.currentTimeMillis());
                    string = sb.toString();
                }
            } else {
                sb = new StringBuilder();
                str3 = "run next time,now=";
            }
            sb.append(str3);
            sb.append(jC);
            sb.append(";now=");
            sb.append(System.currentTimeMillis());
            string = sb.toString();
        } else {
            v.a(f46112a, "ubix_sp_dungeon1", "throw_time", System.currentTimeMillis());
            string = "Yokoso";
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        u.e(string);
    }

    public static void a(Context context, Intent intent, String str) {
        u.b("--intent:" + intent);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("android.intent.extra.REFERRER", Uri.parse("android-app://" + str));
        }
        context.startActivity(intent);
        u.b("has app deepLink jump success");
    }

    public static void a(Context context, String str, String str2) {
        u.b("--url:" + str);
        try {
            a(context, c(str), str2);
            u.b("has app deepLink jump success");
        } catch (Exception e2) {
            u.d("no app deepLink jump failed");
            u.d(e2.toString());
        }
    }

    public static void a(h hVar) {
        try {
            z();
            ArrayList arrayList = new ArrayList();
            arrayList.add(f46116e.scheduleAtFixedRate(new g(hVar, arrayList), 0L, 500L, TimeUnit.MILLISECONDS));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Object obj, String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Method method = obj.getClass().getMethod(str, Integer.TYPE);
        if (!method.isAccessible()) {
            method.setAccessible(true);
        }
        method.invoke(obj, 131072);
    }

    public static boolean a(Activity activity) {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("currentActivityThread", null).invoke(null, null);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            for (Object obj : ((Map) declaredField.get(objInvoke)).values()) {
                Class<?> cls2 = obj.getClass();
                cls2.getDeclaredField("stopped").setAccessible(true);
                Field declaredField2 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                declaredField2.setAccessible(true);
                if (((Activity) declaredField2.get(obj)) == activity) {
                    return !r4.getBoolean(obj);
                }
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, Intent intent) {
        try {
            return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v5, types: [android.view.View, android.widget.RelativeLayout, com.ubix.ssp.ad.e.z.h] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v0, types: [android.app.Dialog] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.view.View, android.widget.RelativeLayout, com.ubix.ssp.ad.e.z.h] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.app.Dialog] */
    /* JADX WARN: Type inference failed for: r8v7, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    public static boolean a(Context context, Bundle bundle, h.c cVar, h.b bVar) {
        Context contextA;
        try {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            boolean zIsFinishing = context instanceof Activity ? ((Activity) context).isFinishing() : true;
            contextA = zIsFinishing ? a() : context;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (contextA == null) {
            return false;
        }
        try {
            try {
                int i2 = bundle.getInt("TYPE", 0);
                ?? gVar = i2 == 1 ? new com.ubix.ssp.ad.e.z.g(contextA) : i2 == 0 ? new com.ubix.ssp.ad.e.z.a(contextA) : i2 == 4 ? new com.ubix.ssp.ad.e.z.d(contextA) : i2 == 3 ? new com.ubix.ssp.ad.e.z.b(contextA) : i2 == 6 ? new com.ubix.ssp.ad.e.z.f(contextA) : new com.ubix.ssp.ad.e.z.e(contextA);
                ?? dialog = new Dialog(contextA, R.style.Theme.DeviceDefault.Light.Dialog.NoActionBar);
                if (i2 == 4) {
                    if (dialog.getWindow() != null) {
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setShape(0);
                        gradientDrawable.setColor(-1);
                        gradientDrawable.setStroke(2, Color.parseColor("#ffffff"));
                        gradientDrawable.setCornerRadius(8.0f);
                        dialog.getWindow().setBackgroundDrawable(gradientDrawable);
                    }
                    dialog.setCanceledOnTouchOutside(true);
                    dialog.setCancelable(true);
                } else if (i2 == 6) {
                    Window window = dialog.getWindow();
                    window.setLayout(-1, -2);
                    window.setBackgroundDrawableResource(R.color.transparent);
                    window.setDimAmount(0.3f);
                    window.addFlags(2);
                    window.setGravity(80);
                } else {
                    if (i2 == 1) {
                        GradientDrawable gradientDrawable2 = new GradientDrawable();
                        gradientDrawable2.setShape(0);
                        gradientDrawable2.setColor(-1);
                        gradientDrawable2.setStroke(2, Color.parseColor("#ffffff"));
                        gradientDrawable2.setCornerRadius(32.0f);
                        dialog.getWindow().setBackgroundDrawable(gradientDrawable2);
                    }
                    dialog.setCanceledOnTouchOutside(false);
                    dialog.setCancelable(false);
                }
                ?? linearLayout = new LinearLayout(e());
                linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                linearLayout.addView(gVar);
                linearLayout.setGravity(17);
                dialog.setContentView(linearLayout);
                dialog.show();
                gVar.a(dialog, cVar, bVar);
                gVar.setData(bundle);
                gVar.requestLayout();
            } catch (Throwable unused) {
                int i3 = bundle.getInt("TYPE", 0);
                ?? gVar2 = i3 == 1 ? new com.ubix.ssp.ad.e.z.g(contextA) : i3 == 0 ? new com.ubix.ssp.ad.e.z.a(contextA) : i3 == 4 ? new com.ubix.ssp.ad.e.z.d(contextA) : i3 == 3 ? new com.ubix.ssp.ad.e.z.b(contextA) : i3 == 6 ? new com.ubix.ssp.ad.e.z.f(contextA) : new com.ubix.ssp.ad.e.z.e(contextA);
                ?? dialog2 = new Dialog(contextA);
                ?? linearLayout2 = new LinearLayout(e());
                linearLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                linearLayout2.addView(gVar2);
                linearLayout2.setGravity(17);
                dialog2.setContentView(linearLayout2);
                dialog2.setCancelable(false);
                dialog2.setCanceledOnTouchOutside(false);
                dialog2.show();
                gVar2.a(dialog2, cVar, bVar);
                gVar2.setData(bundle);
                gVar2.requestLayout();
            }
            return true;
        } catch (Exception e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, String str, JSONObject jSONObject) {
        Cursor cursorQuery;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            if (contentResolver == null) {
                return false;
            }
            cursorQuery = contentResolver.query(Uri.parse(str), null, jSONObject.toString(), null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable unused) {
                    }
                }
                return false;
            }
            try {
                Bundle extras = cursorQuery.getExtras();
                if (extras == null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable unused2) {
                    }
                    return false;
                }
                if (extras.getInt("code") == 0) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable unused3) {
                    }
                    return true;
                }
                extras.getString("msg");
                try {
                    cursorQuery.close();
                } catch (Throwable unused4) {
                }
                return false;
            } catch (Throwable unused5) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable unused6) {
                    }
                }
                return false;
            }
        } catch (Throwable unused7) {
            cursorQuery = null;
        }
    }

    public static boolean a(a.b bVar) {
        if (bVar == null) {
            return false;
        }
        return a(bVar.f47484n, bVar.f47477g, bVar.f47453A, bVar.f47496z, bVar.f47455C, bVar.f47454B, bVar.f47458F);
    }

    public static boolean a(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Intent launchIntentForPackage = f46112a.getPackageManager().getLaunchIntentForPackage(str);
            if (!TextUtils.isEmpty(str2)) {
                launchIntentForPackage.putExtra("android.intent.extra.REFERRER", Uri.parse("android-app://" + str));
            }
            launchIntentForPackage.addFlags(805339136);
            f46112a.startActivity(launchIntentForPackage);
            return true;
        } catch (Exception e2) {
            u.d("isCanPackageNameLaunch", "Exception " + e2.getMessage());
            return false;
        }
    }

    public static boolean a(String... strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}

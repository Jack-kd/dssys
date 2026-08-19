package com.anythink.core.common.v;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.webkit.WebView;
import java.lang.reflect.Field;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8262a = "CommonUtils";

    /* renamed from: d, reason: collision with root package name */
    private static boolean f8265d = false;

    /* renamed from: e, reason: collision with root package name */
    private static final int f8266e = 30;

    /* renamed from: f, reason: collision with root package name */
    private static final int f8267f = 4096;

    /* renamed from: b, reason: collision with root package name */
    private static final AtomicBoolean f8263b = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    private static final Object f8264c = new Object();

    /* renamed from: g, reason: collision with root package name */
    private static char[] f8268g = {'a', 'n', 'd', 'r', 'o', 'i', 'd', 'c', 'o', 'n', 't', 'e', 'n', 't', 'p', 'm', 'g', 'e', 't', 'C', 'o', 'n', 't', 'e', 'x', 't'};

    /* renamed from: h, reason: collision with root package name */
    private static char[] f8269h = {'A', 'p', 'p', 'l', 'i', 'c', 'a', 't', 'i', 'o', 'n', 'I', 'n', 'f', 'o'};

    /* renamed from: i, reason: collision with root package name */
    private static char[] f8270i = {'.', 'X'};

    /* renamed from: j, reason: collision with root package name */
    private static int f8271j = 0;

    /* renamed from: k, reason: collision with root package name */
    private static int f8272k = 1;

    /* renamed from: l, reason: collision with root package name */
    private static int f8273l = 2;

    /* renamed from: m, reason: collision with root package name */
    private static int f8274m = 3;

    /* renamed from: n, reason: collision with root package name */
    private static int f8275n = 0;

    /* renamed from: o, reason: collision with root package name */
    private static int f8276o = 7;

    /* renamed from: p, reason: collision with root package name */
    private static int f8277p = 14;

    /* renamed from: q, reason: collision with root package name */
    private static int f8278q = 19;

    /* renamed from: r, reason: collision with root package name */
    private static int f8279r = 16;

    /* renamed from: s, reason: collision with root package name */
    private static int f8280s = 26;

    /* renamed from: t, reason: collision with root package name */
    private static int f8281t = 8;

    /* renamed from: u, reason: collision with root package name */
    private static int f8282u = 24;

    /* renamed from: v, reason: collision with root package name */
    private static int f8283v = 38;

    /* renamed from: w, reason: collision with root package name */
    private static int f8284w = 54;

    /* renamed from: x, reason: collision with root package name */
    private static char[] f8285x = {'P', 'a', 'c', 'k', 'a', 'g', 'e', 'M', 'a', 'n', 'a', 'g', 'e', 'r'};

    /* renamed from: y, reason: collision with root package name */
    private static char[] f8286y = {'C', 'l', 'i', 'p', 'D', 'a', 't', 'a', 'C', 'l', 'i', 'p', 'b', 'o', 'a', 'r', 'd', 'M', 'a', 'n', 'a', 'g', 'e', 'r', 's', 'e', 't', 'P', 'r', 'i', 'm', 'a', 'r', 'y', 'C', 'l', 'i', 'p', 'g', 'e', 't', 'S', 'y', 's', 't', 'e', 'm', 'S', 'e', 'r', 'v', 'i', 'c', 'e'};

    /* renamed from: z, reason: collision with root package name */
    private static char[] f8287z = {'c', 'l', 'i', 'p', 'b', 'o', 'a', 'r', 'd'};

    /* renamed from: A, reason: collision with root package name */
    private static char[] f8259A = {'n', 'e', 'w', 'P', 'l', 'a', 'i', 'n', 'T', 'e', 'x', 't'};

    /* renamed from: B, reason: collision with root package name */
    private static final Pattern f8260B = Pattern.compile("(?i)((?:http|https|ftp|file)://|(?:inline|data|about|javascript):|(?:.*:.*@))(.*)");

    /* renamed from: C, reason: collision with root package name */
    private static Boolean f8261C = null;

    /* renamed from: com.anythink.core.common.v.p$1, reason: invalid class name */
    public class AnonymousClass1 implements View.OnSystemUiVisibilityChangeListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f8288a;

        public AnonymousClass1(View view) {
            this.f8288a = view;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public final void onSystemUiVisibilityChange(int i2) {
            if ((i2 & 2) == 0) {
                p.a(this.f8288a);
            }
        }
    }

    public static <T extends String> boolean a(T t2) {
        return t2 == null || t2.length() == 0;
    }

    public static <T extends String> boolean b(T t2) {
        return t2 != null && t2.length() > 0;
    }

    private static int[] c(Context context, String str) {
        try {
            for (Field field : Class.forName(context.getPackageName() + ".R$styleable").getFields()) {
                if (field.getName().equals(str)) {
                    return (int[]) field.get(null);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    public static boolean d(String str) {
        return f8260B.matcher(str.toLowerCase()).matches();
    }

    private static int e(Context context) {
        if (com.anythink.core.common.d.s.b().c("screen")) {
            return 0;
        }
        try {
            if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b() || context == null) {
                return 0;
            }
            try {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                HashMap mapG = g(context);
                return mapG.get("width") == null ? displayMetrics.widthPixels : ((Integer) mapG.get("width")).intValue();
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        } catch (Exception unused) {
        }
    }

    private static double f(Map<String, Object> map, String str) {
        return ((Double) a(map, str, Double.valueOf(0.0d))).doubleValue();
    }

    private static HashMap g(Context context) {
        HashMap map = new HashMap();
        if (context != null) {
            try {
                Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getRealMetrics(displayMetrics);
                map.put("height", Integer.valueOf(displayMetrics.heightPixels));
                map.put("width", Integer.valueOf(displayMetrics.widthPixels));
            } catch (Exception unused) {
            }
        }
        return map;
    }

    private static boolean h(Map<String, Object> map, String str) {
        return ((Boolean) a(map, str, Boolean.FALSE)).booleanValue();
    }

    private static float i(Context context) {
        if (context == null) {
            return 0.0f;
        }
        try {
            PackageInfo currentWebViewPackage = Build.VERSION.SDK_INT >= 26 ? WebView.getCurrentWebViewPackage() : context.getPackageManager().getPackageInfo("com.google.android.webview", 1);
            if (currentWebViewPackage != null && !TextUtils.isEmpty(currentWebViewPackage.versionName)) {
                if (currentWebViewPackage.versionName.equals("77.0.3865.92")) {
                    return 5.0f;
                }
            }
        } catch (Exception unused) {
        }
        return 1.5f;
    }

    public static boolean a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isAvailable()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static int b(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    private static String f(String str) {
        return TextUtils.isEmpty(str) ? str : str.replaceAll("&lt;", "<").replaceAll("&gt;", ">").replaceAll("&amp;", "&").replaceAll("&quot;", "\"");
    }

    private static float h(Context context) {
        if (context != null) {
            try {
                float f2 = context.getResources().getDisplayMetrics().density;
                if (f2 == 0.0f) {
                    return 2.5f;
                }
                return f2;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 2.5f;
    }

    private static int b(Context context, String str, String str2) {
        String str3 = str + "_" + str2;
        try {
            for (Class<?> cls : Class.forName(context.getPackageName() + ".R").getClasses()) {
                if (cls.getSimpleName().equals("styleable")) {
                    for (Field field : cls.getFields()) {
                        if (field.getName().equals(str3)) {
                            return ((Integer) field.get(null)).intValue();
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return 0;
    }

    private static boolean d(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                if (activeNetworkInfo.getType() == 1) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static Map<String, Object> c(String str) {
        HashMap map = new HashMap();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.opt(next));
                }
            }
        } catch (Exception unused) {
        }
        return map;
    }

    private static int f(Context context) {
        if (com.anythink.core.common.d.s.b().c("screen")) {
            return 0;
        }
        try {
            if (!com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b() || context == null) {
                return 0;
            }
            try {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                HashMap mapG = g(context);
                return mapG.get("height") == null ? displayMetrics.heightPixels : ((Integer) mapG.get("height")).intValue();
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        } catch (Exception unused) {
        }
    }

    public static boolean a(String str, Context context) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    private static long d(Map<String, Object> map, String str) {
        return b(map, str);
    }

    public static String e(String str) {
        try {
            if (!TextUtils.isEmpty(str) && URLUtil.isValidUrl(str)) {
                return new URL(str).getHost();
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    private static boolean g(Map<String, Object> map, String str) {
        return ((Boolean) a(map, str, Boolean.FALSE)).booleanValue();
    }

    public static int a(Context context, String str, String str2) {
        if (context == null) {
            context = com.anythink.core.common.d.s.b().g();
        }
        if (context == null) {
            return -1;
        }
        String strConcat = "anythink_".concat(String.valueOf(str));
        String strU = com.anythink.core.common.d.s.b().U();
        int identifier = TextUtils.isEmpty(strU) ? -1 : context.getResources().getIdentifier(strConcat, str2, strU);
        return identifier > 0 ? identifier : context.getResources().getIdentifier(strConcat, str2, context.getPackageName());
    }

    private static double e(Map<String, Object> map, String str) {
        return ((Double) a(map, str, Double.valueOf(0.0d))).doubleValue();
    }

    private static boolean c(Context context) {
        return context != null && context.getResources().getConfiguration().orientation == 2;
    }

    public static String[] a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            String[] strArr = new String[jSONArray.length()];
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                strArr[i2] = jSONArray.optString(i2);
            }
            return strArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<String> b(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                String strOptString = jSONArray.optString(i2);
                if (strOptString != null) {
                    arrayList.add(strOptString);
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }

    private static int c(Map<String, Object> map, String str) {
        return a(map, str, 0);
    }

    private static void a(Activity activity) {
        Window window = activity.getWindow();
        if (window != null) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(4870);
            decorView.setOnSystemUiVisibilityChangeListener(new AnonymousClass1(decorView));
        }
    }

    private static View.OnSystemUiVisibilityChangeListener b(View view) {
        return new AnonymousClass1(view);
    }

    public static int b(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
        return dimensionPixelSize == 0 ? a(context, 32.0f) : dimensionPixelSize;
    }

    public static void a(View view) {
        view.setSystemUiVisibility(4870);
    }

    private static Object b(String str, Context context) {
        try {
            return Class.forName(String.valueOf(a(f8271j))).getMethod(String.valueOf(a(f8273l)), String.class, Integer.TYPE).invoke(Class.forName(String.valueOf(a(f8272k))).getMethod(String.valueOf(a(f8274m)), null).invoke(context, null), str, 8192);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean a() {
        boolean zIsCleartextTrafficPermitted;
        if (f8263b.get()) {
            return f8265d;
        }
        synchronized (f8264c) {
            try {
                zIsCleartextTrafficPermitted = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            } catch (Throwable unused) {
                zIsCleartextTrafficPermitted = false;
            }
            f8265d = zIsCleartextTrafficPermitted;
            f8263b.set(true);
        }
        return zIsCleartextTrafficPermitted;
    }

    public static boolean b(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return context.getPackageManager().getPackageInfo(str, 256) != null;
    }

    public static String a(Object[] objArr) {
        if (objArr != null && objArr.length != 0) {
            try {
                int iMin = Math.min(objArr.length, 30);
                StringBuilder sb = new StringBuilder(1024);
                int i2 = 0;
                while (true) {
                    if (i2 >= iMin) {
                        break;
                    }
                    if (i2 > 0) {
                        sb.append(",");
                    }
                    sb.append(String.valueOf(objArr[i2]));
                    if (sb.length() >= 4096) {
                        sb.setLength(4096);
                        sb.append("...(truncated)");
                        break;
                    }
                    i2++;
                }
                if (iMin < objArr.length) {
                    sb.append("...(");
                    sb.append(objArr.length - iMin);
                    sb.append(" more)");
                }
                return sb.toString();
            } catch (Throwable unused) {
                return "OOM in parseStackTrace";
            }
        }
        return "";
    }

    public static long b(Map<String, Object> map, String str) {
        return ((Long) a(map, str, 0L)).longValue();
    }

    private static boolean b() {
        try {
            Boolean bool = f8261C;
            if (bool != null) {
                return bool.booleanValue();
            }
            boolean zEquals = Locale.getDefault().getLanguage().equals(new Locale("zh").getLanguage());
            f8261C = Boolean.valueOf(zEquals);
            return zEquals;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static synchronized boolean a(Context context, String str) {
        boolean z2;
        z2 = false;
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    if (b(str, context) != null) {
                        z2 = true;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return z2;
    }

    private static final char[] a(int i2) {
        StringBuilder sb;
        switch (i2) {
            case 0:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOf(f8268g, f8276o)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(Arrays.copyOfRange(f8268g, f8276o, f8277p)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(Arrays.copyOfRange(f8268g, f8277p, f8279r)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(f8285x));
                break;
            case 1:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOf(f8268g, f8276o)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(Arrays.copyOfRange(f8268g, f8276o, f8277p)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(Arrays.copyOfRange(f8268g, f8278q, f8280s)));
                break;
            case 2:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOfRange(f8268g, f8279r, f8278q)));
                sb.append(String.valueOf(f8269h));
                break;
            case 3:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOfRange(f8268g, f8279r, f8278q)));
                sb.append(String.valueOf(f8285x));
                break;
            case 4:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOf(f8268g, f8276o)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(Arrays.copyOfRange(f8268g, f8276o, f8277p)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(Arrays.copyOf(f8286y, f8281t)));
                break;
            case 5:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOf(f8268g, f8276o)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(Arrays.copyOfRange(f8268g, f8276o, f8277p)));
                sb.append(f8270i[f8275n]);
                sb.append(String.valueOf(Arrays.copyOfRange(f8286y, f8281t, f8282u)));
                break;
            case 6:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOfRange(f8286y, f8282u, f8283v)));
                break;
            case 7:
                sb = new StringBuilder();
                sb.append(String.valueOf(f8259A));
                break;
            case 8:
                sb = new StringBuilder();
                sb.append(String.valueOf(f8287z));
                break;
            case 9:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOfRange(f8286y, f8283v, f8284w)));
                break;
            default:
                sb = null;
                break;
        }
        return sb.toString().toCharArray();
    }

    public static String a(Map<String, Object> map, String str) {
        return a(map, str, "");
    }

    public static String a(Map<String, Object> map, String str, String str2) {
        return (String) a(map, str, str2);
    }

    public static int a(Map<String, Object> map, String str, int i2) {
        return ((Integer) a(map, str, Integer.valueOf(i2))).intValue();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.String] */
    public static <T> T a(Map<String, Object> map, String str, T t2) {
        T t3;
        try {
            if (!TextUtils.isEmpty(str) && map != null && map.size() != 0 && (t3 = (T) map.get(str)) != null) {
                ?? r2 = (T) t3.toString();
                if (t2 instanceof String) {
                    return r2;
                }
                if (t2 instanceof Integer) {
                    return (T) Integer.valueOf(Integer.parseInt(r2));
                }
                if (t2 instanceof Long) {
                    return (T) Long.valueOf(Long.parseLong(r2));
                }
                if (t2 instanceof Double) {
                    return (T) Double.valueOf(Double.parseDouble(r2));
                }
                if (t2 instanceof Float) {
                    return (T) Float.valueOf(Float.parseFloat(r2));
                }
                return t2 instanceof Boolean ? (T) Boolean.valueOf(Boolean.parseBoolean(r2)) : t3;
            }
        } catch (Throwable unused) {
        }
        return t2;
    }

    public static void a(Activity activity, int i2) {
        try {
            Activity.class.getMethod(j.b("c2V0UmVxdWVzdGVkT3JpZW50YXRpb24="), Integer.TYPE).invoke(activity, Integer.valueOf(i2));
        } catch (Throwable unused) {
        }
    }

    public static String a(String str, String str2) {
        try {
            String strE = e(str);
            return !TextUtils.isEmpty(strE) ? str.replace(strE, str2) : str;
        } catch (Throwable unused) {
            return str;
        }
    }
}

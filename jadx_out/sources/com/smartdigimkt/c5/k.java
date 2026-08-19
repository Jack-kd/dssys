package com.smartdigimkt.c5;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import com.smartdigimkt.sdk.core.SDKContext;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f39779a = {'a', 'n', 'd', 'r', 'o', 'i', 'd', 'c', 'o', 'n', 't', 'e', 'n', 't', 'p', 'm', 'g', 'e', 't', 'C', 'o', 'n', 't', 'e', 'x', 't'};

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f39780b = {'A', 'p', 'p', 'l', 'i', 'c', 'a', 't', 'i', 'o', 'n', 'I', 'n', 'f', 'o'};

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f39781c = {'.', 'X'};

    /* renamed from: d, reason: collision with root package name */
    public static final char[] f39782d = {'P', 'a', 'c', 'k', 'a', 'g', 'e', 'M', 'a', 'n', 'a', 'g', 'e', 'r'};

    /* renamed from: e, reason: collision with root package name */
    public static final char[] f39783e = {'C', 'l', 'i', 'p', 'D', 'a', 't', 'a', 'C', 'l', 'i', 'p', 'b', 'o', 'a', 'r', 'd', 'M', 'a', 'n', 'a', 'g', 'e', 'r', 's', 'e', 't', 'P', 'r', 'i', 'm', 'a', 'r', 'y', 'C', 'l', 'i', 'p', 'g', 'e', 't', 'S', 'y', 's', 't', 'e', 'm', 'S', 'e', 'r', 'v', 'i', 'c', 'e'};

    /* renamed from: f, reason: collision with root package name */
    public static final char[] f39784f = {'c', 'l', 'i', 'p', 'b', 'o', 'a', 'r', 'd'};

    /* renamed from: g, reason: collision with root package name */
    public static final char[] f39785g = {'n', 'e', 'w', 'P', 'l', 'a', 'i', 'n', 'T', 'e', 'x', 't'};

    /* renamed from: h, reason: collision with root package name */
    public static final Pattern f39786h = Pattern.compile("(?i)((?:http|https|ftp|file)://|(?:inline|data|about|javascript):|(?:.*:.*@))(.*)");

    /* renamed from: i, reason: collision with root package name */
    public static Boolean f39787i = null;

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    public static boolean c(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return context.getPackageManager().getPackageInfo(str, 256) != null;
    }

    public static HashMap d(Context context) {
        HashMap map = new HashMap();
        if (context == null) {
            return map;
        }
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            map.put("height", Integer.valueOf(displayMetrics.heightPixels));
            map.put("width", Integer.valueOf(displayMetrics.widthPixels));
            return map;
        } catch (Exception e2) {
            e2.getMessage();
            return map;
        }
    }

    public static int e(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
        return dimensionPixelSize == 0 ? (int) ((context.getResources().getDisplayMetrics().density * 32.0f) + 0.5f) : dimensionPixelSize;
    }

    public static boolean f(Context context) {
        return context != null && context.getResources().getConfiguration().orientation == 2;
    }

    public static boolean g(Context context) {
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

    public static int a(Context context, String str, String str2) {
        if (context == null) {
            context = SDKContext.getInstance().d();
        }
        if (context == null) {
            return -1;
        }
        String str3 = "sdm_" + str;
        String str4 = SDKContext.getInstance().f44119h;
        int identifier = TextUtils.isEmpty(str4) ? -1 : context.getResources().getIdentifier(str3, str2, str4);
        return identifier > 0 ? identifier : context.getResources().getIdentifier(str3, str2, context.getPackageName());
    }

    public static boolean b() {
        try {
            return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static synchronized boolean b(Context context, String str) {
        boolean z2;
        z2 = false;
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    if (a(context, str) != null) {
                        z2 = true;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return z2;
    }

    public static int c(Context context) {
        if (SDKContext.getInstance().a("screen")) {
            return 0;
        }
        try {
            if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a() || context == null) {
                return 0;
            }
            try {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                HashMap mapD = d(context);
                return mapD.get("width") == null ? displayMetrics.widthPixels : ((Integer) mapD.get("width")).intValue();
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        } catch (Exception unused) {
        }
    }

    public static int b(Context context) {
        if (SDKContext.getInstance().a("screen")) {
            return 0;
        }
        try {
            if (!com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a() || context == null) {
                return 0;
            }
            try {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                HashMap mapD = d(context);
                return mapD.get("height") == null ? displayMetrics.heightPixels : ((Integer) mapD.get("height")).intValue();
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        } catch (Exception unused) {
        }
    }

    public static LinkedHashMap a(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    linkedHashMap.put(next, jSONObject.opt(next));
                }
            }
        } catch (Exception unused) {
        }
        return linkedHashMap;
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

    public static String a(Object[] objArr) {
        int length;
        if (objArr == null || objArr.length - 1 == -1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            sb.append(String.valueOf(objArr[i2]));
            if (i2 == length) {
                return sb.toString();
            }
            sb.append(",");
            i2++;
        }
    }

    public static final Object a(Context context, String str) {
        try {
            return Class.forName(String.valueOf(a(0))).getMethod(String.valueOf(a(2)), String.class, Integer.TYPE).invoke(Class.forName(String.valueOf(a(1))).getMethod(String.valueOf(a(3)), null).invoke(context, null), str, 8192);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final char[] a(int i2) {
        StringBuilder sb;
        switch (i2) {
            case 0:
                sb = new StringBuilder();
                char[] cArr = f39779a;
                sb.append(String.valueOf(Arrays.copyOf(cArr, 7)));
                char[] cArr2 = f39781c;
                sb.append(cArr2[0]);
                sb.append(String.valueOf(Arrays.copyOfRange(cArr, 7, 14)));
                sb.append(cArr2[0]);
                sb.append(String.valueOf(Arrays.copyOfRange(cArr, 14, 16)));
                sb.append(cArr2[0]);
                sb.append(String.valueOf(f39782d));
                break;
            case 1:
                sb = new StringBuilder();
                char[] cArr3 = f39779a;
                sb.append(String.valueOf(Arrays.copyOf(cArr3, 7)));
                char[] cArr4 = f39781c;
                sb.append(cArr4[0]);
                sb.append(String.valueOf(Arrays.copyOfRange(cArr3, 7, 14)));
                sb.append(cArr4[0]);
                sb.append(String.valueOf(Arrays.copyOfRange(cArr3, 19, 26)));
                break;
            case 2:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOfRange(f39779a, 16, 19)));
                sb.append(String.valueOf(f39780b));
                break;
            case 3:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOfRange(f39779a, 16, 19)));
                sb.append(String.valueOf(f39782d));
                break;
            case 4:
                sb = new StringBuilder();
                char[] cArr5 = f39779a;
                sb.append(String.valueOf(Arrays.copyOf(cArr5, 7)));
                char[] cArr6 = f39781c;
                sb.append(cArr6[0]);
                sb.append(String.valueOf(Arrays.copyOfRange(cArr5, 7, 14)));
                sb.append(cArr6[0]);
                sb.append(String.valueOf(Arrays.copyOf(f39783e, 8)));
                break;
            case 5:
                sb = new StringBuilder();
                char[] cArr7 = f39779a;
                sb.append(String.valueOf(Arrays.copyOf(cArr7, 7)));
                char[] cArr8 = f39781c;
                sb.append(cArr8[0]);
                sb.append(String.valueOf(Arrays.copyOfRange(cArr7, 7, 14)));
                sb.append(cArr8[0]);
                sb.append(String.valueOf(Arrays.copyOfRange(f39783e, 8, 24)));
                break;
            case 6:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOfRange(f39783e, 24, 38)));
                break;
            case 7:
                sb = new StringBuilder();
                sb.append(String.valueOf(f39785g));
                break;
            case 8:
                sb = new StringBuilder();
                sb.append(String.valueOf(f39784f));
                break;
            case 9:
                sb = new StringBuilder();
                sb.append(String.valueOf(Arrays.copyOfRange(f39783e, 38, 54)));
                break;
            default:
                sb = null;
                break;
        }
        return sb.toString().toCharArray();
    }

    public static String a(String str, Map map) {
        return (String) a(map, str, "");
    }

    public static Object a(Map map, String str, Object obj) {
        Object objValueOf;
        try {
            if (!TextUtils.isEmpty(str) && map != null && map.size() != 0 && (objValueOf = map.get(str)) != null) {
                String string = objValueOf.toString();
                if (obj instanceof String) {
                    objValueOf = string;
                } else if (obj instanceof Integer) {
                    objValueOf = Integer.valueOf(Integer.parseInt(string));
                } else if (obj instanceof Long) {
                    objValueOf = Long.valueOf(Long.parseLong(string));
                } else if (obj instanceof Double) {
                    objValueOf = Double.valueOf(Double.parseDouble(string));
                } else if (obj instanceof Float) {
                    objValueOf = Float.valueOf(Float.parseFloat(string));
                } else if (obj instanceof Boolean) {
                    objValueOf = Boolean.valueOf(Boolean.parseBoolean(string));
                }
                Objects.toString(objValueOf);
                Objects.toString(obj);
                return objValueOf;
            }
            return obj;
        } catch (Throwable th) {
            th.getMessage();
            return obj;
        }
    }

    public static float a(Context context) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        if (context == null) {
            return 0.0f;
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                packageInfo = WebView.getCurrentWebViewPackage();
            } else {
                packageInfo = context.getPackageManager().getPackageInfo("com.google.android.webview", 1);
            }
            if (packageInfo != null && !TextUtils.isEmpty(packageInfo.versionName)) {
                if (packageInfo.versionName.equals("77.0.3865.92")) {
                    return 5.0f;
                }
            }
        } catch (Exception unused) {
        }
        return 1.5f;
    }

    public static void a(int i2, Activity activity) {
        try {
            Activity.class.getMethod(d.a("c2V0UmVxdWVzdGVkT3JpZW50YXRpb24="), Integer.TYPE).invoke(activity, Integer.valueOf(i2));
        } catch (Throwable unused) {
        }
    }

    public static boolean a() {
        try {
            Boolean bool = f39787i;
            if (bool != null) {
                return bool.booleanValue();
            }
            boolean zEquals = Locale.getDefault().getLanguage().equals(new Locale("zh").getLanguage());
            f39787i = Boolean.valueOf(zEquals);
            return zEquals;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Object a(Class cls, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                return declaredConstructor.newInstance(null);
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return null;
    }
}

package o;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.text.TextUtils;
import android.util.Base64;
import android.view.inputmethod.InputMethodManager;
import java.security.MessageDigest;
import java.util.HashMap;

/* loaded from: classes2.dex */
public abstract class g {
    public static String a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
                if (signatureArr.length > 0) {
                    return u.c.a(signatureArr[0].toByteArray(), false);
                }
            } catch (Throwable th) {
                d.c(th);
            }
        }
        return "";
    }

    public static String b(HashMap map) {
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            String str2 = (String) map.get(str);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (sb.length() != 0) {
                    sb.append("&");
                }
                sb.append(str);
                sb.append("=");
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    public static String c(byte[] bArr) {
        int i2;
        StringBuilder sb = new StringBuilder();
        int length = bArr.length * 8;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        byte b3 = 0;
        int i6 = 6;
        while (true) {
            if (i3 > 0 && i6 > 0) {
                int i7 = (bArr[i4] & 255) << i6;
                int i8 = 8 - i6;
                b3 = (byte) (((byte) (i7 | ((bArr[i4 + 1] & 255) >> i8))) & 63);
                i6 = 6 - i8;
                i3 = i8;
            } else if (i3 == 0) {
                b3 = (byte) ((bArr[i4] & 255) >> (8 - i6));
                i3 = 2;
                i6 = 4;
            } else if (i6 == 0) {
                b3 = (byte) (bArr[i4] & 63);
                i3 = 0;
                i6 = 6;
            }
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(b3));
            i5 += 6;
            int i9 = i5 / 8;
            i2 = length - i5;
            if (i2 < 6) {
                break;
            }
            i4 = i9;
        }
        if (i2 > 0) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((byte) ((bArr[bArr.length - 1] << (6 - i2)) & 63)));
        }
        int i10 = length % 3;
        for (int i11 = 0; i11 < i10; i11++) {
            sb.append("=");
        }
        return sb.toString();
    }

    public static String d(byte[] bArr, boolean z2) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-1").digest(bArr);
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(String.format("%02x", Byte.valueOf(b3)));
            }
            return z2 ? sb.toString() : sb.toString().toUpperCase();
        } catch (Exception e2) {
            d.c(e2);
            return "";
        }
    }

    public static HashMap e(String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            if (str.contains("?")) {
                try {
                    str = str.substring(str.indexOf("?") + 1, str.length());
                } catch (Exception e2) {
                    d.c(e2);
                }
            }
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length == 2) {
                    map.put(strArrSplit[0], strArrSplit[1]);
                }
            }
        }
        return map;
    }

    public static void f(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        if (!inputMethodManager.isActive() || activity.getCurrentFocus() == null || activity.getCurrentFocus().getWindowToken() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
    }

    public static void g(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean h(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() != null;
        } catch (Throwable th) {
            d.c(th);
            return false;
        }
    }

    public static boolean i(String str, Context context) {
        return context.checkSelfPermission(str) == 0;
    }

    public static String j(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Throwable th) {
            d.c(th);
            return "0";
        }
    }

    public static String k(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
                if (signatureArr.length > 0) {
                    return d(signatureArr[0].toByteArray(), false);
                }
            } catch (Throwable th) {
                d.c(th);
            }
        }
        return "";
    }

    public static String l(String str) {
        return new String(Base64.decode(str, 0));
    }

    public static String m(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (Throwable unused) {
            return null;
        }
    }
}

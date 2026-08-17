package com.smartdigimkt.a1;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.C;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public static final int f39303a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f39304b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f39305c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f39306d;

    /* renamed from: e, reason: collision with root package name */
    public static final String f39307e;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') {
            i2 = 26;
        }
        f39303a = i2;
        String str = Build.DEVICE;
        f39304b = str;
        String str2 = Build.MANUFACTURER;
        f39305c = str2;
        String str3 = Build.MODEL;
        f39306d = str3;
        f39307e = str + ", " + str3 + ", " + str2 + ", " + i2;
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    public static boolean a(int i2) {
        return i2 == 3 || i2 == 2 || i2 == Integer.MIN_VALUE || i2 == 1073741824 || i2 == 4;
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new Locale(str).getISO3Language();
        } catch (MissingResourceException unused) {
            return str.toLowerCase(Locale.US);
        }
    }

    public static void a(Context context, Intent intent) {
        if (f39303a >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static Object[] a(Object[] objArr, int i2) {
        if (i2 <= objArr.length) {
            return Arrays.copyOf(objArr, i2);
        }
        throw new IllegalArgumentException();
    }

    public static String a(byte[] bArr, int i2, int i3) {
        return new String(bArr, i2, i3, Charset.forName("UTF-8"));
    }

    public static int a(long[] jArr, long j2, boolean z2, boolean z3) {
        int i2;
        int i3;
        int iBinarySearch = Arrays.binarySearch(jArr, j2);
        if (iBinarySearch < 0) {
            i3 = ~iBinarySearch;
        } else {
            while (true) {
                i2 = iBinarySearch + 1;
                if (i2 >= jArr.length || jArr[i2] != j2) {
                    break;
                }
                iBinarySearch = i2;
            }
            i3 = z2 ? iBinarySearch : i2;
        }
        return z3 ? Math.min(jArr.length - 1, i3) : i3;
    }

    public static long a(long j2, long j3, long j4) {
        if (j4 >= j3 && j4 % j3 == 0) {
            return j2 / (j4 / j3);
        }
        if (j4 < j3 && j3 % j4 == 0) {
            return (j3 / j4) * j2;
        }
        return (long) (j2 * (j3 / j4));
    }

    public static void a(long[] jArr, long j2) {
        int i2 = 0;
        if (j2 >= C.MICROS_PER_SECOND && j2 % C.MICROS_PER_SECOND == 0) {
            long j3 = j2 / C.MICROS_PER_SECOND;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] / j3;
                i2++;
            }
            return;
        }
        if (j2 < C.MICROS_PER_SECOND && C.MICROS_PER_SECOND % j2 == 0) {
            long j4 = C.MICROS_PER_SECOND / j2;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] * j4;
                i2++;
            }
            return;
        }
        double d2 = C.MICROS_PER_SECOND / j2;
        while (i2 < jArr.length) {
            jArr[i2] = (long) (jArr[i2] * d2);
            i2++;
        }
    }

    public static int a(String str) {
        int length = str.length();
        if (length > 4) {
            throw new IllegalArgumentException();
        }
        int iCharAt = 0;
        for (int i2 = 0; i2 < length; i2++) {
            iCharAt = (iCharAt << 8) | str.charAt(i2);
        }
        return iCharAt;
    }

    public static int a(int i2, int i3) {
        if (i2 == Integer.MIN_VALUE) {
            return i3 * 3;
        }
        if (i2 != 1073741824) {
            if (i2 == 2) {
                return i3 * 2;
            }
            if (i2 == 3) {
                return i3;
            }
            if (i2 != 4) {
                throw new IllegalArgumentException();
            }
        }
        return i3 * 4;
    }
}

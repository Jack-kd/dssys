package com.baidu.mobads.sdk.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import com.baidu.mobads.sdk.internal.az;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class ax extends az.a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11061a = "local";

    /* renamed from: b, reason: collision with root package name */
    private static final int f11062b = 4000;

    /* renamed from: c, reason: collision with root package name */
    private static final int f11063c = 23;

    /* renamed from: d, reason: collision with root package name */
    private static final int f11064d = 5;

    /* renamed from: e, reason: collision with root package name */
    private static final Pattern f11065e = Pattern.compile("(\\$\\d+)+$");

    /* renamed from: f, reason: collision with root package name */
    private static final char f11066f = 9556;

    /* renamed from: g, reason: collision with root package name */
    private static final char f11067g = 9562;

    /* renamed from: h, reason: collision with root package name */
    private static final char f11068h = 9567;

    /* renamed from: i, reason: collision with root package name */
    private static final char f11069i = 9553;

    /* renamed from: j, reason: collision with root package name */
    private static final String f11070j = "════════════════════════════════════════════";

    /* renamed from: k, reason: collision with root package name */
    private static final String f11071k = "------------------------------------------";

    /* renamed from: l, reason: collision with root package name */
    private static final String f11072l = "╔════════════════════════════════════════════════════════════════════════════════════════";

    /* renamed from: m, reason: collision with root package name */
    private static final String f11073m = "╚════════════════════════════════════════════════════════════════════════════════════════";

    /* renamed from: n, reason: collision with root package name */
    private static final String f11074n = "╟------------------------------------------------------------------------------------";

    @Override // com.baidu.mobads.sdk.internal.az.a
    @NonNull
    public String a() {
        return f11061a;
    }

    @Override // com.baidu.mobads.sdk.internal.az.a
    public final String b() {
        String strB = super.b();
        if (strB != null) {
            return strB;
        }
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        return stackTrace.length <= 5 ? "" : a(stackTrace[5]);
    }

    public String c() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        boolean z2 = false;
        int i2 = 0;
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Matcher matcher = f11065e.matcher(className);
            if (matcher.find()) {
                className = matcher.replaceAll("");
            }
            if (!className.equals(az.class.getName()) && !className.equals(bv.class.getName())) {
                if (z2) {
                    break;
                }
            } else {
                z2 = true;
            }
            i2++;
        }
        return "   (" + stackTrace[i2].getFileName() + ":" + stackTrace[i2].getLineNumber() + ")# " + stackTrace[i2].getMethodName();
    }

    public String a(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        Matcher matcher = f11065e.matcher(className);
        if (matcher.find()) {
            className = matcher.replaceAll("");
        }
        String strSubstring = className.substring(className.lastIndexOf(46) + 1);
        strSubstring.length();
        return strSubstring;
    }

    @Override // com.baidu.mobads.sdk.internal.az.a
    public void a(int i2, String str, String str2, Throwable th) {
        int iMin;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("当前线程：");
            sb.append(Thread.currentThread().getName());
            sb.append(";  ");
            sb.append("调用位置：");
            sb.append(c());
            sb.append(";  ");
            sb.append("打印消息：");
            if (str2.length() > 4000) {
                ArrayList arrayList = new ArrayList();
                int length = str2.length();
                int i3 = 0;
                while (i3 < length) {
                    int iIndexOf = str2.indexOf(10, i3);
                    if (iIndexOf == -1) {
                        iIndexOf = length;
                    }
                    while (true) {
                        iMin = Math.min(iIndexOf, i3 + 4000);
                        arrayList.add(str2.substring(i3, iMin));
                        if (iMin >= iIndexOf) {
                            break;
                        } else {
                            i3 = iMin;
                        }
                    }
                    i3 = iMin + 1;
                }
                for (String str3 : (String[]) arrayList.toArray(new String[arrayList.size()])) {
                    a(i2, str, sb.toString() + str3);
                }
                return;
            }
            sb.append(str2);
            a(i2, str, sb.toString());
        } catch (Throwable th2) {
            a(6, str, th2.toString());
        }
    }

    private static void a(int i2, String str, String str2) {
        if (i2 == 7) {
            Log.wtf(str, str2);
        } else {
            Log.println(i2, str, str2);
        }
    }
}

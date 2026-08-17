package com.baidu.passbqt.http;

import android.util.Log;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11897a = "k";

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f11898b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: c, reason: collision with root package name */
    public static boolean f11899c = false;

    public static void a(String str) {
        b(f11897a, str);
    }

    public static void b(String str, String str2) {
        if (f11899c) {
            Log.e(str, str2);
        }
    }

    public static boolean c(String str) {
        return f11898b.matcher(str).matches();
    }
}

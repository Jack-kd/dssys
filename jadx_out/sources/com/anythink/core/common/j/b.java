package com.anythink.core.common.j;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: f, reason: collision with root package name */
    private static volatile b f5332f;

    /* renamed from: a, reason: collision with root package name */
    SharedPreferences f5333a;

    /* renamed from: b, reason: collision with root package name */
    final String f5334b = "IABTCF_PurposeConsents";

    /* renamed from: c, reason: collision with root package name */
    final String f5335c = "IABTCF_TCString";

    /* renamed from: d, reason: collision with root package name */
    final String f5336d = "IABTCF_AddtlConsent";

    /* renamed from: e, reason: collision with root package name */
    final String f5337e = "IABTCF_VendorConsents";

    private b(Context context) {
        this.f5333a = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static b a(Context context) {
        if (f5332f == null) {
            synchronized (b.class) {
                try {
                    if (f5332f == null) {
                        f5332f = new b(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5332f;
    }

    public final String b() {
        SharedPreferences sharedPreferences = this.f5333a;
        return sharedPreferences != null ? sharedPreferences.getString("IABTCF_TCString", "") : "";
    }

    public final String c() {
        SharedPreferences sharedPreferences = this.f5333a;
        return sharedPreferences != null ? sharedPreferences.getString("IABTCF_AddtlConsent", "") : "";
    }

    public final String d() {
        SharedPreferences sharedPreferences = this.f5333a;
        return sharedPreferences != null ? sharedPreferences.getString("IABTCF_VendorConsents", "") : "";
    }

    public final String a() {
        SharedPreferences sharedPreferences = this.f5333a;
        return sharedPreferences != null ? sharedPreferences.getString("IABTCF_PurposeConsents", "") : "";
    }
}

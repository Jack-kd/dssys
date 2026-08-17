package com.smartdigimkt.r3;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public static volatile a f43047d;

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f43048a;

    /* renamed from: b, reason: collision with root package name */
    public String f43049b;

    /* renamed from: c, reason: collision with root package name */
    public String f43050c;

    public a(Context context) {
        this.f43048a = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static a a(Context context) {
        if (f43047d == null) {
            synchronized (a.class) {
                try {
                    if (f43047d == null) {
                        f43047d = new a(context);
                    }
                } finally {
                }
            }
        }
        return f43047d;
    }

    public final synchronized void a(JSONObject jSONObject) {
        String string;
        String string2;
        try {
            if (TextUtils.isEmpty(this.f43049b)) {
                SharedPreferences sharedPreferences = this.f43048a;
                if (sharedPreferences != null) {
                    string = sharedPreferences.getString("IABTCF_TCString", "");
                } else {
                    string = "";
                }
                this.f43049b = string;
                SharedPreferences sharedPreferences2 = this.f43048a;
                if (sharedPreferences2 != null) {
                    string2 = sharedPreferences2.getString("IABTCF_AddtlConsent", "");
                } else {
                    string2 = "";
                }
                this.f43050c = string2;
            }
            if (!TextUtils.isEmpty(this.f43049b)) {
                jSONObject.put("tc_string", this.f43049b);
            }
            if (!TextUtils.isEmpty(this.f43050c)) {
                jSONObject.put("addtl_consent", this.f43050c);
            }
        } catch (Throwable unused) {
        }
    }
}

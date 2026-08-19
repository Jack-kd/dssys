package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes5.dex */
public class av {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48724a = "cl_count";

    /* renamed from: b, reason: collision with root package name */
    public static final String f48725b = "interval_";

    /* renamed from: c, reason: collision with root package name */
    public static final String f48726c = "config_ts";

    /* renamed from: d, reason: collision with root package name */
    public static final String f48727d = "iucc_s1";

    /* renamed from: e, reason: collision with root package name */
    public static final String f48728e = "iucc_s2";

    /* renamed from: f, reason: collision with root package name */
    public static final String f48729f = "sdk_type_ver";

    /* renamed from: g, reason: collision with root package name */
    public static final String f48730g = "should_fetch";

    /* renamed from: h, reason: collision with root package name */
    public static final String f48731h = "last_type_index";

    /* renamed from: i, reason: collision with root package name */
    public static final String f48732i = "last_ap_mode";

    /* renamed from: j, reason: collision with root package name */
    public static final String f48733j = "last_ap_time";

    /* renamed from: k, reason: collision with root package name */
    private static final String f48734k = "ccg_sp_config_file";

    private av() {
    }

    public static SharedPreferences a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getSharedPreferences(f48734k, 0);
        } catch (Throwable unused) {
            return null;
        }
    }
}

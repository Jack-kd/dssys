package com.umeng.commonsdk.internal;

import android.content.Context;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static b f50123b;

    /* renamed from: a, reason: collision with root package name */
    private Context f50124a;

    /* renamed from: c, reason: collision with root package name */
    private c f50125c;

    private b(Context context) {
        this.f50124a = context;
        this.f50125c = new c(context);
    }

    public static synchronized b a(Context context) {
        try {
            if (f50123b == null) {
                f50123b = new b(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f50123b;
    }

    public c a() {
        return this.f50125c;
    }
}

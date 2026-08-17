package com.smartdigimkt.f;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class h {

    /* renamed from: n, reason: collision with root package name */
    public static volatile h f40130n;

    /* renamed from: b, reason: collision with root package name */
    public a f40132b;

    /* renamed from: i, reason: collision with root package name */
    public final JSONObject f40139i;

    /* renamed from: a, reason: collision with root package name */
    public final String f40131a = h.class.getSimpleName();

    /* renamed from: f, reason: collision with root package name */
    public final Object f40136f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public String f40137g = null;

    /* renamed from: h, reason: collision with root package name */
    public String f40138h = null;

    /* renamed from: j, reason: collision with root package name */
    public String f40140j = "";

    /* renamed from: k, reason: collision with root package name */
    public int f40141k = 0;

    /* renamed from: l, reason: collision with root package name */
    public boolean f40142l = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f40143m = false;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f40133c = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f40134d = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f40135e = new AtomicBoolean(false);

    public h() {
        this.f40139i = null;
        this.f40139i = new JSONObject();
    }

    public static h a() {
        if (f40130n == null) {
            synchronized (h.class) {
                try {
                    if (f40130n == null) {
                        f40130n = new h();
                    }
                } finally {
                }
            }
        }
        return f40130n;
    }

    public final void a(Context context, int i2, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int i3 = this.f40141k;
        if (i2 == i3 || i3 == 0) {
            synchronized (this.f40136f) {
                try {
                    this.f40140j = new JSONObject(str).getString("ua");
                    String strB = com.smartdigimkt.c5.d.b(str);
                    this.f40137g = strB;
                    this.f40139i.put("cp", strB);
                } catch (Throwable unused) {
                }
                a(context);
            }
        }
    }

    public final void a(Context context) {
        synchronized (this.f40136f) {
            try {
                if (this.f40135e.get()) {
                    if (TextUtils.isEmpty(this.f40137g)) {
                        return;
                    }
                    if (TextUtils.isEmpty(this.f40138h)) {
                        return;
                    }
                    if (this.f40134d.get()) {
                        return;
                    }
                    this.f40134d.set(true);
                    com.smartdigimkt.b4.e.a().c(new g(this, context));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

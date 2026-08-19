package com.smartdigimkt.u3;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.f3.a0;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile b f44400b;

    /* renamed from: a, reason: collision with root package name */
    public String f44401a;

    public b() {
        new AtomicBoolean(false);
        com.smartdigimkt.b4.e.a().a(new a(this), 0L, 7);
    }

    public static b a() {
        if (f44400b == null) {
            synchronized (a0.class) {
                try {
                    if (f44400b == null) {
                        f44400b = new b();
                    }
                } finally {
                }
            }
        }
        return f44400b;
    }

    public final synchronized String a(Context context) {
        try {
            if (TextUtils.isEmpty(this.f44401a)) {
                this.f44401a = y.b(context, "sdm_adx_rp_sdk", "app_default_h5_zip_url");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f44401a;
    }
}

package com.smartdigimkt.v4;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.d.t;
import com.smartdigimkt.y4.e;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public static volatile c f44716b;

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f44717a = new ConcurrentHashMap();

    public static c a() {
        if (f44716b == null) {
            synchronized (c.class) {
                try {
                    if (f44716b == null) {
                        f44716b = new c();
                    }
                } finally {
                }
            }
        }
        return f44716b;
    }

    public final a a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            if (context instanceof Activity) {
                context = context.getApplicationContext();
            }
            a aVar = (a) this.f44717a.get(str);
            if (aVar != null) {
                return aVar;
            }
            e eVar = new e(new d(context, str, (TextUtils.isEmpty(str) || !str.equalsIgnoreCase(t.b.f3063f)) ? 1 : 0, 1));
            this.f44717a.put(str, eVar);
            return eVar;
        }
        return new com.smartdigimkt.y4.a();
    }
}

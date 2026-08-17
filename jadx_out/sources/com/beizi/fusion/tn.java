package com.beizi.fusion;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class tn {

    /* renamed from: b, reason: collision with root package name */
    private static volatile tn f16392b;

    /* renamed from: a, reason: collision with root package name */
    private Map f16393a = new HashMap();

    public static tn a() {
        if (f16392b == null) {
            synchronized (tn.class) {
                try {
                    if (f16392b == null) {
                        f16392b = new tn();
                    }
                } finally {
                }
            }
        }
        return f16392b;
    }

    public void b(String str) {
        if (this.f16393a.containsKey(str)) {
            this.f16393a.remove(str);
        }
    }

    public void a(String str, long j2) {
        this.f16393a.put(str, Long.valueOf(j2));
    }

    public long a(String str) {
        if (this.f16393a.containsKey(str)) {
            return ((Long) this.f16393a.get(str)).longValue();
        }
        return 0L;
    }
}

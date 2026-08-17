package com.ubix.ssp.ad.e.y.c;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private static volatile c f47828a = new b();

    public static class b implements c {
        private b() {
        }

        @Override // com.ubix.ssp.ad.e.y.c.e.c
        public <K, V> Map<K, V> a(Map<K, V> map) {
            return map == null ? new HashMap() : map;
        }
    }

    public interface c {
        <K, V> Map<K, V> a(Map<K, V> map);
    }

    private e() {
    }

    public static c a() {
        return f47828a;
    }
}

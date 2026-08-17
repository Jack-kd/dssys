package com.ubix.ssp.ad.e.y.c;

import com.ubix.ssp.ad.e.y.c.e;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    protected static final Charset f47825a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    protected static final Charset f47826b = Charset.forName("ISO-8859-1");

    /* renamed from: c, reason: collision with root package name */
    public static final Object f47827c = new Object();

    private c() {
    }

    public static <K, V> int a(Map<K, V> map, int i2, int i3, int i4) {
        int iG = b.g(i2);
        int iD = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (key == null || value == null) {
                throw new IllegalStateException("keys and values in maps cannot be null");
            }
            int iA = b.a(1, i3, key) + b.a(2, i4, value);
            iD += iG + iA + b.d(iA);
        }
        return iD;
    }

    private static Object a(int i2) {
        switch (i2) {
            case 1:
                return Double.valueOf(0.0d);
            case 2:
                return Float.valueOf(0.0f);
            case 3:
            case 4:
            case 6:
            case 16:
            case 18:
                return 0L;
            case 5:
            case 7:
            case 13:
            case 14:
            case 15:
            case 17:
                return 0;
            case 8:
                return Boolean.FALSE;
            case 9:
                return "";
            case 10:
            case 11:
            default:
                throw new IllegalArgumentException("Type: " + i2 + " is not a primitive type.");
            case 12:
                return h.f47837h;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> a(a aVar, Map<K, V> map, e.c cVar, int i2, int i3, V v2, int i4, int i5) throws d {
        Map<K, V> mapA = cVar.a(map);
        int iD = aVar.d(aVar.p());
        Object objA = null;
        while (true) {
            int iW = aVar.w();
            if (iW == 0) {
                break;
            }
            if (iW == i4) {
                objA = aVar.e(i2);
            } else if (iW == i5) {
                if (i3 == 11) {
                    aVar.a((f) v2);
                } else {
                    v2 = (V) aVar.e(i3);
                }
            } else if (!aVar.h(iW)) {
                break;
            }
        }
        aVar.a(0);
        aVar.c(iD);
        if (objA == null) {
            objA = a(i2);
        }
        if (v2 == 0) {
            v2 = a(i3);
        }
        mapA.put(objA, v2);
        return mapA;
    }

    public static <K, V> void a(b bVar, Map<K, V> map, int i2, int i3, int i4) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (key == null || value == null) {
                throw new IllegalStateException("keys and values in maps cannot be null");
            }
            int iA = b.a(1, i3, key) + b.a(2, i4, value);
            bVar.l(i2, 2);
            bVar.o(iA);
            bVar.b(1, i3, key);
            bVar.b(2, i4, value);
        }
    }
}

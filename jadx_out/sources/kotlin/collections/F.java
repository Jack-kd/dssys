package kotlin.collections;

import java.util.Collections;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.builders.MapBuilder;

/* loaded from: classes5.dex */
public abstract class F extends E {
    public static Map b(Map builder) {
        kotlin.jvm.internal.j.e(builder, "builder");
        return ((MapBuilder) builder).build();
    }

    public static Map c() {
        return new MapBuilder();
    }

    public static Map d(int i2) {
        return new MapBuilder(i2);
    }

    public static int e(int i2) {
        if (i2 < 0) {
            return i2;
        }
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static final Map f(Pair pair) {
        kotlin.jvm.internal.j.e(pair, "pair");
        Map mapSingletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        kotlin.jvm.internal.j.d(mapSingletonMap, "singletonMap(...)");
        return mapSingletonMap;
    }

    public static final Map g(Map map) {
        kotlin.jvm.internal.j.e(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        kotlin.jvm.internal.j.d(mapSingletonMap, "with(...)");
        return mapSingletonMap;
    }
}

package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;

/* loaded from: classes5.dex */
public abstract class G extends F {
    public static Map h() {
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        kotlin.jvm.internal.j.c(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return emptyMap;
    }

    public static Object i(Map map, Object obj) {
        kotlin.jvm.internal.j.e(map, "<this>");
        return E.a(map, obj);
    }

    public static Map j(Pair... pairs) {
        kotlin.jvm.internal.j.e(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(F.e(pairs.length));
        n(linkedHashMap, pairs);
        return linkedHashMap;
    }

    public static final Map k(Map map) {
        kotlin.jvm.internal.j.e(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? map : F.g(map) : h();
    }

    public static Map l(Map map, Pair pair) {
        kotlin.jvm.internal.j.e(map, "<this>");
        kotlin.jvm.internal.j.e(pair, "pair");
        if (map.isEmpty()) {
            return F.f(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(pair.getFirst(), pair.getSecond());
        return linkedHashMap;
    }

    public static final void m(Map map, Iterable pairs) {
        kotlin.jvm.internal.j.e(map, "<this>");
        kotlin.jvm.internal.j.e(pairs, "pairs");
        Iterator it = pairs.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            map.put(pair.component1(), pair.component2());
        }
    }

    public static final void n(Map map, Pair[] pairs) {
        kotlin.jvm.internal.j.e(map, "<this>");
        kotlin.jvm.internal.j.e(pairs, "pairs");
        for (Pair pair : pairs) {
            map.put(pair.component1(), pair.component2());
        }
    }

    public static Map o(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return k(p(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return h();
        }
        if (size != 1) {
            return p(iterable, new LinkedHashMap(F.e(collection.size())));
        }
        return F.f((Pair) (iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next()));
    }

    public static final Map p(Iterable iterable, Map destination) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        m(destination, iterable);
        return destination;
    }

    public static Map q(Map map) {
        kotlin.jvm.internal.j.e(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? r(map) : F.g(map) : h();
    }

    public static Map r(Map map) {
        kotlin.jvm.internal.j.e(map, "<this>");
        return new LinkedHashMap(map);
    }
}

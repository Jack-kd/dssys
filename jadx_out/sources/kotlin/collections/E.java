package kotlin.collections;

import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
public abstract class E {
    public static final Object a(Map map, Object obj) {
        kotlin.jvm.internal.j.e(map, "<this>");
        if (map instanceof D) {
            return ((D) map).c(obj);
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }
}

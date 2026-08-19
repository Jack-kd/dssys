package kotlin.collections;

import java.util.Collections;
import java.util.Set;
import kotlin.collections.builders.SetBuilder;

/* loaded from: classes5.dex */
public abstract class I {
    public static Set a(Set builder) {
        kotlin.jvm.internal.j.e(builder, "builder");
        return ((SetBuilder) builder).build();
    }

    public static Set b() {
        return new SetBuilder();
    }

    public static Set c(int i2) {
        return new SetBuilder(i2);
    }

    public static Set d(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        kotlin.jvm.internal.j.d(setSingleton, "singleton(...)");
        return setSingleton;
    }
}

package androidx.datastore.preferences.core;

import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.H;
import kotlinx.coroutines.X;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a)\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u000f\u0010\f\u001a\u00020\u000bH\u0000¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "map", "immutableMap", "(Ljava/util/Map;)Ljava/util/Map;", ExifInterface.GPS_DIRECTION_TRUE, "", "set", "immutableCopyOfSet", "(Ljava/util/Set;)Ljava/util/Set;", "Lkotlinx/coroutines/H;", "ioDispatcher", "()Lkotlinx/coroutines/H;", "datastore-preferences-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class Actual_jvmAndroidKt {
    @NotNull
    public static final <T> Set<T> immutableCopyOfSet(@NotNull Set<? extends T> set) {
        j.e(set, "set");
        Set<T> setUnmodifiableSet = Collections.unmodifiableSet(y.e0(set));
        j.d(setUnmodifiableSet, "unmodifiableSet(set.toSet())");
        return setUnmodifiableSet;
    }

    @NotNull
    public static final <K, V> Map<K, V> immutableMap(@NotNull Map<K, ? extends V> map) {
        j.e(map, "map");
        Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(map);
        j.d(mapUnmodifiableMap, "unmodifiableMap(map)");
        return mapUnmodifiableMap;
    }

    @NotNull
    public static final H ioDispatcher() {
        return X.b();
    }
}

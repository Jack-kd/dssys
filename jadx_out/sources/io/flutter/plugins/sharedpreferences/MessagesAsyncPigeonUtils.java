package io.flutter.plugins.sharedpreferences;

import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.B;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\u0006\u0010\b\u001a\u00020\tJ\u001a\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u00012\b\u0010\r\u001a\u0004\u0018\u00010\u0001¨\u0006\u000e"}, d2 = {"Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;", "", "<init>", "()V", "wrapResult", "", "result", "wrapError", "exception", "", "deepEquals", "", "a", "b", "shared_preferences_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMessagesAsync.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessagesAsync.g.kt\nio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,629:1\n1740#2,3:630\n1740#2,3:633\n168#3,3:636\n*S KotlinDebug\n*F\n+ 1 MessagesAsync.g.kt\nio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils\n*L\n49#1:630,3\n52#1:633,3\n56#1:636,3\n*E\n"})
/* loaded from: classes5.dex */
final class MessagesAsyncPigeonUtils {

    @NotNull
    public static final MessagesAsyncPigeonUtils INSTANCE = new MessagesAsyncPigeonUtils();

    private MessagesAsyncPigeonUtils() {
    }

    public final boolean deepEquals(@Nullable Object a3, @Nullable Object b3) {
        if ((a3 instanceof byte[]) && (b3 instanceof byte[])) {
            return Arrays.equals((byte[]) a3, (byte[]) b3);
        }
        if ((a3 instanceof int[]) && (b3 instanceof int[])) {
            return Arrays.equals((int[]) a3, (int[]) b3);
        }
        if ((a3 instanceof long[]) && (b3 instanceof long[])) {
            return Arrays.equals((long[]) a3, (long[]) b3);
        }
        if ((a3 instanceof double[]) && (b3 instanceof double[])) {
            return Arrays.equals((double[]) a3, (double[]) b3);
        }
        if ((a3 instanceof Object[]) && (b3 instanceof Object[])) {
            Object[] objArr = (Object[]) a3;
            Object[] objArr2 = (Object[]) b3;
            if (objArr.length == objArr2.length) {
                Iterable iterableF = kotlin.collections.m.F(objArr);
                if (!(iterableF instanceof Collection) || !((Collection) iterableF).isEmpty()) {
                    Iterator it = iterableF.iterator();
                    while (it.hasNext()) {
                        int iNextInt = ((B) it).nextInt();
                        if (!INSTANCE.deepEquals(objArr[iNextInt], objArr2[iNextInt])) {
                        }
                    }
                }
                return true;
            }
            return false;
        }
        if ((a3 instanceof List) && (b3 instanceof List)) {
            List list = (List) a3;
            List list2 = (List) b3;
            if (list.size() == list2.size()) {
                Iterable iterableM = kotlin.collections.q.m((Collection) a3);
                if (!(iterableM instanceof Collection) || !((Collection) iterableM).isEmpty()) {
                    Iterator it2 = iterableM.iterator();
                    while (it2.hasNext()) {
                        int iNextInt2 = ((B) it2).nextInt();
                        if (!INSTANCE.deepEquals(list.get(iNextInt2), list2.get(iNextInt2))) {
                        }
                    }
                }
                return true;
            }
            return false;
        }
        if (!(a3 instanceof Map) || !(b3 instanceof Map)) {
            return kotlin.jvm.internal.j.a(a3, b3);
        }
        Map map = (Map) a3;
        Map map2 = (Map) b3;
        if (map.size() == map2.size()) {
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    if (!map2.containsKey(entry.getKey()) || !INSTANCE.deepEquals(entry.getValue(), map2.get(entry.getKey()))) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @NotNull
    public final List<Object> wrapError(@NotNull Throwable exception) {
        kotlin.jvm.internal.j.e(exception, "exception");
        if (exception instanceof SharedPreferencesError) {
            SharedPreferencesError sharedPreferencesError = (SharedPreferencesError) exception;
            return kotlin.collections.q.o(sharedPreferencesError.getCode(), sharedPreferencesError.getMessage(), sharedPreferencesError.getDetails());
        }
        return kotlin.collections.q.o(exception.getClass().getSimpleName(), exception.toString(), "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    }

    @NotNull
    public final List<Object> wrapResult(@Nullable Object result) {
        return kotlin.collections.p.e(result);
    }
}

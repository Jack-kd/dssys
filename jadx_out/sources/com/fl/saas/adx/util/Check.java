package com.fl.saas.adx.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import com.fl.saas.B;
import com.fl.saas.C1207p0;
import com.fl.saas.InterfaceC1164b1;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes3.dex */
public final class Check {
    @NonNull
    public static <T> T checkNotNull(T t2, Object obj) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static <T, U> T checkNull(U u2, Function<U, T> function) {
        if (u2 != null) {
            return function.apply(u2);
        }
        return null;
    }

    public static <T> void clearNullList(List<? extends T> list) {
        if (isValidAdList(list)) {
            list.clear();
        }
    }

    public static <T, S> C1207p0 filterNullFindFirst(List<? extends T> list, Function<? super T, ? extends S> function) {
        return C1207p0.b(list).a((Function) new b()).a((Function) function);
    }

    public static <T> void filterNullList(List<? extends T> list, B b3) {
        if (!isValidAdList(list) || b3 == null) {
            return;
        }
        for (T t2 : list) {
            if (t2 != null) {
                b3.a(t2);
            }
        }
    }

    @Nullable
    public static <T> T findFirstNonNull(@Nullable List<T> list) {
        if (list == null) {
            return null;
        }
        for (T t2 : list) {
            if (t2 != null) {
                return t2;
            }
        }
        return null;
    }

    public static <T> C1207p0 getRefValue(WeakReference<T> weakReference) {
        return C1207p0.b(weakReference).a(new Function() { // from class: com.fl.saas.adx.util.a
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return ((WeakReference) obj).get();
            }
        });
    }

    public static <T> void ifPresentOrElse(T t2, B b3, Runnable runnable) {
        if (t2 != null) {
            b3.a(t2);
        } else {
            runnable.run();
        }
    }

    public static boolean isValidAdList(List<?> list) {
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static <T> T[] listToArray(List<T> list) {
        if (list == null || list.isEmpty()) {
            return (T[]) new Object[0];
        }
        T[] tArr = (T[]) new Object[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            tArr[i2] = list.get(i2);
        }
        return tArr;
    }

    public static <T> T obtainNotNull(T t2, InterfaceC1164b1 interfaceC1164b1) {
        return t2 != null ? t2 : (T) interfaceC1164b1.a();
    }

    public static <T> void checkNull(T t2, B b3) {
        if (t2 != null) {
            b3.a(t2);
        }
    }

    public static <T> void filterNullFindFirst(List<T> list, B b3) {
        C1207p0.b(list).a((Function) new b()).a(b3);
    }
}

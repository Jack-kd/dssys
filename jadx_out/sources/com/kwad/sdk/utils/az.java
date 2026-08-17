package com.kwad.sdk.utils;

import android.text.TextUtils;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class az {
    private static void a(RuntimeException runtimeException) {
        com.kwad.sdk.core.d.c.printStackTrace(runtimeException);
    }

    public static String aC(String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str)) {
            a(new NullPointerException("Argument cannot be null " + str2));
        }
        return str;
    }

    public static void checkArgument(boolean z2, @Nullable Object obj) {
        if (z2) {
            return;
        }
        a(new IllegalArgumentException("Expression cannot be false " + obj));
    }

    public static <T> T checkNotNull(T t2) {
        return (T) g(t2, "");
    }

    public static void d(Object... objArr) {
        for (int i2 = 0; i2 < 2; i2++) {
            checkNotNull(objArr[i2]);
        }
    }

    public static <T> T g(T t2, @Nullable String str) {
        if (t2 == null) {
            a(new NullPointerException("Argument cannot be null " + str));
        }
        return t2;
    }

    public static String hY(String str) {
        return aC(str, "");
    }
}

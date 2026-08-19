package com.kwad.components.core.t;

import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class f {
    public static String a(StackTraceElement stackTraceElement) {
        return stackTraceElement.getClassName() + com.anythink.core.common.d.i.f2495E + stackTraceElement.getMethodName();
    }

    public static boolean bl(@Nullable String str) {
        if (str == null) {
            return false;
        }
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            if (a(stackTraceElement).equals(str)) {
                return true;
            }
        }
        return false;
    }
}

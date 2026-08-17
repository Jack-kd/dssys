package com.kwad.sdk.api.loader;

import android.os.Process;

/* loaded from: classes4.dex */
final class ac {
    public static String Ex() {
        return is64Bit() ? "arm64-v8a" : "armeabi-v7a";
    }

    public static boolean is64Bit() {
        return Process.is64Bit();
    }
}

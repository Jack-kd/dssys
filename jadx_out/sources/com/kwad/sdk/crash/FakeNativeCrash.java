package com.kwad.sdk.crash;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public class FakeNativeCrash {
    public static final String TAG = "FakeNativeCrash";

    @Keep
    public static native void init(boolean z2, int i2);

    @Keep
    public static void upload(int i2, int i3, String str) {
        com.kwad.sdk.core.d.c.e(TAG, "upload: signal=" + i2 + ", code=" + i3 + ", nativeBacktraceStr=" + str);
    }
}

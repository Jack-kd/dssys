package com.kwad.sdk.utils;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class d {
    public static boolean cM(@NonNull Context context) {
        try {
            if (context.getApplicationInfo().targetSdkVersion >= 29 && Build.VERSION.SDK_INT >= 29 && !Environment.isExternalStorageLegacy()) {
                if (!be.useStoragePermissionDisable()) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}

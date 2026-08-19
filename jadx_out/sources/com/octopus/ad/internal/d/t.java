package com.octopus.ad.internal.d;

import android.content.Context;
import android.os.Environment;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.io.File;

/* loaded from: classes4.dex */
final class t {
    public static File a(Context context) {
        return new File(a(context, true), "video-cache");
    }

    private static File b(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), AnalyticsConstants.SDK_TYPE), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        com.octopus.ad.internal.c.f.d(com.octopus.ad.internal.c.f.f34585u, "Unable to create external cache directory");
        return null;
    }

    private static File a(Context context, boolean z2) {
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (NullPointerException unused) {
            externalStorageState = "";
        }
        File fileB = (z2 && "mounted".equals(externalStorageState)) ? b(context) : null;
        if (fileB == null) {
            fileB = context.getCacheDir();
        }
        if (fileB != null) {
            return fileB;
        }
        String str = "/data/data/" + context.getPackageName() + "/cache/";
        com.octopus.ad.internal.c.f.d(com.octopus.ad.internal.c.f.f34585u, "Can't define system cache directory! '" + str + "%s' will be used.");
        return new File(str);
    }
}

package com.fl.saas;

import android.content.Context;
import android.os.Environment;
import com.fl.saas.adx.util.LogcatUtil;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.io.File;

/* loaded from: classes3.dex */
abstract class Z0 {
    private static File a(Context context, boolean z2) {
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (NullPointerException unused) {
            externalStorageState = "";
        }
        File fileA = (z2 && "mounted".equals(externalStorageState)) ? a(context) : null;
        if (fileA == null) {
            fileA = context.getCacheDir();
        }
        if (fileA != null) {
            return fileA;
        }
        String str = "/data/data/" + context.getPackageName() + "/cache/";
        LogcatUtil.d("Can't define system cache directory! '" + str + "%s' will be used.");
        return new File(str);
    }

    public static File b(Context context) {
        return new File(a(context, true), "video-cache");
    }

    private static File a(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), AnalyticsConstants.SDK_TYPE), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        LogcatUtil.d("Unable to create external cache directory");
        return null;
    }
}

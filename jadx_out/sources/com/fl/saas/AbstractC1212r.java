package com.fl.saas;

import android.content.Context;
import java.io.File;

/* renamed from: com.fl.saas.r, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1212r {
    public static File a(Context context) {
        File file = new File(context.getCacheDir(), "video_cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}

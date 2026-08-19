package com.octopus.ad.d.b;

import android.content.Context;
import android.os.Environment;
import java.io.File;

/* loaded from: classes4.dex */
public class h {
    public static File a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            File externalFilesDir = ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? context.getExternalFilesDir(null) : null;
            return externalFilesDir == null ? context.getFilesDir() : externalFilesDir;
        } catch (Exception unused) {
            return context.getFilesDir();
        }
    }
}

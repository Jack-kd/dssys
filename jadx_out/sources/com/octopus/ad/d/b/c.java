package com.octopus.ad.d.b;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;

/* loaded from: classes4.dex */
public class c {
    public static final File a(Context context) {
        File fileB = b(context);
        if (fileB == null) {
            return null;
        }
        File file = new File(fileB.getPath() + "/Octopus/download/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File b(Context context) {
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

    public static File c(Context context) {
        File externalCacheDir = ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? context.getExternalCacheDir() : null;
        return externalCacheDir == null ? context.getCacheDir() : externalCacheDir;
    }

    public static void a(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(launchIntentForPackage);
            }
        } catch (Exception unused) {
            Toast.makeText(context, "启动失败:" + str, 1).show();
        }
    }

    public static void a(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }
}

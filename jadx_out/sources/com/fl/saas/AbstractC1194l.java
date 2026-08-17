package com.fl.saas;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.byazt.yi.AdBaseConstants;
import com.fl.saas.adx.util.LogcatUtil;
import java.io.File;

/* renamed from: com.fl.saas.l, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1194l {
    public static Intent a(Context context, File file) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            Uri uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".fl.update.provider", file);
            intent.addFlags(1);
            intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
            return intent;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    private static Uri a(File file) {
        try {
            new ProcessBuilder("chmod", "777", file.toString()).start();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return Uri.fromFile(file);
    }

    public static void a(Context context, File file, C1188j c1188j) {
        if (context != null) {
            try {
                Intent intentA = a(context, file);
                if (intentA != null) {
                    context.startActivity(intentA);
                }
                if (c1188j != null) {
                    C1218t.a().a(c1188j, 6);
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }
}

package com.byazt.kw;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 756, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s {
    public static File hp(@NonNull Context context) {
        return new File(jx(context), "CrashLogJava");
    }

    @SuppressLint({"SdCardPath"})
    private static String jx(@NonNull Context context) {
        String path;
        try {
            if (com.byazt.rz.l.hp(context) != null) {
                path = com.byazt.rz.l.hp(context).getPath();
            } else {
                File fileHp = com.byazt.rz.l.hp(context, "/data/data/" + context.getPackageName() + "/files/", 0);
                path = fileHp != null ? fileHp.getPath() : null;
            }
            return path != null ? path : "/sdcard/";
        } catch (Exception unused) {
            return "/sdcard/";
        }
    }

    public static File l(@NonNull Context context) {
        return new File(jx(context), "crash_history");
    }

    public static String hp() {
        return String.format("java_%s.npth", String.valueOf(System.nanoTime()));
    }

    public static String l() {
        return String.format("anr_%s.npth", String.valueOf(System.nanoTime()));
    }
}

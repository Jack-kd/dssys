package com.byazt.rz;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileFilter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 34})
/* loaded from: classes3.dex */
public final class l {
    private static File hp(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static boolean j(Context context) {
        File file = new File(context.getFilesDir(), "/pangle_p/com.byted.pangle");
        if (!file.exists()) {
            return false;
        }
        final StringBuilder sb = new StringBuilder("^version-(\\d+)$");
        File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.byazt.rz.l.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                if (file2 == null) {
                    return false;
                }
                try {
                    Matcher matcher = Pattern.compile(sb.toString()).matcher(file2.getName());
                    String strGroup = matcher.find() ? matcher.group() : "";
                    return (TextUtils.isEmpty(strGroup) ? 0 : Integer.parseInt(strGroup.substring(8))) > 7643;
                } catch (Exception e2) {
                    com.byazt.ik.a.hp(e2);
                    return file2.getName().matches(sb.toString());
                }
            }
        });
        return (fileArrListFiles == null || fileArrListFiles.length == 0) ? false : true;
    }

    public static File jx(Context context) {
        return hp(new File(context.getExternalCacheDir(), "pangle_com.byted.pangle"));
    }

    public static File l(Context context) {
        return hp(new File(context.getCacheDir(), "pangle_com.byted.pangle"));
    }

    public static SharedPreferences l(Context context, String str, int i2) {
        return i2 == 0 ? com.byazt.ym.a.getKVStore(context, hp(str), i2) : com.byazt.ym.a.getKVStore(context, str, i2);
    }

    public static File hp(Context context) {
        return hp(new File(context.getFilesDir(), "pangle_com.byted.pangle"));
    }

    public static File hp(Context context, String str) {
        return hp(new File(context.getExternalFilesDir(str), "pangle_com.byted.pangle"));
    }

    public static File hp(Context context, String str, int i2) {
        return i2 == 0 ? hp(new File(context.getDir(str, i2), "pangle_com.byted.pangle")) : context.getDir(str, i2);
    }

    private static String hp(String str) {
        return "pangle_com.byted.pangle_" + str;
    }
}

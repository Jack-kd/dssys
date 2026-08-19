package com.byazt.aab;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI, 38})
/* loaded from: classes2.dex */
public final class j {
    public static final Charset hp = Charset.forName("US-ASCII");

    /* renamed from: l, reason: collision with root package name */
    public static final Charset f17975l = Charset.forName("UTF-8");

    public static void hp(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                hp(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
            }
        }
    }
}

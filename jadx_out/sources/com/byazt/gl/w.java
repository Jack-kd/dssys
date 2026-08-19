package com.byazt.gl;

import android.text.TextUtils;
import com.byazt.lc.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.PluginManager;
import java.io.File;
import java.io.FileFilter;

@com.byazt.kj.hp(hp = {0, 1, 1398, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements Runnable {
    private void hp(File file) {
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusScanRunnable listPluginDownloadDir, dir = ".concat(String.valueOf(file)));
        file.listFiles(new FileFilter() { // from class: com.byazt.gl.w.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                if (file2 == null) {
                    return false;
                }
                if (file2.getName().endsWith(".apk") || eb.l(file2) || file2.getName().endsWith(".7z.zip") || file2.getName().endsWith(".jar") || file2.getName().endsWith(".dex.zip")) {
                    PluginManager.getInstance().asyncInstall(null, file2);
                    return true;
                }
                if ((file2.getAbsolutePath().endsWith(".temp") || file2.getAbsolutePath().endsWith(".tp")) && System.currentTimeMillis() - file2.lastModified() < 259200000) {
                    ZeusLogger.w(ZeusLogger.TAG_INIT, "ZeusScanRunnable installPluginDir find : ".concat(String.valueOf(file2)));
                } else {
                    eb.hp(file2);
                    ZeusLogger.w(ZeusLogger.TAG_INIT, "ZeusScanRunnable installPluginDir deleted : ".concat(String.valueOf(file2)));
                }
                return false;
            }
        });
    }

    @Override // java.lang.Runnable
    public void run() {
        hp(new File(com.byazt.hu.jx.l()));
        String strJ = com.byazt.hu.jx.j();
        if (TextUtils.isEmpty(strJ)) {
            return;
        }
        hp(new File(strJ));
    }
}

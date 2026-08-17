package com.byazt.t;

import com.byazt.v.DownloadShortInfo;

@com.byazt.kj.hp(hp = {0, 1, 311, 45})
/* loaded from: classes3.dex */
public class e {
    public static int hp(int i2, int i3) {
        return (i3 <= 0 || i3 >= 100 || !hp(i2)) ? i3 : (int) (Math.sqrt(i3) * 10.0d);
    }

    public static long hp(int i2, long j2, long j3) {
        if (hp(i2)) {
            if (j2 <= 0) {
                return 0L;
            }
            if (j3 > 0) {
                return (j3 * hp(i2, (int) ((j2 * 100) / j3))) / 100;
            }
        }
        return j2;
    }

    public static DownloadShortInfo hp(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo != null && hp((int) downloadShortInfo.id)) {
            downloadShortInfo.currentBytes = hp((int) downloadShortInfo.id, downloadShortInfo.currentBytes, downloadShortInfo.totalBytes);
        }
        return downloadShortInfo;
    }

    private static boolean hp(int i2) {
        return com.byazt.jb.hp.hp(i2).hp("pause_optimise_pretend_download_percent_switch", 0) == 1 && com.byazt.jb.hp.hp(i2).hp("pause_optimise_switch", 0) == 1;
    }
}

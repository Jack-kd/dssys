package com.byazt.rc;

import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {
    public static long hp(@NonNull List<q> list) {
        int size = list.size();
        long jW = 0;
        for (int i2 = 0; i2 < size; i2++) {
            q qVar = list.get(i2);
            if (qVar.jx() > jW) {
                break;
            }
            if (qVar.w() > jW) {
                jW = qVar.w();
            }
        }
        return jW;
    }

    public static long l(@NonNull List<q> list) {
        long jJx;
        long j2;
        long j3 = 0;
        loop0: while (true) {
            jJx = -1;
            j2 = -1;
            for (q qVar : list) {
                if (jJx == -1) {
                    if (qVar.hp() > 0) {
                        jJx = qVar.jx();
                        j2 = qVar.j();
                    }
                } else if (qVar.jx() > j2) {
                    j3 += j2 - jJx;
                    if (qVar.hp() > 0) {
                        jJx = qVar.jx();
                        j2 = qVar.j();
                    }
                } else if (qVar.j() > j2) {
                    j2 = qVar.j();
                }
            }
        }
        return (jJx < 0 || j2 <= jJx) ? j3 : j3 + (j2 - jJx);
    }
}

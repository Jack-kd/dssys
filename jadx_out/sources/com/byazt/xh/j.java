package com.byazt.xh;

import android.content.Context;
import com.byazt.aq.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.LinkedHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT, 38})
/* loaded from: classes3.dex */
public class j {
    public static void hp(Context context, int i2, String str, int i3) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (i2 == 1) {
                linkedHashMap.put(hp(i3), str);
            }
            jx.l("MultiProcessFileUtils", "saveData = ".concat(String.valueOf(str)));
            if (eb.hp().hp(i3).j() != null) {
                eb.hp().hp(i3).j().hp(context, linkedHashMap);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String hp(android.content.Context r2, int r3, int r4) {
        /*
            r0 = 1
            java.lang.String r1 = ""
            if (r3 == r0) goto L6
            goto L29
        L6:
            com.byazt.aq.eb r3 = com.byazt.aq.eb.hp()     // Catch: java.lang.Exception -> L29
            com.byazt.aq.w r3 = r3.hp(r4)     // Catch: java.lang.Exception -> L29
            com.byazt.aq.l r3 = r3.j()     // Catch: java.lang.Exception -> L29
            if (r3 == 0) goto L29
            com.byazt.aq.eb r3 = com.byazt.aq.eb.hp()     // Catch: java.lang.Exception -> L29
            com.byazt.aq.w r3 = r3.hp(r4)     // Catch: java.lang.Exception -> L29
            com.byazt.aq.l r3 = r3.j()     // Catch: java.lang.Exception -> L29
            java.lang.String r4 = hp(r4)     // Catch: java.lang.Exception -> L29
            java.lang.String r2 = r3.hp(r2, r4, r1)     // Catch: java.lang.Exception -> L29
            goto L2a
        L29:
            r2 = r1
        L2a:
            if (r2 == 0) goto L30
            java.lang.String r1 = java.lang.String.valueOf(r2)
        L30:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.xh.j.hp(android.content.Context, int, int):java.lang.String");
    }

    private static String hp(int i2) {
        return "tnc_config".concat(String.valueOf(i2));
    }
}

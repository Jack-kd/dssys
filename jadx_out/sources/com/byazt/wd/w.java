package com.byazt.wd;

import android.text.TextUtils;
import c0.AbstractC1111a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

@com.byazt.kj.hp(hp = {0, 1, 2141, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static String hp(List<String> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        List<String> listL = l(new ArrayList(new TreeSet(list)));
        return AbstractC1111a.a("|", listL.subList(0, Math.min(listL.size(), 100)));
    }

    private static List<String> l(List<String> list) {
        if (list != null && !list.isEmpty()) {
            String[] strArr = {"abc_", "$avd_hide_", "avd_hide_", "$avd_show_", "avd_show_", "m3_avd_", "$m3_avd_", "ic_mtrl_", "$mtrl_", "mtrl_", "btn_checkbox_", "bd_progress_", "bd_bg_", "btn_radio_", "pangle_", "ksad_", "anythink_", "gdt_", "ksadsdk_", "mbridge_", "sig_", "tt_appdownloader_", "tt_mediation_", "ttdownloader_", "com.qq.e.", MediationConstant.ADN_KLEVIN, "kssdk_", "mobads_", "tapad_", "umeng_", "bdxadsdk.jar", "bugly_", "vivo_module_", "notplugmapnaveinfoox111.dex", "notplugmappoiinfoxo.db", "notplugmaprouteextradata.db", "-journal"};
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String next = it.next();
                for (int i2 = 0; i2 < 37; i2++) {
                    String str = strArr[i2];
                    if (!TextUtils.isEmpty(str) && (next.startsWith(str) || next.endsWith(str))) {
                        it.remove();
                        break;
                    }
                }
            }
        }
        return list;
    }
}

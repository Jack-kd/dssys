package com.byazt.oda;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 94})
/* loaded from: classes3.dex */
public class eb {
    public static final List<String> hp = new ArrayList(Arrays.asList("1", "3", "2"));

    public static String hp(Context context, com.byazt.pg.hp hpVar) {
        return hp(jx.hp(context, hpVar));
    }

    public static String hp(String str) {
        str.getClass();
        switch (str) {
            case "46000":
            case "46002":
            case "46004":
            case "46007":
            case "46008":
                return "1";
            case "46001":
            case "46006":
            case "46009":
                return "2";
            case "46003":
            case "46005":
            case "46011":
                return "3";
            default:
                return "0";
        }
    }

    public static String hp(com.byazt.pg.hp hpVar, Context context) {
        String strW = jx.w(hpVar, context);
        String strEb = jx.eb(hpVar, context);
        String strA = jx.a(hpVar, context);
        String strS = jx.s(hpVar, context);
        if (!jx.l(context)) {
            return "5";
        }
        if (!TextUtils.isEmpty(strW) && !TextUtils.isEmpty(strEb)) {
            if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(strS)) {
                String strHp = hp(strW + strEb);
                String strHp2 = hp(strA + strS);
                List<String> list = hp;
                if (list.contains(strHp) && list.contains(strHp2) && !strHp2.equals(strHp)) {
                    return "6";
                }
                return list.contains(strHp) ? strHp : list.contains(strHp2) ? strHp2 : "0";
            }
            return hp(strW + strEb);
        }
        if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(strS)) {
            return hp(strA + strS);
        }
        return "4";
    }
}

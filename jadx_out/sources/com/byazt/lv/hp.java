package com.byazt.lv;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.ar.eb;
import com.byazt.du.cx;
import com.byazt.gg.a;
import com.byazt.qk.gu;
import com.byazt.xci.mp;
import com.byazt.xs.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEIDA_PLAYER_OPTION_NATIVE_RENDER_ROTATION_ADAPT, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final HashSet<String> hp = new HashSet<>(Arrays.asList("interactiveFinish", "nextVideoCancel", "haptic", "closeWidget", "dismiss", "openNewAdPage"));

    public static void hp(gu guVar, l lVar, mp mpVar, Context context, String str, a.hp hpVar, eb ebVar, jx jxVar) {
        Map<String, Object> mapJx;
        int iHp;
        if (hpVar == null) {
            return;
        }
        mapJx = hpVar.jx();
        str.getClass();
        iHp = 0;
        switch (str) {
            case "nextVideoCancel":
                if (lVar != null) {
                    lVar.hp();
                    break;
                }
                break;
            case "openNewAdPage":
                if (mapJx != null) {
                    Object obj = mapJx.get("second_page_type");
                    String strValueOf = obj != null ? String.valueOf(obj) : "";
                    if (!TextUtils.isEmpty(strValueOf)) {
                        try {
                            iHp = Integer.parseInt(strValueOf);
                        } catch (NumberFormatException unused) {
                        }
                    }
                }
                if (ebVar != null) {
                    ebVar.hp(iHp);
                    break;
                }
                break;
            case "haptic":
                if (mapJx != null) {
                    Object obj2 = mapJx.get("params");
                    if ((obj2 instanceof String) && !TextUtils.isEmpty((String) obj2)) {
                        try {
                            com.byazt.bi.jx.hp(new JSONObject(String.valueOf(obj2)), context, mpVar);
                            break;
                        } catch (JSONException unused2) {
                            return;
                        }
                    }
                }
                break;
            case "closeWidget":
                if (ebVar != null) {
                    ebVar.w();
                    break;
                }
                break;
            case "interactiveFinish":
                if (mapJx != null) {
                    try {
                        Object obj3 = mapJx.get("reduce_duration");
                        if (obj3 instanceof Integer) {
                            iHp = cx.hp(mpVar, ((Integer) obj3).intValue());
                        }
                    } catch (NumberFormatException unused3) {
                    }
                }
                if (guVar != null) {
                    guVar.l(iHp);
                    break;
                }
                break;
            case "dismiss":
                if (jxVar != null) {
                    jxVar.l(8);
                    break;
                }
                break;
        }
    }
}

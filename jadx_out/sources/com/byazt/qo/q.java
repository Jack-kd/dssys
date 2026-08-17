package com.byazt.qo;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.uq.DynamicBaseWidget;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 150})
/* loaded from: classes3.dex */
public class q {
    public static eb hp(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar, com.byazt.nw.e eVar, com.byazt.fub.zy zyVar) {
        String strKg;
        String strO;
        String str = null;
        if (context == null || dynamicBaseWidget == null || ebVar == null) {
            return null;
        }
        strKg = ebVar.kg();
        strO = zyVar.o();
        strKg.getClass();
        switch (strKg) {
            case "0":
                return new w(context, dynamicBaseWidget, ebVar);
            case "1":
                return new jx(context, dynamicBaseWidget, ebVar);
            case "2":
                return new l(context, dynamicBaseWidget, ebVar);
            case "5":
                return ebVar.m() == 1 ? new xs(context, dynamicBaseWidget, ebVar, ebVar.qu()) : new u(context, dynamicBaseWidget, ebVar);
            case "6":
            case "11":
                return new zy(context, dynamicBaseWidget, ebVar);
            case "7":
            case "14":
                return new gu(context, dynamicBaseWidget, ebVar);
            case "8":
                return new jl(context, dynamicBaseWidget, ebVar);
            case "9":
            case "16":
                return new k(context, dynamicBaseWidget, ebVar, strKg, eVar, zyVar.q(), zyVar.wv());
            case "10":
                return new j(context, dynamicBaseWidget, ebVar);
            case "12":
                return new u(context, dynamicBaseWidget, ebVar);
            case "13":
                return new xs(context, dynamicBaseWidget, ebVar);
            case "17":
            case "18":
                return new ec(context, dynamicBaseWidget, ebVar, strKg, eVar, zyVar.q(), zyVar.wv());
            case "20":
                if (com.byazt.wkx.j.hp()) {
                    return new e(context, dynamicBaseWidget, ebVar, strO + "static/lotties/glass-swipe/glass-swipe.json", "20");
                }
                if (!TextUtils.isEmpty(strO)) {
                    str = strO + "brush_mask.json";
                }
                return new e(context, dynamicBaseWidget, ebVar, str, "20");
            case "22":
                if (!com.byazt.wkx.j.hp()) {
                    return new vv(context, dynamicBaseWidget, ebVar);
                }
                return new e(context, dynamicBaseWidget, ebVar, strO + "static/lotties/202327swiper-up-star/index.json", "22");
            case "23":
                if (!com.byazt.wkx.j.hp()) {
                    return null;
                }
                return new e(context, dynamicBaseWidget, ebVar, strO + "static/lotties/202327swiper-up-star/click.json", "23");
            case "24":
                if (com.byazt.wkx.j.hp()) {
                    return new hp(context, dynamicBaseWidget, ebVar);
                }
                if (!TextUtils.isEmpty(strO)) {
                    str = strO + "swiper_up_star.json";
                }
                return new e(context, dynamicBaseWidget, ebVar, str, "24");
            case "25":
                if (!com.byazt.wkx.j.hp()) {
                    return null;
                }
                return new e(context, dynamicBaseWidget, ebVar, strO + "static/lotties/gesture-slide.json", "25");
            case "29":
                return new a(context, dynamicBaseWidget, ebVar, eVar, zyVar.q(), zyVar.wv());
            default:
                return null;
        }
    }
}

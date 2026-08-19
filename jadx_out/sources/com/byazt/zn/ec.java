package com.byazt.zn;

import android.text.TextUtils;
import com.anythink.core.common.g.c;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec {
    public static volatile String hp;

    /* renamed from: l, reason: collision with root package name */
    public static volatile long f28496l;

    public static String hp() {
        return ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getNewIpAddrs(false)[0];
    }

    public static String jx() {
        Map<String, String> ipInfoMap = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getIpInfoMap(false);
        String str = ipInfoMap != null ? ipInfoMap.get("zaid_ipv6") : null;
        return TextUtils.isEmpty(str) ? "" : str;
    }

    public static String l() {
        return ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getNewIpAddrs(false)[1];
    }

    public static JSONArray hp(com.byazt.pg.hp hpVar) {
        JSONArray jSONArray = new JSONArray();
        try {
            Map<String, String> ipInfoMap = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getIpInfoMap(false);
            if (ipInfoMap != null) {
                String str = ipInfoMap.get("register_ipv6");
                if (!TextUtils.isEmpty(str)) {
                    return new JSONArray(str);
                }
            }
        } catch (Exception unused) {
        }
        return jSONArray;
    }

    public static String l(String str) {
        if (!TextUtils.isEmpty(hp) && !DeviceUtils.hp(f28496l, c.f3507a)) {
            return hp;
        }
        String strJx = com.byazt.lca.j.hp().jx("dev14", c.f3507a);
        if (TextUtils.isEmpty(strJx)) {
            if (str == null) {
                str = hp();
            }
            hp = str;
        } else {
            hp = com.byazt.ymw.hp.jx(strJx);
        }
        f28496l = System.currentTimeMillis();
        return hp;
    }

    public static String[] hp(boolean z2, com.byazt.pg.hp hpVar) {
        String[] strArr = {"", ""};
        try {
            Map<String, String> ipInfoMap = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getIpInfoMap(z2);
            if (ipInfoMap != null) {
                strArr[0] = ipInfoMap.get("enc_ipv4");
                strArr[1] = ipInfoMap.get("enc_ipv6");
            }
        } catch (Throwable unused) {
        }
        return strArr;
    }

    public static String[] l(com.byazt.pg.hp hpVar) {
        String[] strArr = {"", ""};
        Map<String, String> ipInfoMap = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getIpInfoMap(false);
        if (ipInfoMap != null) {
            strArr[0] = ipInfoMap.get("local_ipv4");
            strArr[1] = ipInfoMap.get("local_ipv6");
        }
        return strArr;
    }

    public static void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.lca.j.hp().jx("dev14", com.byazt.ymw.hp.l(str));
        hp = str;
        f28496l = System.currentTimeMillis();
    }
}

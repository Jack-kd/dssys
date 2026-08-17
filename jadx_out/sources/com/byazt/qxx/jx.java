package com.byazt.qxx;

import android.text.TextUtils;
import com.byazt.ap.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_SCFG_ADDRESS, 30})
/* loaded from: classes3.dex */
public final class jx extends hp {
    public static l hp;

    public static void l(JSONObject jSONObject, int i2) {
        try {
            l lVarHp = com.byazt.ktf.jx.hp(TKDownloadReason.KSAD_TK_NET);
            if (lVarHp != null && jSONObject != null) {
                String string = com.byazt.ymw.hp.hp(jSONObject.toString()).toString();
                HashMap map = new HashMap();
                map.put("body", string);
                map.put("type", Integer.valueOf(i2));
                lVarHp.call(3, map);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.qxx.hp
    public String hp() {
        return TKDownloadReason.KSAD_TK_NET;
    }

    public static String hp(j jVar, String str) {
        Map map;
        l lVarHp = com.byazt.ktf.jx.hp(TKDownloadReason.KSAD_TK_NET);
        if (lVarHp == null || (map = (Map) lVarHp.call(1, str)) == null) {
            return str;
        }
        String str2 = (String) map.get("url");
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        Map map2 = (Map) map.get("header");
        if (map2 != null) {
            for (String str3 : map2.keySet()) {
                jVar.l(str3, (String) map2.get(str3));
            }
        }
        return str;
    }

    public static void hp(JSONObject jSONObject, int i2) {
        try {
            l lVarHp = com.byazt.ktf.jx.hp(TKDownloadReason.KSAD_TK_NET);
            if (lVarHp == null) {
                return;
            }
            String string = com.byazt.ymw.hp.hp(jSONObject.toString()).toString();
            HashMap map = new HashMap();
            map.put("body", string);
            map.put("type", Integer.valueOf(i2));
            lVarHp.call(2, map);
        } catch (Throwable unused) {
        }
    }
}

package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 158})
/* loaded from: classes3.dex */
public class hq {
    public int hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f27294l;

    public static hq hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        hq hqVar = new hq();
        hqVar.hp = jSONObject.optInt("refresh_control", 0);
        hqVar.f27294l = jSONObject.optLong("refresh_imp_max_time", 0L);
        hqVar.jx = jSONObject.optInt("refresh_num", 0);
        return hqVar;
    }

    public int jx() {
        return this.jx;
    }

    public void l(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("refresh_control", this.hp);
            jSONObject.put("refresh_imp_max_time", this.f27294l);
            jSONObject.put("refresh_num", this.jx);
        } catch (JSONException unused) {
        }
    }

    public static boolean jx(mp mpVar) {
        return com.byazt.jz.sz.l().v(String.valueOf(com.byazt.zn.ky.zy(mpVar))) && hp(mpVar) && !com.byazt.am.j.hp(String.valueOf(com.byazt.zn.ky.zy(mpVar)));
    }

    public long l() {
        return this.f27294l;
    }

    public static boolean hp(mp mpVar) {
        hq hqVarWg;
        return (mpVar == null || (hqVarWg = mpVar.wg()) == null || hqVarWg.hp() != 1) ? false : true;
    }

    public static int l(mp mpVar) {
        hq hqVarWg;
        if (mpVar == null || (hqVarWg = mpVar.wg()) == null) {
            return 0;
        }
        return hqVarWg.jx();
    }

    public int hp() {
        return this.hp;
    }

    public static boolean hp(List<mp> list) {
        Iterator<mp> it = list.iterator();
        boolean z2 = false;
        boolean z3 = false;
        while (it.hasNext()) {
            if (it.next().qo() == 100.0f) {
                z2 = true;
            } else {
                z3 = true;
            }
        }
        return (z2 && z3) ? false : true;
    }
}

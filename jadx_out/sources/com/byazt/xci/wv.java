package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE})
/* loaded from: classes3.dex */
public class wv {
    public List<x> hp;

    public wv(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        this.hp = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            this.hp.add(new x(jSONArray.optJSONObject(i2), 4));
        }
    }

    public static List<x> hp(mp mpVar) {
        wv wvVarXr;
        if (mpVar == null || (wvVarXr = mpVar.xr()) == null) {
            return null;
        }
        return wvVarXr.hp;
    }

    public static List<x> j(mp mpVar) {
        List<x> listHp;
        if (!l(mpVar) || (listHp = hp(mpVar)) == null || listHp.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (x xVar : listHp) {
            if (xVar != null && xVar.jl() && xVar.eb() == 0) {
                arrayList.add(xVar);
            }
        }
        return arrayList;
    }

    public static x jx(mp mpVar) {
        List<x> listHp;
        if (l(mpVar) && (listHp = hp(mpVar)) != null && !listHp.isEmpty()) {
            for (x xVar : listHp) {
                if (xVar != null && xVar.jl()) {
                    boolean z2 = xVar.j() == 1;
                    if (1 == xVar.eb() && z2) {
                        return xVar;
                    }
                }
            }
        }
        return null;
    }

    public static boolean l(mp mpVar) {
        wv wvVarXr;
        List<x> list;
        return (mpVar == null || (wvVarXr = mpVar.xr()) == null || (list = wvVarXr.hp) == null || list.isEmpty()) ? false : true;
    }

    public static boolean w(mp mpVar) {
        return (mpVar == null || mp.jx(mpVar) || com.byazt.jz.sz.l().ae() || !l(mpVar) || jx(mpVar) == null) ? false : true;
    }
}

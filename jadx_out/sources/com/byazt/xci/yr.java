package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BARRAGE_MASK})
/* loaded from: classes3.dex */
public class yr {
    public List<x> hp;

    public yr(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("components")) == null) {
            return;
        }
        this.hp = new ArrayList();
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            this.hp.add(new x(jSONArrayOptJSONArray.optJSONObject(i2), 3));
        }
    }

    public static List<x> hp(mp mpVar) {
        yr yrVarBk;
        if (mpVar == null || (yrVarBk = mpVar.bk()) == null) {
            return null;
        }
        return yrVarBk.hp;
    }

    public static boolean l(mp mpVar) {
        yr yrVarBk;
        List<x> list;
        return (mpVar == null || (yrVarBk = mpVar.bk()) == null || (list = yrVarBk.hp) == null || list.isEmpty()) ? false : true;
    }
}

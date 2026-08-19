package com.byazt.sr;

import android.text.TextUtils;
import com.byazt.lf.k;
import com.byazt.xci.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 21, 54})
/* loaded from: classes3.dex */
public class a {
    public static final Map<String, hp> hp = new ConcurrentHashMap();

    @com.byazt.kj.hp(hp = {0, 1, 21, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {
        public final int hp;

        public hp(s.j jVar) {
            this.hp = jVar.eb();
        }

        public int hp(int i2, s.j jVar) {
            int i3 = this.hp - i2;
            if (i3 < 0) {
                return 0;
            }
            LinkedHashMap<Integer, Integer> linkedHashMapA = jVar.a();
            int i4 = -1;
            if (linkedHashMapA == null) {
                return -1;
            }
            for (Map.Entry<Integer, Integer> entry : linkedHashMapA.entrySet()) {
                int iIntValue = entry.getKey().intValue();
                if (entry.getValue().intValue() + i3 <= 0 && iIntValue > i4) {
                    i4 = iIntValue;
                }
            }
            return i4;
        }

        public void hp(final int i2, final com.byazt.jt.l lVar, final s.j jVar, final String str, final String str2) {
            k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.sr.a.hp.1
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("slot_type", Integer.valueOf(i2));
                    jSONObject.putOpt("rit", lVar.j());
                    jSONObject.putOpt(MediationConstant.KEY_REASON, str);
                    jSONObject.putOpt("reason_value", str2);
                    jSONObject.putOpt("score", Integer.valueOf(hp.this.hp));
                    jSONObject.putOpt("score_threshold", Integer.valueOf(jVar.j()));
                    return com.byazt.jlb.l.l().hp("load_score_cache").l(jSONObject.toString());
                }
            }, "load_score_cache");
        }
    }

    public static hp hp(String str, s.j jVar) {
        if (TextUtils.isEmpty(str)) {
            return new hp(jVar);
        }
        Map<String, hp> map = hp;
        hp hpVar = map.get(str);
        if (hpVar != null) {
            return hpVar;
        }
        hp hpVar2 = new hp(jVar);
        map.put(str, hpVar2);
        return hpVar2;
    }
}

package com.byazt.mpn;

import android.text.TextUtils;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class u implements com.byazt.zp.jx {

    @com.byazt.cv.hp(hp = "type")
    public String hp;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "log_extra")
    public String f23258l;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        if (!hp()) {
            com.byazt.ymw.u.l("UChain_ReportStatsAction", "ifHasAllRequiredParam = false");
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
            return false;
        }
        final JSONObject jSONObjectHp = hp(map);
        final int iJl = ky.jl(this.jx);
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.mpn.u.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp(u.this.hp).s(u.this.f23258l).hp(iJl).l(jSONObjectHp.toString());
            }
        }, this.hp);
        hpVar.hp(map2);
        return true;
    }

    private JSONObject hp(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add("type");
            hashSet.add("log_extra");
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (!hashSet.contains(entry.getKey())) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private boolean hp() {
        return (TextUtils.isEmpty(this.hp) || TextUtils.isEmpty(this.f23258l)) ? false : true;
    }
}

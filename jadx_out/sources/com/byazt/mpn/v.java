package com.byazt.mpn;

import android.text.TextUtils;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class v implements com.byazt.zp.jx {

    @com.byazt.cv.hp(hp = "label")
    public String hp;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "log_extra")
    public String f23260l;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        if (!hp()) {
            com.byazt.ymw.u.l("UChain_ReportEventAction", "ifHasAllRequiredParam = false");
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
            return false;
        }
        JSONObject jSONObjectHp = hp(map);
        com.byazt.jdb.j.l(this.jx, ky.l(this.jx), this.hp, jSONObjectHp);
        hpVar.hp(map2);
        return true;
    }

    private JSONObject hp(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add("label");
            hashSet.add("ad_id");
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
        return (TextUtils.isEmpty(this.hp) || TextUtils.isEmpty(this.f23260l) || this.jx == null) ? false : true;
    }
}

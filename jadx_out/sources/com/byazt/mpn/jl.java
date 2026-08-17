package com.byazt.mpn;

import android.content.Context;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 19})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class jl implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "landing_page_source")
    public int f23218a;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "event_tag")
    public String f23219j;

    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f23220l;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "wc_miniapp_info")
    public JSONObject f23221w;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        if (!hp()) {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
            return true;
        }
        if (new com.byazt.fib.s(this.hp, this.f23220l, this.jx, this.f23219j, map2, hpVar, this.f23218a, false).hp(new HashMap())) {
            hpVar.hp(map2);
        } else {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
        }
        return true;
    }

    private boolean hp() {
        return (this.hp == null || this.f23220l == null || this.f23221w == null) ? false : true;
    }
}

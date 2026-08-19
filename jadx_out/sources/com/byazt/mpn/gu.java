package com.byazt.mpn;

import android.content.Context;
import android.view.View;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.g;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class gu implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "view")
    public View f23208a;

    @com.byazt.cv.hp(hp = "handle_chain_data")
    public Map<String, Object> eb;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "dpa_tag")
    public String f23209j;

    @com.byazt.cv.hp(hp = "event_tag")
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f23210l;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "live_saas_interaction_type")
    public int f23211w = -1;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        int iJx;
        if (!hp()) {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
            return true;
        }
        if (this.hp.fa() != -1001) {
            iJx = this.hp.fa();
        } else {
            iJx = com.byazt.yx.l.hp().jx();
            this.hp.gd(iJx);
        }
        map2.put("saas_status_while_click", Integer.valueOf(iJx));
        com.byazt.fib.a aVar = new com.byazt.fib.a(this.hp, this.f23210l, this.jx, this.f23209j, map2);
        int i2 = this.f23211w;
        if (i2 != -1) {
            aVar.l(i2);
        }
        aVar.hp(this.f23208a);
        aVar.l(this.eb);
        if (new com.byazt.fib.l(new com.byazt.fib.w(aVar, this.hp, hpVar, map2, this.jx), this.f23210l, this.hp, this.jx, map2, hpVar).hp(new HashMap())) {
            hpVar.hp(map2);
            return false;
        }
        hpVar.hp(map2, (com.byazt.ppg.hp) null);
        return false;
    }

    private boolean hp() {
        return (this.hp == null || this.f23210l == null) ? false : true;
    }
}

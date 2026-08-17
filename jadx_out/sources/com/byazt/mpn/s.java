package com.byazt.mpn;

import android.content.Context;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.g;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class s implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "event_tag")
    public String f23251a;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_from_new_click_event")
    public boolean f23252e;

    @com.byazt.cv.hp(hp = "download_url")
    public String eb;

    @com.byazt.cv.hp(hp = "dynamic_download_dialog_type")
    public int gu;

    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_app_market_convert")
    public boolean f23253j;

    @com.byazt.cv.hp(hp = "is_direct_download")
    public boolean jl;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f23254l;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_show_download_dialog")
    public boolean f23255q = true;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "start_download_listener")
    public com.byazt.cb.l f23256s;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "app_manage_model")
    public com.byazt.xci.j f23257w;

    @com.byazt.cv.hp(hp = "download_dialog_listener")
    public com.byazt.cb.hp zy;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        com.byazt.zbc.jx jxVar = new com.byazt.zbc.jx(this.f23254l, this.jx);
        jxVar.jx(this.jl);
        jxVar.hp(this.f23255q);
        jxVar.hp(this.gu);
        jxVar.l(this.f23252e);
        jxVar.hp(this.zy);
        jxVar.hp(hp());
        if (!jxVar.j(false)) {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
            return true;
        }
        jxVar.hp(this.f23257w, this.f23251a, this.eb, this.f23256s);
        hpVar.hp(map2);
        return true;
    }

    private com.byazt.zbc.hp hp() {
        if (this.f23253j) {
            return new com.byazt.zbc.w();
        }
        if (this.hp) {
            return new com.byazt.zbc.j();
        }
        return new com.byazt.zbc.l();
    }
}

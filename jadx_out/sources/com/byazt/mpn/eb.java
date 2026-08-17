package com.byazt.mpn;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.xci.mp;
import com.byazt.xci.sz;
import com.byazt.yy.DownloadStatusChangeListener;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.g;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 94})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class eb implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "download_popup_manager")
    public com.byazt.zbc.jx f23199a;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "download_url")
    public String f23200e;

    @com.byazt.cv.hp(hp = "download_conf")
    public JSONObject gu;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "event_tag")
    public String f23201j;

    @com.byazt.cv.hp(hp = "app")
    public JSONObject jl;

    /* renamed from: k, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "pip_controller")
    public com.byazt.tm.l f23202k;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f23203l;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_click_button")
    public volatile boolean f23204q;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_open_market_intercept_for_dsp")
    public volatile boolean f23205s;

    /* renamed from: v, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "enable_update_download_model")
    public boolean f23206v;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "download_status_listener")
    public DownloadStatusChangeListener f23207w;

    @com.byazt.cv.hp(hp = "dialog_to_landing_page_convert")
    public com.byazt.qu.hp zy;

    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public volatile boolean jx = false;

    @com.byazt.cv.hp(hp = "need_check_compliance")
    public int eb = 0;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        if (!hp()) {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
            return true;
        }
        int iJ = com.byazt.fib.hp.j(map2);
        com.byazt.fib.j jVar = new com.byazt.fib.j(this.hp, this.f23203l, this.f23201j, this.f23199a, this.f23200e, this.f23206v, map2, false);
        jVar.l(this.f23204q);
        jVar.hp(this.f23205s, iJ);
        jVar.hp(this.f23207w);
        jVar.hp(this.jx);
        jVar.hp(this.eb);
        jVar.hp(this.zy);
        jVar.hp(new sz(this.gu));
        if (new com.byazt.qn.l(jVar, this.f23202k).hp(map2)) {
            hpVar.hp(map2);
        } else {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
        }
        return true;
    }

    private boolean hp() {
        if (this.hp == null || this.f23203l == null) {
            return false;
        }
        if (TextUtils.isEmpty(this.f23200e)) {
            com.byazt.xci.w wVarL = com.byazt.jz.hp.l(this.jl);
            if (wVarL != null) {
                this.f23200e = wVarL.l();
            }
            if (TextUtils.isEmpty(this.f23200e)) {
                return false;
            }
        }
        return (TextUtils.isEmpty(this.f23201j) || this.f23199a == null) ? false : true;
    }
}

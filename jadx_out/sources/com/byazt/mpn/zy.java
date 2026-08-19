package com.byazt.mpn;

import android.content.Context;
import com.anythink.core.common.m.f;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.umeng.analytics.pro.g;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 302})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class zy implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public boolean f23266a;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "pip_controller")
    public com.byazt.tm.l f23267e;

    @com.byazt.cv.hp(hp = "convert_from_downloader")
    public boolean eb;

    @com.byazt.cv.hp(hp = "is_click_button")
    public volatile boolean gu;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = MeishuOpenDeepLinkActivity.KEY_DEEP_LINK)
    public JSONObject f23268j;

    @com.byazt.cv.hp(hp = "event_tag")
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f23269l;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "convert_tag")
    public String f23270q;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "download_adapter")
    public com.byazt.gog.jx f23271s;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = f.bI)
    public JSONObject f23272w;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        com.byazt.fib.eb ebVar = new com.byazt.fib.eb(com.byazt.jz.hp.l(this.f23272w), this.f23269l, this.hp, map2);
        ebVar.hp(this.jx);
        com.byazt.fib.jx jxVar = new com.byazt.fib.jx(ebVar, this.hp, this.jx, new com.byazt.xci.xs(this.f23268j), this.f23269l, map2, false);
        jxVar.l(this.eb);
        jxVar.hp(this.f23266a);
        jxVar.hp(this.f23271s);
        jxVar.hp(this.f23270q);
        jxVar.hp(this.f23267e);
        jxVar.jx(this.gu);
        if (jxVar.hp(map2)) {
            hpVar.hp(map2);
            return true;
        }
        hpVar.hp(map2, (com.byazt.ppg.hp) null);
        return true;
    }
}

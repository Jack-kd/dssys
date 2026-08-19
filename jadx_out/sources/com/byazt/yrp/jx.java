package com.byazt.yrp;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MASK_STREAM_OPENED_TIME, 30})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class jx implements hp, s {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "pip_controller")
    public com.byazt.tm.l f28241a;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "open_video_detail_page_direct")
    public boolean f28242e;

    @com.byazt.cv.hp(hp = "event_tag")
    public String eb;

    @com.byazt.cv.hp(hp = "ad_id")
    public String ec;

    @com.byazt.cv.hp(hp = "is_from_video_layout")
    public boolean gu;

    @com.byazt.cv.hp(hp = "url", l = "DSL")
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_open_web_page")
    public boolean f28243j;

    @com.byazt.cv.hp(hp = PointCategory.TARGET_URL)
    public String jl;

    @com.byazt.cv.hp(hp = g.f49337X)
    public Context jx;

    /* renamed from: k, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "get_phone_num_status")
    public int f28244k;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.a.f3271h, l = "DSL")
    public String f28245l;

    /* renamed from: n, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "union_session_key")
    public String f28246n;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "landing_page_source")
    public int f28247q = -1;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "landing_page_url")
    public String f28248s;

    @com.byazt.cv.hp(hp = "icon.url")
    public String sz;

    /* renamed from: u, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "live_interaction_type")
    public int f28249u;

    /* renamed from: v, reason: collision with root package name */
    @com.byazt.cv.hp(hp = n.f36450m)
    public String f28250v;

    @com.byazt.cv.hp(hp = "gecko_id")
    public String vv;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public boolean f28251w;

    @com.byazt.cv.hp(hp = "req_id")
    public String xs;

    @com.byazt.cv.hp(hp = "interaction_type")
    public int zy;

    @Override // com.byazt.yrp.s
    public int eb() {
        return this.f28244k;
    }

    public Context getContext() {
        return this.jx;
    }

    public boolean gu() {
        return this.f28243j;
    }

    @Override // com.byazt.yrp.hp
    public Map<String, String> hp() {
        HashMap map = new HashMap();
        map.put(g.a.f3271h, g.a.f3271h);
        map.put("button_text", "button_text");
        map.put("block_auto_open", "block_auto_open");
        map.put("disable_top_bar", "disable_top_bar");
        map.put("disable_safe_area", "disable_safe_area");
        map.put("disable_rtn_button", "disable_rtn_button");
        return map;
    }

    @Override // com.byazt.yrp.s
    public String j() {
        return this.ec;
    }

    public boolean jl() {
        return this.f28251w;
    }

    @Override // com.byazt.yrp.s
    public String jx() {
        return this.vv;
    }

    public String k() {
        return this.eb;
    }

    @Override // com.byazt.yrp.s
    public String l() {
        return this.sz;
    }

    @Override // com.byazt.yrp.s
    public String n() {
        return this.f28246n;
    }

    @Override // com.byazt.yrp.s
    public String ns() {
        return this.xs;
    }

    @Override // com.byazt.yrp.s
    public int q() {
        return this.zy;
    }

    @Override // com.byazt.yrp.s
    public String s() {
        return this.jl;
    }

    public boolean u() {
        return this.f28242e;
    }

    public String v() {
        return !TextUtils.isEmpty(this.f28248s) ? this.f28248s : this.hp;
    }

    @Override // com.byazt.yrp.s
    public String v_() {
        return this.f28245l;
    }

    @Override // com.byazt.yrp.s
    public int w() {
        return this.f28249u;
    }

    @Override // com.byazt.yrp.s
    public String w_() {
        return this.f28250v;
    }

    public boolean xs() {
        return this.gu;
    }

    public com.byazt.tm.l zy() {
        return this.f28241a;
    }
}

package com.byazt.yrp;

import android.content.Context;
import com.byazt.xci.ns;
import com.byazt.xci.xh;
import com.byazt.xci.xs;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MASK_STREAM_OPENED_TIME, 54})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class a implements gu, hp {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = MeishuOpenDeepLinkActivity.KEY_DEEP_LINK)
    public JSONObject f28222a;

    /* renamed from: b, reason: collision with root package name */
    public xh f28223b;
    public com.byazt.xci.w cx;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "download_adapter")
    public com.byazt.gog.jx f28224e;

    @com.byazt.cv.hp(hp = "app")
    public JSONObject eb;

    @com.byazt.cv.hp(hp = "is_web_meta")
    public boolean ec;

    @com.byazt.cv.hp(hp = "convert_tag")
    public String gu;

    @com.byazt.cv.hp(hp = "url", l = "DSL")
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f28225j;

    @com.byazt.cv.hp(hp = "sub_convert_link")
    public JSONObject jl;

    @com.byazt.cv.hp(hp = "download_conf.download_type")
    public int jx = -1;

    /* renamed from: k, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "ad_id")
    public String f28226k;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "type", l = "DSL")
    public int f28227l;

    /* renamed from: n, reason: collision with root package name */
    public ns f28228n;
    public xs ns;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "convert_from_downloader")
    public boolean f28229q;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public boolean f28230s;

    @com.byazt.cv.hp(hp = "is_click_button")
    public volatile boolean sz;

    /* renamed from: u, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "reward_live")
    public JSONObject f28231u;

    /* renamed from: v, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "reward_live_deep_link_params")
    public JSONObject f28232v;

    @com.byazt.cv.hp(hp = "live_interaction_type")
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "event_tag")
    public String f28233w;

    @com.byazt.cv.hp(hp = "req_id")
    public String xs;

    @com.byazt.cv.hp(hp = "if_double_deeplink")
    public int zy;

    @Override // com.byazt.yrp.gu
    public int a() {
        return this.jx;
    }

    public boolean e() {
        return this.f28230s;
    }

    public boolean eb() {
        return this.sz;
    }

    public Context getContext() {
        return this.f28225j;
    }

    public boolean gu() {
        return this.f28229q;
    }

    @Override // com.byazt.yrp.hp
    public Map<String, String> hp() {
        return new HashMap();
    }

    @Override // com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s
    public String j() {
        return this.f28226k;
    }

    public com.byazt.gog.jx jl() {
        return this.f28224e;
    }

    public String jx() {
        return this.hp;
    }

    @Override // com.byazt.yrp.gu, com.byazt.yrp.q
    public xs k() {
        if (this.ns == null) {
            this.ns = new xs(this.f28222a);
        }
        return this.ns;
    }

    public JSONObject l() {
        return this.f28232v;
    }

    @Override // com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s
    public String ns() {
        return this.xs;
    }

    public String q() {
        return this.f28233w;
    }

    public int s() {
        return this.f28227l;
    }

    @Override // com.byazt.yrp.gu
    public boolean s_() {
        return this.ec;
    }

    @Override // com.byazt.yrp.gu
    public xh sz() {
        if (this.f28223b == null && l() != null) {
            this.f28223b = new xh(l());
        }
        return this.f28223b;
    }

    public String u() {
        return this.gu;
    }

    @Override // com.byazt.yrp.gu
    public com.byazt.xci.w v() {
        if (this.cx == null) {
            this.cx = com.byazt.jz.hp.l(this.eb);
        }
        return this.cx;
    }

    public JSONObject vv() {
        return this.f28231u;
    }

    @Override // com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s
    public int w() {
        return this.vv;
    }

    @Override // com.byazt.yrp.gu
    public boolean xs() {
        return this.zy == 1;
    }

    @Override // com.byazt.yrp.gu
    public boolean z_() {
        return vv() != null && vv().optBoolean("isValid", false);
    }

    @Override // com.byazt.yrp.gu, com.byazt.yrp.q
    public ns zy() {
        if (this.f28228n == null) {
            this.f28228n = new ns(this.jl, false);
        }
        return this.f28228n;
    }
}

package com.byazt.yrp;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.xci.as;
import com.byazt.xci.k;
import com.byazt.xci.ns;
import com.byazt.xci.qu;
import com.byazt.xci.rv;
import com.byazt.xci.xs;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MASK_STREAM_OPENED_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class w implements hp, q {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "toast", l = "DSL")
    public String f28266a;

    /* renamed from: b, reason: collision with root package name */
    @com.byazt.cv.hp(hp = n.f36450m)
    public String f28267b;

    @com.byazt.cv.hp(hp = "reward_live")
    public JSONObject cx;

    /* renamed from: d, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "saas_on_click_material")
    public JSONObject f28268d;

    @com.byazt.cv.hp(hp = "req_id")
    public String di;
    public ns dy;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f28269e;

    @com.byazt.cv.hp(hp = "live_type", l = "DSL")
    public int eb;

    @com.byazt.cv.hp(hp = "saas_info")
    public JSONObject ec;

    @com.byazt.cv.hp(hp = "event_tag")
    public String gu;

    @com.byazt.cv.hp(hp = "ec_schema", l = "DSL")
    public String hp;
    public k hq;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "amount", l = "DSL")
    public int f28270j;

    @com.byazt.cv.hp(hp = "dpa_tag")
    public String jl;

    @com.byazt.cv.hp(hp = "has_coupon", l = "DSL")
    public boolean jx;

    /* renamed from: k, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "view")
    public View f28271k;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "coupon_scene", l = "DSL")
    public int f28272l;
    public xs lv;

    /* renamed from: n, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "dynamic_configs")
    public String f28273n;

    @com.byazt.cv.hp(hp = "ad_id")
    public String ns;
    public JSONObject nu;

    /* renamed from: o, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "coupon")
    public JSONObject f28274o;
    public qu pu;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "live_params", l = "DSL")
    public String f28275q;

    /* renamed from: r, reason: collision with root package name */
    public rv f28276r;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "room_id", l = "DSL")
    public String f28277s;

    @com.byazt.cv.hp(hp = "union_session_key")
    public String sz;

    /* renamed from: u, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "live_info")
    public JSONObject f28278u;
    public as ud;

    /* renamed from: v, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "handle_chain_data")
    public Map<String, Object> f28279v;

    @com.byazt.cv.hp(hp = MeishuOpenDeepLinkActivity.KEY_DEEP_LINK)
    public JSONObject vv;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "link_url", l = "DSL")
    public String f28280w;

    @com.byazt.cv.hp(hp = "live_sdk_status_while_first_click")
    public int wv;

    @com.byazt.cv.hp(hp = "sub_convert_link")
    public JSONObject xs;

    @com.byazt.cv.hp(hp = "live_saas_interaction_type")
    public int zy = -1;

    @Override // com.byazt.yrp.q
    public rv C_() {
        JSONObject jSONObject;
        if (this.f28276r == null && (jSONObject = this.ec) != null) {
            this.f28276r = rv.hp(jSONObject);
        }
        return this.f28276r;
    }

    @Override // com.byazt.yrp.q
    public qu D_() {
        JSONObject jSONObject = this.f28268d;
        if (jSONObject != null && this.pu == null) {
            this.pu = qu.hp(jSONObject);
        }
        return this.pu;
    }

    public int cx() {
        return this.wv;
    }

    @Override // com.byazt.yrp.q
    public String e() {
        return this.f28277s;
    }

    public int eb() {
        return this.zy;
    }

    @Override // com.byazt.yrp.q
    public k ec() {
        JSONObject jSONObject = this.f28274o;
        if (jSONObject != null && this.hq == null) {
            k kVarHp = k.hp(jSONObject);
            this.hq = kVarHp;
            kVarHp.hp(this.f28266a);
            this.hq.hp(this.f28272l);
            this.hq.hp(this.jx);
            this.hq.hp(this.f28270j);
        }
        return this.hq;
    }

    public Context getContext() {
        return this.f28269e;
    }

    @Override // com.byazt.yrp.q
    public as gu() {
        JSONObject jSONObject = this.f28278u;
        if (jSONObject != null && this.ud == null) {
            this.ud = as.hp(jSONObject);
        }
        return this.ud;
    }

    @Override // com.byazt.yrp.hp
    public Map<String, String> hp() {
        return new HashMap();
    }

    @Override // com.byazt.yrp.q, com.byazt.yrp.s
    public String j() {
        return this.ns;
    }

    @Override // com.byazt.yrp.q
    public String jl() {
        return this.f28275q;
    }

    public String jx() {
        return this.jl;
    }

    @Override // com.byazt.yrp.q
    public xs k() {
        if (this.lv == null) {
            this.lv = new xs(this.vv);
            if (!TextUtils.isEmpty(this.f28280w)) {
                this.lv.l(this.f28280w);
            }
        }
        return this.lv;
    }

    public String l() {
        return this.gu;
    }

    @Override // com.byazt.yrp.q, com.byazt.yrp.s
    public String n() {
        return this.sz;
    }

    @Override // com.byazt.yrp.q, com.byazt.yrp.s
    public String ns() {
        return this.di;
    }

    public Map<String, Object> q() {
        return this.f28279v;
    }

    @Override // com.byazt.yrp.q
    public JSONObject q_() {
        if (this.f28267b != null && this.nu == null) {
            try {
                this.nu = new JSONObject(this.f28267b);
            } catch (JSONException unused) {
            }
        }
        return this.nu;
    }

    public View s() {
        return this.f28271k;
    }

    @Override // com.byazt.yrp.q
    public String t_() {
        return this.hp;
    }

    @Override // com.byazt.yrp.q
    public String u() {
        return this.f28273n;
    }

    @Override // com.byazt.yrp.q, com.byazt.yrp.s
    public int w() {
        return this.eb;
    }

    @Override // com.byazt.yrp.q, com.byazt.yrp.s
    public String w_() {
        return this.f28267b;
    }

    @Override // com.byazt.yrp.q
    public boolean y_() {
        return this.cx != null;
    }

    @Override // com.byazt.yrp.q
    public ns zy() {
        JSONObject jSONObject;
        if (this.dy == null && (jSONObject = this.xs) != null) {
            this.dy = new ns(jSONObject, false);
        }
        return this.dy;
    }

    public void hp(int i2) {
        this.wv = i2;
    }
}

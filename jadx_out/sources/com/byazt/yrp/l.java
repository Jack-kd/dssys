package com.byazt.yrp;

import android.content.Context;
import com.byazt.xci.sz;
import com.byazt.yy.DownloadStatusChangeListener;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MASK_STREAM_OPENED_TIME, 34})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class l implements eb, hp {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f28252a;

    /* renamed from: b, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "market_url")
    public String f28253b;

    @com.byazt.cv.hp(hp = "req_id")
    public String cx;

    /* renamed from: d, reason: collision with root package name */
    public com.byazt.xci.w f28254d;
    public com.byazt.xci.a di;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_click_button")
    public volatile boolean f28255e;

    @com.byazt.cv.hp(hp = "not_valid_download_url")
    public boolean ec;

    @com.byazt.cv.hp(hp = "download_url")
    public String gu;

    @com.byazt.cv.hp(hp = "id", l = "DSL")
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "download_status_listener")
    public DownloadStatusChangeListener f28256j;

    @com.byazt.cv.hp(hp = "download_conf")
    public JSONObject jl;

    @com.byazt.cv.hp(hp = "event_tag")
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "dialog_to_landing_page_convert")
    public com.byazt.qu.hp f28257k;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "url", l = "DSL")
    public String f28258l;

    /* renamed from: n, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "enable_update_download_model")
    public boolean f28259n;

    @com.byazt.cv.hp(hp = "union_session_key")
    public String ns;

    /* renamed from: o, reason: collision with root package name */
    public sz f28260o;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_open_market_intercept_for_dsp")
    public volatile boolean f28261q;

    @com.byazt.cv.hp(hp = "app_manage")
    public JSONObject sz;

    /* renamed from: u, reason: collision with root package name */
    @com.byazt.cv.hp(hp = n.f36450m)
    public String f28263u;

    /* renamed from: v, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "pip_controller")
    public com.byazt.tm.l f28264v;

    @com.byazt.cv.hp(hp = "if_both_open")
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "download_popup_manager")
    public com.byazt.zbc.jx f28265w;

    @com.byazt.cv.hp(hp = "ad_id")
    public String xs;

    @com.byazt.cv.hp(hp = "app")
    public JSONObject zy;

    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public volatile boolean eb = false;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "need_check_compliance")
    public int f28262s = 0;

    @Override // com.byazt.yrp.eb
    public boolean B_() {
        return this.ec;
    }

    @Override // com.byazt.yrp.eb
    public String b() {
        return this.f28253b;
    }

    @Override // com.byazt.yrp.eb
    public String cx() {
        return q_() != null ? q_().optString("ad_id") : "";
    }

    public com.byazt.zbc.jx e() {
        return this.f28265w;
    }

    public boolean eb() {
        return this.eb;
    }

    public Context getContext() {
        return this.f28252a;
    }

    public int gu() {
        return this.f28262s;
    }

    public void hp(String str) {
        this.gu = str;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s
    public String j() {
        return this.xs;
    }

    public boolean jl() {
        return this.f28261q;
    }

    public String k() {
        return this.gu;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.q, com.byazt.yrp.s
    public String n() {
        return this.ns;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s
    public String ns() {
        return this.cx;
    }

    public DownloadStatusChangeListener q() {
        return this.f28256j;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.q
    public JSONObject q_() {
        try {
            return new JSONObject(w());
        } catch (JSONException unused) {
            return null;
        }
    }

    public String s() {
        return this.jx;
    }

    public boolean sz() {
        return this.f28259n;
    }

    public com.byazt.qu.hp u() {
        return this.f28257k;
    }

    @Override // com.byazt.yrp.eb
    public sz u_() {
        JSONObject jSONObject;
        if (this.f28260o == null && (jSONObject = this.jl) != null) {
            this.f28260o = new sz(jSONObject);
        }
        return this.f28260o;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.gu
    public com.byazt.xci.w v() {
        JSONObject jSONObject;
        if (this.f28254d == null && (jSONObject = this.zy) != null) {
            com.byazt.xci.w wVarL = com.byazt.jz.hp.l(jSONObject);
            this.f28254d = wVarL;
            wVarL.j(this.hp);
            this.f28254d.l(this.f28258l);
        }
        return this.f28254d;
    }

    @Override // com.byazt.yrp.eb
    public com.byazt.xci.a vv() {
        JSONObject jSONObject;
        if (this.di == null && (jSONObject = this.sz) != null) {
            this.di = new com.byazt.xci.a(jSONObject);
        }
        return this.di;
    }

    public String w() {
        return this.f28263u;
    }

    @Override // com.byazt.yrp.eb
    public boolean x_() {
        return this.vv == 1;
    }

    public com.byazt.tm.l xs() {
        return this.f28264v;
    }

    public boolean zy() {
        return this.f28255e;
    }

    @Override // com.byazt.yrp.hp
    public Map<String, String> hp() {
        return new HashMap();
    }
}

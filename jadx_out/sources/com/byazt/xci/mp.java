package com.byazt.xci;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.anythink.core.common.f.s;
import com.byazt.xci.wt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.IOfflineCompo;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 678})
/* loaded from: classes3.dex */
public class mp implements com.byazt.yrp.e, com.byazt.yrp.eb, com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s {

    /* renamed from: a, reason: collision with root package name */
    public int f27362a;
    public boolean ad;
    public int ae;
    public boolean ai;
    public int aj;
    public boolean as;

    /* renamed from: b, reason: collision with root package name */
    public w f27363b;
    public ec ba;
    public gd be;
    public v bf;
    public JSONObject bu;
    public int bv;
    public yr bx;

    /* renamed from: c, reason: collision with root package name */
    public int f27364c;
    public int cd;
    public int ci;
    public int cu;

    /* renamed from: d, reason: collision with root package name */
    public int f27365d;
    public String db;
    public as dh;
    public n di;
    public volatile String ds;
    public long dy;
    public sz ea;
    public an eb;
    public long ec;
    public wv ei;
    public int el;
    public k eq;
    public boolean er;
    public int fe;
    public int fu;
    public a fv;

    /* renamed from: g, reason: collision with root package name */
    public y f27368g;
    public String gh;
    public int gi;
    public boolean gs;
    public String gu;
    public String gy;

    /* renamed from: h, reason: collision with root package name */
    public String f27369h;
    public String hc;
    public nr hl;
    public ux hp;
    public String hq;
    public String hx;

    /* renamed from: i, reason: collision with root package name */
    public long f27370i;
    public o in;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.bl.l f27371j;
    public JSONObject ja;
    public String jb;
    public int jc;
    public JSONObject jl;
    public lv ju;
    public JSONObject jv;
    public rz jw;
    public String jx;
    public hq ks;
    public wt ku;
    public df ky;

    /* renamed from: l, reason: collision with root package name */
    public String f27373l;
    public String la;
    public gu ll;
    public int lp;
    public di lr;
    public rv lu;
    public long lv;
    public int lz;
    public String me;
    public JSONObject mk;
    public qu mm;
    public boolean mn;

    /* renamed from: ms, reason: collision with root package name */
    public boolean f27375ms;
    public int mt;

    /* renamed from: n, reason: collision with root package name */
    public String f27376n;
    public boolean nc;
    public hd nf;
    public int nl;
    public int nn;
    public pu nq;
    public String nu;

    /* renamed from: o, reason: collision with root package name */
    public xs f27377o;
    public r og;
    public String or;

    /* renamed from: p, reason: collision with root package name */
    public String f27378p;
    public ms pc;
    public String pg;
    public volatile String pj;
    public JSONObject pk;
    public String pn;
    public yj pp;
    public int pu;

    /* renamed from: q, reason: collision with root package name */
    public String f27379q;
    public String qa;
    public vv qb;
    public com.byazt.qb.hp qd;
    public int qe;
    public int qj;
    public long qk;
    public d qo;
    public int qq;
    public zx qu;
    public rk qy;

    /* renamed from: r, reason: collision with root package name */
    public int f27380r;
    public String rf;
    public JSONObject ri;
    public com.byazt.jt.l rk;
    public int rm;
    public int rp;
    public boolean rt;
    public int ru;
    public ea rv;
    public JSONObject rw;

    /* renamed from: s, reason: collision with root package name */
    public dy f27381s;
    public String sh;
    public volatile JSONObject sq;
    public Map<String, Object> su;
    public String sz;

    /* renamed from: t, reason: collision with root package name */
    public JSONObject f27382t;
    public ns tq;
    public int ty;
    public com.byazt.nqo.hp ub;
    public JSONObject ud;
    public String uj;
    public String ut;

    /* renamed from: v, reason: collision with root package name */
    public String f27384v;
    public int vg;
    public String vi;
    public boolean vq;
    public m vr;
    public xh vt;
    public String vv;
    public String vx;

    /* renamed from: w, reason: collision with root package name */
    public int f27385w;
    public int wt;
    public String wv;
    public String xe;
    public int xh;
    public nd xn;
    public int xq;
    public long xv;
    public String yj;

    /* renamed from: z, reason: collision with root package name */
    public String f27388z;
    public int zb;
    public boolean zd;
    public boolean zp;
    public JSONObject zy;

    /* renamed from: e, reason: collision with root package name */
    public int f27366e = -1;

    /* renamed from: k, reason: collision with root package name */
    public List<dy> f27372k = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    public List<String> f27383u = new ArrayList();
    public List<String> xs = new ArrayList();
    public String ns = "0";
    public String cx = "0";
    public int kg = 100;
    public long mp = -1;

    /* renamed from: m, reason: collision with root package name */
    public long f27374m = -1;

    /* renamed from: f, reason: collision with root package name */
    public long f27367f = -1;
    public int yr = -1;
    public int rz = 1;
    public long nd = System.currentTimeMillis();
    public String hd = UUID.randomUUID().toString();
    public int zx = 1;

    /* renamed from: y, reason: collision with root package name */
    public String f27387y = "";
    public boolean an = false;
    public int fi = IOfflineCompo.Priority.HIGHEST;
    public int nr = 0;
    public int gd = 1;
    public int tw = 0;
    public int jd = 0;
    public int qh = 0;

    /* renamed from: x, reason: collision with root package name */
    public int f27386x = 1;
    public int df = 0;
    public int ux = 0;
    public int pi = 0;
    public int ed = 0;
    public int ov = 1;
    public boolean gb = false;
    public int ld = 1;
    public float ly = 100.0f;
    public int tn = 0;
    public int tr = 2;
    public int pf = 0;
    public int ti = 100;
    public int cs = 2;
    public int gv = 2;
    public float zv = 0.07f;
    public float on = 0.0f;
    public long id = 0;
    public boolean yt = true;
    public int hy = -1;
    public int qn = 0;
    public int ct = 0;
    public long hb = 0;
    public int wf = 0;
    public List<nu> sv = new ArrayList();
    public int rl = -1;
    public int uc = 1;
    public int vd = -1001;
    public int ij = 0;

    private float hf() {
        if (this.ku == null) {
            return 5.0f;
        }
        return r0.v();
    }

    private int wu() {
        return this.kg;
    }

    @Override // com.byazt.yrp.e
    public ux A_() {
        return this.hp;
    }

    @Override // com.byazt.yrp.eb
    public boolean B_() {
        return this.ai;
    }

    @Override // com.byazt.yrp.q
    public rv C_() {
        return this.lu;
    }

    @Override // com.byazt.yrp.q
    public qu D_() {
        return this.mm;
    }

    public void a(int i2) {
        if (this.qe == 0) {
            this.qe = i2;
        }
    }

    public int ad() {
        return this.gd;
    }

    public wt.hp ae() {
        wt wtVar = this.ku;
        if (wtVar != null) {
            return wtVar.k();
        }
        return null;
    }

    public String ai() {
        try {
            return q_().optString("convert_id", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public int aj() {
        return this.ae;
    }

    public int an() {
        if (ec.j(this)) {
            return 0;
        }
        return this.gi;
    }

    public boolean as() {
        return ms() == 1;
    }

    public void b(int i2) {
        this.ru = i2;
    }

    public int ba() {
        if (xn() != null) {
            return xn().l();
        }
        return -1;
    }

    public wt.l be() {
        wt wtVar = this.ku;
        if (wtVar != null) {
            return wtVar.jl();
        }
        return null;
    }

    public int bf() {
        return this.bv;
    }

    public r bj() {
        return this.og;
    }

    public yr bk() {
        return this.bx;
    }

    public d bt() {
        return this.qo;
    }

    public int bu() {
        return this.ed;
    }

    public List<String> bv() {
        return this.f27383u;
    }

    public String bx() {
        return this.or;
    }

    public hd c() {
        return this.nf;
    }

    public int cd() {
        return this.qj;
    }

    public int ci() {
        gd gdVar = this.be;
        if (gdVar == null) {
            return 30;
        }
        return gdVar.jx();
    }

    public int cs() {
        return this.ty;
    }

    public pu ct() {
        return this.nq;
    }

    public String cu() {
        return this.sz;
    }

    public boolean cv() {
        return this.an;
    }

    public void cx(int i2) {
        this.wt = i2;
    }

    public int d() {
        return this.rl;
    }

    public com.byazt.jt.l db() {
        return this.rk;
    }

    public ea df() {
        return this.rv;
    }

    public int dh() {
        int i2 = this.yr;
        if (i2 != -1) {
            return i2;
        }
        if (com.byazt.zn.ky.jl(this) == 7) {
            return 0;
        }
        return (com.byazt.zn.ky.jl(this) == 8 && qo() == 100.0f) ? 0 : 1;
    }

    public synchronized String di() {
        try {
            if (TextUtils.isEmpty(this.pj)) {
                String strK = com.byazt.zn.ky.k(this);
                String strCx = cx();
                String strJ = j();
                if (TextUtils.isEmpty(strK)) {
                    strK = "0";
                }
                if (TextUtils.isEmpty(strJ)) {
                    strJ = "0";
                }
                if (TextUtils.isEmpty(strCx)) {
                    strCx = "0";
                }
                this.pj = strK + "_" + strCx + "_" + strJ;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.pj;
    }

    public o ds() {
        return this.in;
    }

    public int dy() {
        return this.jc;
    }

    public boolean dz() {
        return this.yt;
    }

    public void e(int i2) {
        this.lz = i2;
    }

    public JSONObject ea() {
        return this.sq;
    }

    @Override // com.byazt.yrp.s
    public int eb() {
        return this.xq;
    }

    public void ec(int i2) {
        this.hy = i2;
    }

    public boolean ed() {
        return this.tw == 1;
    }

    public long ei() {
        return this.id;
    }

    public JSONObject el() {
        return this.f27382t;
    }

    public int eq() {
        return this.xh;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            mp mpVar = (mp) obj;
            if (this.ns.equals(mpVar.ns) && this.hq.equals(mpVar.hq)) {
                return true;
            }
        }
        return false;
    }

    public long er() {
        return this.nd;
    }

    public boolean f() {
        return this.zd;
    }

    public int fa() {
        return this.vd;
    }

    public int fe() {
        gd gdVar = this.be;
        if (gdVar == null) {
            return 2;
        }
        return gdVar.hp();
    }

    public com.byazt.qb.hp fi() {
        return this.qd;
    }

    public int fu() {
        wt wtVar = this.ku;
        if (wtVar == null) {
            return 1;
        }
        return wtVar.hp();
    }

    public JSONObject fv() {
        return this.zy;
    }

    public String g() {
        wt wtVar = this.ku;
        return wtVar == null ? "点击查看" : wtVar.gu();
    }

    public nr gb() {
        return this.hl;
    }

    public boolean gd() {
        return this.nc;
    }

    public int gh() {
        return this.wt;
    }

    public rk gi() {
        return this.qy;
    }

    public String gs() {
        return this.vx;
    }

    public void gu(int i2) {
        this.gi = i2;
    }

    public int gv() {
        return this.ci;
    }

    public int gy() {
        wt wtVar = this.ku;
        if (wtVar == null) {
            return 50;
        }
        return wtVar.j();
    }

    public int h() {
        return this.jd;
    }

    public int hashCode() {
        return (this.ns.hashCode() * 31) + this.hq.hashCode();
    }

    public String hb() {
        return this.jb;
    }

    public int hc() {
        return this.f27364c;
    }

    public int hd() {
        return this.lz;
    }

    public boolean hl() {
        boolean z2 = xn() != null && xn().hp();
        return (z2 && nf() == 4) ? ba() >= 0 : z2;
    }

    public String hp() {
        return this.ds;
    }

    public int hq() {
        return this.ij;
    }

    public boolean hx() {
        return this.f27375ms;
    }

    public int hy() {
        return this.f27365d;
    }

    public int i() {
        return this.ru;
    }

    public long id() {
        return this.ec;
    }

    public JSONObject ij() throws JSONException {
        String str;
        String str2;
        String str3;
        String str4;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("s_sig_ts", bx());
            jSONObject.put("ad_rec_stamp", ei());
            jSONObject.put("interaction_type", q());
            jSONObject.put(PointCategory.TARGET_URL, s());
            jSONObject.put("use_sdk_player", zb());
            jSONObject.put("use_media_video_player", bu());
            jSONObject.put("landing_scroll_percentage", og());
            jSONObject.put("gecko_id", jx());
            jSONObject.put("extension", tq());
            jSONObject.put("overlay", fv());
            jSONObject.put("ad_id", j());
            jSONObject.put(com.sigmob.sdk.base.n.f36449l, qk());
            jSONObject.put("package_name", ks());
            jSONObject.put("screenshot", hx());
            jSONObject.put("play_bar_style", z());
            jSONObject.put("play_bar_show_time", qa());
            jSONObject.put("if_block_lp", pi());
            jSONObject.put("cache_sort", nc());
            jSONObject.put("if_sp_cache", jb());
            jSONObject.put("splash_timeout_stage", vx());
            jSONObject.put(PointParamKey.IS_CACHE, uj());
            jSONObject.put("cache_type", wu());
            com.byazt.yek.jx.hp(this, jSONObject, true);
            jSONObject.putOpt("applist_info", xj());
            jSONObject.put("meta_hashcode", nu());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("cta", t());
            jSONObject2.put("other", qh());
            jSONObject.put("set_click_type", jSONObject2);
            dy dyVarNq = nq();
            if (dyVarNq != null && !TextUtils.isEmpty(dyVarNq.hp())) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("url", dyVarNq.hp());
                jSONObject3.put("height", dyVarNq.jx());
                jSONObject3.put("width", dyVarNq.l());
                jSONObject.put("icon", jSONObject3);
            }
            Object objEl = el();
            if (objEl != null) {
                jSONObject.put("session_params", objEl);
            }
            Object objMk = mk();
            if (objMk != null) {
                jSONObject.put("cache_control", objMk);
            }
            com.byazt.jt.l lVarDb = db();
            if (lVarDb != null) {
                jSONObject.put("adslot", com.byazt.zn.wv.hp(lVarDb));
            }
            List<dy> listVi = vi();
            if (listVi != null) {
                JSONArray jSONArray = new JSONArray();
                for (dy dyVar : listVi) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("url", dyVar.hp());
                    jSONObject4.put("height", dyVar.jx());
                    jSONObject4.put("width", dyVar.l());
                    jSONObject4.put("image_preview", dyVar.a());
                    jSONObject4.put("image_key", dyVar.eb());
                    jSONArray.put(jSONObject4);
                }
                jSONObject.put("image", jSONArray);
            }
            List<String> listBv = bv();
            if (listBv != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<String> it = listBv.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next());
                }
                jSONObject.put("show_url", jSONArray2);
            }
            List<String> listOr = or();
            if (listOr != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator<String> it2 = listOr.iterator();
                while (it2.hasNext()) {
                    jSONArray3.put(it2.next());
                }
                jSONObject.put("click_url", jSONArray3);
            }
            jSONObject.put("phone_num", qj());
            jSONObject.put(g.a.f3271h, v_());
            jSONObject.put("download_num", id());
            jSONObject.put("description", cu());
            jSONObject.put(com.sigmob.sdk.base.n.f36450m, w_());
            jSONObject.put("req_id", ns());
            jSONObject.put("image_mode", hy());
            jSONObject.put("intercept_flag", gh());
            jSONObject.put("web_inspector", i());
            jSONObject.put("button_text", ll());
            jSONObject.put("ad_logo", ad());
            jSONObject.put("video_adaptation", h());
            jSONObject.put("feed_video_opentype", xv());
            jSONObject.put("feed_reward_type", pg());
            jSONObject.put("orientation", wf());
            jSONObject.put("aspect_ratio", qo());
            jSONObject.put("aspect_margin", vd());
            jSONObject.put("corner_radius", zp());
            w wVarV = v();
            if (wVarV != null) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("app_name", wVarV.jx());
                jSONObject5.put("package_name", wVarV.j());
                jSONObject5.put("download_url", wVarV.l());
                jSONObject5.put("score", wVarV.w());
                jSONObject5.put("comment_num", wVarV.a());
                jSONObject5.put("quick_app_url", wVarV.hp());
                jSONObject5.put("app_size", wVarV.eb());
                jSONObject.put("app", jSONObject5);
            }
            n nVarYt = yt();
            if (nVarYt != null) {
                jSONObject.put("download_sdk_conf", nVarYt.jx());
            }
            if (df() != null) {
                df().l(jSONObject);
            }
            if (oh() != null) {
                oh().hp(jSONObject);
            }
            if (k() != null) {
                k().hp(jSONObject);
            }
            if (ju() != null) {
                ju().hp(jSONObject);
            }
            if (c() != null) {
                c().l(jSONObject);
            }
            if (lp() != null) {
                lp().hp(jSONObject);
            }
            if (ov() != null) {
                ov().hp(jSONObject);
            }
            if (vr() != null) {
                vr().hp(jSONObject);
            }
            if (gb() != null) {
                gb().hp(jSONObject);
            }
            if (ct() != null) {
                ct().hp(jSONObject);
            }
            if (mm() != null) {
                mm().hp(jSONObject);
            }
            if (ux() != null) {
                ux().l(jSONObject);
            }
            jSONObject.put("count_down", lz());
            jSONObject.put("expiration_time", xe());
            jSONObject.put("client_expiration_time", xe());
            jSONObject.put("_child_metas", wi());
            jSONObject.put("_meta_life_record", xm().hp());
            jSONObject.put("src_req_id", lr());
            jSONObject.put("player_type", qe());
            jSONObject.put("video_encode_type", eq());
            jSONObject.put("feed_video_finish_type", x());
            jSONObject.put("video_voice_control", dh());
            jSONObject.put("if_show_win", pp());
            if (me() != null) {
                me().hp(jSONObject);
            }
            if (u_() != null) {
                u_().hp(jSONObject);
            }
            jSONObject.put("if_both_open", rw());
            jSONObject.put("if_double_deeplink", jv());
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("splash_clickarea", fu());
            jSONObject6.put("splash_clicktext", ld());
            jSONObject6.put("area_height", gy());
            jSONObject6.put("area_width", tn());
            jSONObject6.put("area_blank_height", tr());
            jSONObject6.put("half_blank_height", pf());
            jSONObject6.put("splash_style_id", ti());
            jSONObject6.put("btn_background_dest_color", jw());
            jSONObject6.put("top_splash_clicktext", g());
            jSONObject6.put("splash_load_time_optimization", vt());
            jSONObject6.put("text_config", be() != null ? be().hp() : null);
            jSONObject6.put("top_text_config", nl() != null ? nl().hp() : null);
            str = "width";
            str2 = "height";
            try {
                jSONObject6.put("sliding_distance", hf());
                jSONObject6.put("slide_area", ae() != null ? ae().w() : null);
                jSONObject.put("splash_control", jSONObject6);
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("position", fe());
                jSONObject7.put("left_or_right_margin", ty());
                jSONObject7.put("top_or_bottom_margin", ci());
                gd gdVar = this.be;
                jSONObject7.put("skip_style", gdVar == null ? 1 : gdVar.j());
                gd gdVar2 = this.be;
                jSONObject7.put("hide_native_skip_logo", gdVar2 == null ? 0 : gdVar2.w());
                jSONObject.put("skip_control", jSONObject7);
                JSONObject jSONObject8 = new JSONObject();
                jSONObject8.put("show_type", zv());
                jSONObject8.put("blank", on());
                jSONObject8.put("half_blank", qy());
                jSONObject.put("splash_compliance_bar", jSONObject8);
                jSONObject.put("fix_click_sequence", hq());
                if (rp() != null) {
                    JSONObject jSONObject9 = new JSONObject();
                    Set<Map.Entry<String, Object>> setEntrySet = rp().entrySet();
                    if (setEntrySet != null && !setEntrySet.isEmpty()) {
                        for (Map.Entry<String, Object> entry : setEntrySet) {
                            jSONObject9.put(entry.getKey(), entry.getValue());
                        }
                    }
                    jSONObject.put("media_ext", jSONObject9);
                }
                jSONObject.put("isDirectDownload", m());
                jSONObject.put("page_render_type", an());
                jSONObject.put("promotion_type", jd());
                jSONObject.put("if_lpua_package", this.el);
                jSONObject.put("click_freq", this.ct);
                com.byazt.nqo.hp hpVarPc = pc();
                if (hpVarPc != null) {
                    JSONObject jSONObject10 = new JSONObject();
                    jSONObject10.put("id", hpVarPc.hp());
                    jSONObject10.put(TKDownloadReason.KSAD_TK_MD5, hpVarPc.l());
                    jSONObject10.put("url", hpVarPc.jx());
                    jSONObject10.put(com.umeng.ccg.a.f49756j, hpVarPc.j());
                    jSONObject.put("ugeno", jSONObject10);
                }
                com.byazt.qb.hp hpVarFi = fi();
                if (hpVarFi != null) {
                    JSONObject jSONObject11 = new JSONObject();
                    jSONObject11.put("product_infos", hpVarFi.hp());
                    jSONObject11.put("coupon", hpVarFi.l());
                    jSONObject11.put("render_config", hpVarFi.jx());
                    jSONObject11.put("live_room_data", hpVarFi.j());
                    jSONObject11.putOpt("ec_mall_conf", hpVarFi.w());
                    jSONObject.put("dylite_info", jSONObject11);
                }
                jSONObject.put("native_lp_data", nd());
                jSONObject.put("native_lp_tpl_id", hd());
                jSONObject.put("native_lp_ugen_url", zx());
                jSONObject.put("native_lp_ugen_md5", y());
                jSONObject.put("download_url", rz());
                jSONObject.put("native_lp_is_preload", vq());
                if (vq()) {
                    jSONObject.put("native_lp_content", ea());
                }
                jSONObject.put("market_url", b());
                jSONObject.put("close_on_dislike", mz());
                a aVarVv = vv();
                if (aVarVv != null) {
                    JSONObject jSONObject12 = new JSONObject();
                    jSONObject12.put("developer_name", aVarVv.eb());
                    jSONObject12.put("app_version", aVarVv.w());
                    jSONObject12.put("permissions", aVarVv.jl());
                    jSONObject12.put("privacy_policy_url", aVarVv.s());
                    jSONObject12.put("package_name", aVarVv.zy());
                    jSONObject12.put("app_name", aVarVv.k());
                    jSONObject12.put("score", aVarVv.jx());
                    jSONObject12.put("creative_tags", aVarVv.j());
                    jSONObject12.put("permissions_url", aVarVv.l());
                    jSONObject12.put("desc_url", aVarVv.q());
                    jSONObject12.put("reg_number", aVarVv.e());
                    jSONObject12.put("reg_url", aVarVv.gu());
                    jSONObject.put("app_manage", jSONObject12);
                }
                di diVarRl = rl();
                if (diVarRl != null) {
                    JSONObject jSONObject13 = new JSONObject();
                    jSONObject13.put("ugen_dialog_url", diVarRl.l());
                    jSONObject13.put("ugen_dialog_md5", diVarRl.jx());
                    jSONObject13.put("dialog_style", diVarRl.hp());
                    jSONObject.put("easy_dl_dialog", jSONObject13);
                }
                if (pj() != null) {
                    jSONObject.put("easy_pl_material", pj());
                }
                jSONObject.put("micro_app_type", d());
                jSONObject.put("app_manage_type", cd());
                jSONObject.put("lp_down_rule", bf() == 1 ? 1 : 0);
                jSONObject.put("auction_price", gs());
                jSONObject.put("price", yj());
                jSONObject.put("ad_info", hb());
                jSONObject.put("adx_name", nn());
                jSONObject.put("no_default_ttdsp_price", mn());
                jSONObject.put("endcard_close_time", rt());
                jSONObject.put("proportion_watching", sv());
                jSONObject.put("video_skip_result", yu());
                jSONObject.put("shake_value", rm());
                jSONObject.put("deep_shake_value", kq());
                jSONObject.put("rotation_angle", aj());
                jSONObject.put("calculation_method", cs());
                jSONObject.put("calculation_method_twist", gv());
                jSONObject.put("show_poll_time", ub());
                jSONObject.put("dynamic_join_type", ja());
                jSONObject.put("dynamic_join_duration", hc());
                jSONObject.put("is_web_meta", s_());
                jSONObject.put("union_session_key", n());
                jSONObject.put("cache_ext", rv());
                jSONObject.put("cache_time", su());
                jSONObject.put("req_id", nr());
                jSONObject.put(PointParamKey.IS_CACHE, rk());
                jSONObject.put("log_ext", wt());
                jSONObject.put("material_key", ru());
                jSONObject.put("need_get_materials", gd());
                jSONObject.put("s_send_ts", tw());
                jSONObject.put("parse_material_ts", qu());
                ux uxVar = this.hp;
                if (uxVar != null) {
                    jSONObject.put("wc_miniapp_info", uxVar.q());
                }
                Object obj = this.jx;
                if (obj != null) {
                    jSONObject.put("app_id", obj);
                }
                gu guVarRo = ro();
                if (guVarRo != null) {
                    JSONObject jSONObject14 = new JSONObject();
                    jSONObject14.put("click_trigger_type", guVarRo.hp());
                    jSONObject14.put("shake_start_time", guVarRo.l());
                    jSONObject14.put("shake_end_time", guVarRo.jx());
                    jSONObject.put("click_trigger_config", jSONObject14);
                }
                jSONObject.put("web_monitor_rate", wv());
                if (xn() != null) {
                    xn().hp(jSONObject);
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            str = "width";
            str2 = "height";
        }
        if (vk() != null) {
            vk().hp(jSONObject);
        }
        try {
            jSONObject.put("is_ec_mall", cv() ? 1 : 0);
            jSONObject.put("live_room_id", e());
            jSONObject.put("ad_type", qd());
            jSONObject.put("live_interaction_type", w());
            jSONObject.put("ec_schema", t_());
        } catch (JSONException unused3) {
        }
        try {
            jSONObject.put("ecom_live_params", jl());
        } catch (JSONException unused4) {
        }
        r rVarBj = bj();
        if (rVarBj != null) {
            rVarBj.hp(jSONObject);
        }
        ns nsVarZy = zy();
        if (nsVarZy != null) {
            nsVarZy.hp(jSONObject);
        }
        xh xhVarSz = sz();
        if (xhVarSz != null) {
            try {
                JSONObject jSONObject15 = new JSONObject();
                jSONObject15.put("reward_live_deep_link_user_id", xhVarSz.hp());
                jSONObject15.put("reward_live_deep_link_request_id", xhVarSz.a());
                jSONObject15.put("reward_live_deep_link_room_id", xhVarSz.l());
                jSONObject15.put("reward_live_last_time", xhVarSz.w());
                jSONObject15.put("reawrd_live_short_touch_params", xhVarSz.jx());
                jSONObject15.put("reawrd_live_extra_pangle_scheme_params", xhVarSz.j());
                jSONObject.put("reward_live_deep_link_params", jSONObject15);
            } catch (Exception unused5) {
            }
        }
        v vVarKe = ke();
        if (vVarKe != null) {
            try {
                JSONObject jSONObject16 = new JSONObject();
                jSONObject16.put("style_type", vVarKe.hp());
                jSONObject16.put("image_url", vVarKe.l());
                jSONObject16.put("position", vVarKe.jx());
                jSONObject16.put("image_height", vVarKe.j());
                jSONObject16.put("image_scale_rate", vVarKe.a());
                jSONObject16.put("image_gif_url", vVarKe.w());
                jSONObject16.put("image_gif_aspect_ratio", vVarKe.eb());
                jSONObject.put("dynamic_join_coupon_style", jSONObject16);
            } catch (Exception unused6) {
            }
        }
        k kVarEc = ec();
        if (kVarEc != null) {
            try {
                jSONObject.put("coupon", kVarEc.hp());
            } catch (JSONException unused7) {
            }
        }
        as asVarGu = gu();
        if (asVarGu != null) {
            try {
                jSONObject.put("live_info", asVarGu.hp());
            } catch (JSONException unused8) {
            }
        }
        rv rvVarC_ = C_();
        if (rvVarC_ != null) {
            try {
                jSONObject.put("saas_info", rvVarC_.hp());
            } catch (JSONException unused9) {
            }
        }
        qu quVarD_ = D_();
        if (quVarD_ != null) {
            try {
                jSONObject.put("saas_on_click_material", quVarD_.hp());
            } catch (JSONException unused10) {
            }
        }
        try {
            jSONObject.put("live_sdk_status_while_first_click", this.vd);
        } catch (JSONException unused11) {
        }
        Object objVg = vg();
        if (objVg != null) {
            try {
                jSONObject.put(com.umeng.analytics.pro.g.f49324K, objVg);
            } catch (Exception unused12) {
            }
        }
        yj yjVarUf = uf();
        if (yjVarUf != null) {
            try {
                JSONObject jSONObject17 = new JSONObject();
                jSONObject17.put("video_adapter_type", yjVarUf.hp());
                jSONObject17.put("video_mute_type", yjVarUf.l());
                jSONObject.put("video_config", jSONObject17);
            } catch (Exception unused13) {
            }
        }
        try {
            jSONObject.put("not_valid_download_url", B_());
        } catch (JSONException unused14) {
        }
        try {
            jSONObject.put("dynamic_configs", u());
            String strJq = jq();
            if (!TextUtils.isEmpty(strJq)) {
                jSONObject.put("gnd_prefetch_cache_key", strJq);
                jSONObject.put("gnd_prefetch_timing", wc());
            }
        } catch (JSONException unused15) {
        }
        try {
            jSONObject.put("twist_config", ki());
            jSONObject.put("shake_interact_conf", wj());
            jSONObject.put("twist_interact_conf", sf());
        } catch (JSONException unused16) {
        }
        try {
            hq hqVar = this.ks;
            if (hqVar != null) {
                hqVar.l(jSONObject);
            }
        } catch (Throwable unused17) {
        }
        try {
            lv lvVar = this.ju;
            if (lvVar != null) {
                lvVar.l(jSONObject);
            }
        } catch (Throwable unused18) {
        }
        vv vvVarMp = mp();
        if (vvVarMp != null) {
            try {
                JSONObject jSONObject18 = new JSONObject();
                jSONObject18.put("lottie_tmp_url", vvVarMp.jx());
                JSONArray jSONArray4 = new JSONArray();
                List<dy> listHp = vvVarMp.hp();
                if (listHp != null) {
                    for (dy dyVar2 : listHp) {
                        if (dyVar2 != null) {
                            JSONObject jSONObject19 = new JSONObject();
                            str3 = str;
                            jSONObject19.put(str3, dyVar2.l());
                            str4 = str2;
                            jSONObject19.put(str4, dyVar2.jx());
                            jSONObject19.put("url", dyVar2.hp());
                            jSONArray4.put(jSONObject19);
                        } else {
                            str3 = str;
                            str4 = str2;
                        }
                        str = str3;
                        str2 = str4;
                    }
                }
                JSONArray jSONArray5 = new JSONArray();
                List<com.byazt.tw.j> listL = vvVarMp.l();
                if (listL != null) {
                    for (com.byazt.tw.j jVar : listL) {
                        if (jVar != null) {
                            JSONObject jSONObject20 = new JSONObject();
                            jSONObject20.put("file_hash", jVar.getFileHash());
                            jSONObject20.put(bv.f48925z, jVar.getResolution());
                            jSONObject20.put("video_duration", jVar.getVideo_duration());
                            jSONObject20.put(s.a.f3400b, jVar.getVideo_url());
                            jSONArray5.put(jSONObject20);
                        }
                    }
                }
                JSONObject jSONObject21 = new JSONObject();
                jSONObject21.put("bg_anim_img_android", jSONArray4);
                jSONObject21.put("bg_videos", jSONArray5);
                JSONObject jSONObject22 = new JSONObject();
                jSONObject22.put("sdk_template_info", jSONObject18);
                jSONObject22.put("aigc", jSONObject21);
                jSONObject.put("sdk_derive_info", jSONObject22);
            } catch (JSONException unused19) {
            }
        }
        try {
            jSONObject.put("disable_video_join", dy());
            jSONObject.put("disable_top_bar", ky());
            jSONObject.put("disable_rtn_button", ms());
            jSONObject.put("disable_safe_area", ud());
            jSONObject.put("disable_slide_return", r());
        } catch (Throwable unused20) {
        }
        try {
            jSONObject.put("_ad_index", rf());
        } catch (JSONException unused21) {
        }
        try {
            jSONObject.put("is_height_resize", kf());
        } catch (JSONException unused22) {
        }
        return jSONObject;
    }

    public boolean in() {
        return (TextUtils.isEmpty(com.byazt.zn.ky.k(this)) || TextUtils.isEmpty(this.f27387y) || com.byazt.zn.ky.k(this).contains(this.f27387y)) ? false : true;
    }

    public void j(int i2) {
        this.xq = i2;
    }

    public int ja() {
        return this.lp;
    }

    public int jb() {
        return this.zb;
    }

    public boolean jc() {
        if (ju() != null) {
            return ju().a();
        }
        return false;
    }

    public int jd() {
        return this.cu;
    }

    public void jl(String str) {
        this.gh = str;
    }

    public String jm() {
        return hashCode() + ns() + qu();
    }

    public String jq() {
        return this.ut;
    }

    public com.byazt.bl.l ju() {
        com.byazt.jde.l.hp();
        return this.f27371j;
    }

    public int jv() {
        return this.ux;
    }

    public String jw() {
        wt wtVar = this.ku;
        return wtVar == null ? "#008DEA" : wtVar.e();
    }

    public void jx(int i2) {
        this.ij = i2;
    }

    public void k(int i2) {
        this.ed = i2;
    }

    public v ke() {
        return this.bf;
    }

    public int kf() {
        return this.uc;
    }

    public String kg() {
        return this.hc;
    }

    public JSONObject ki() {
        return this.mk;
    }

    public int kq() {
        if (this.f27385w == 4 && TextUtils.isEmpty(this.yj)) {
            return this.fe;
        }
        return 0;
    }

    public String ks() {
        return this.f27373l;
    }

    public int ku() {
        return this.rp;
    }

    public int ky() {
        return this.aj;
    }

    public nu l(String str) {
        List<nu> list = this.sv;
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < this.sv.size(); i2++) {
                nu nuVar = this.sv.get(i2);
                if (nuVar != null) {
                    String strHp = nuVar.hp();
                    if (!TextUtils.isEmpty(strHp) && strHp.equals(str)) {
                        return nuVar;
                    }
                }
            }
        }
        return null;
    }

    public gd la() {
        return this.be;
    }

    public String ld() {
        wt wtVar = this.ku;
        return wtVar == null ? "" : wtVar.l();
    }

    public String ll() {
        return this.f27376n;
    }

    public nd lp() {
        return this.xn;
    }

    public String lr() {
        return this.f27387y;
    }

    public boolean lu() {
        return this.rz == 1;
    }

    public boolean lv() {
        return dy() == 1;
    }

    public boolean ly() {
        wt wtVar = this.ku;
        return wtVar == null || wtVar.jx();
    }

    public int lz() {
        return this.f27380r;
    }

    public boolean m() {
        return this.gs;
    }

    public df me() {
        return this.ky;
    }

    public JSONObject mk() {
        return this.bu;
    }

    public y mm() {
        return this.f27368g;
    }

    public int mn() {
        return this.fu;
    }

    public vv mp() {
        return this.qb;
    }

    public int ms() {
        return this.qq;
    }

    public String mt() {
        return this.vi;
    }

    public boolean mz() {
        return this.gb;
    }

    public void n(int i2) {
        this.gd = i2;
    }

    public int nc() {
        return this.f27386x;
    }

    public String nd() {
        return this.pn;
    }

    public int nf() {
        return this.f27362a;
    }

    public wt.l nl() {
        wt wtVar = this.ku;
        if (wtVar != null) {
            return wtVar.zy();
        }
        return null;
    }

    public String nn() {
        if (!TextUtils.isEmpty(this.gy)) {
            this.gy = this.gy.trim();
        }
        return this.gy;
    }

    public dy nq() {
        return this.f27381s;
    }

    public String nr() {
        return this.f27369h;
    }

    public void ns(int i2) {
        this.nr = i2;
    }

    public int nu() {
        return this.qe;
    }

    public boolean o() {
        return this.rl == 3;
    }

    public int og() {
        return this.f27366e;
    }

    public zx oh() {
        return this.qu;
    }

    public int on() {
        rk rkVar = this.qy;
        if (rkVar == null) {
            return 90;
        }
        return rkVar.l();
    }

    public List<String> or() {
        return this.xs;
    }

    public ec ov() {
        return this.ba;
    }

    public boolean p() {
        return this.vq;
    }

    public com.byazt.nqo.hp pc() {
        return this.ub;
    }

    public int pf() {
        wt wtVar = this.ku;
        if (wtVar == null) {
            return 56;
        }
        return wtVar.eb();
    }

    public int pg() {
        return this.hy;
    }

    public int pi() {
        return this.tw;
    }

    public JSONObject pj() {
        return this.ri;
    }

    public int pk() {
        return ec.e(this);
    }

    public long pn() {
        return this.lv;
    }

    public int pp() {
        return this.rz;
    }

    public boolean pu() {
        return this.rm == 1;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.q
    public JSONObject q_() {
        if (this.ud == null) {
            try {
                if (!TextUtils.isEmpty(this.hq)) {
                    this.ud = new JSONObject(this.hq);
                }
            } catch (JSONException unused) {
            }
        }
        return this.ud;
    }

    public int qa() {
        return this.fi;
    }

    public boolean qb() {
        if (com.byazt.we.hp.hp(this)) {
            return true;
        }
        if (this.f27372k.isEmpty()) {
            return false;
        }
        if (this.f27365d == 4 && this.f27372k.size() < 3) {
            return false;
        }
        Iterator<dy> it = this.f27372k.iterator();
        while (it.hasNext()) {
            if (!it.next().w()) {
                return false;
            }
        }
        return true;
    }

    public int qd() {
        return this.mt;
    }

    public int qe() {
        return this.pf;
    }

    public int qh() {
        return this.gv;
    }

    public String qj() {
        return this.f27384v;
    }

    public String qk() {
        return this.wv;
    }

    public long qn() {
        return this.f27374m;
    }

    public float qo() {
        if (this.ly <= 0.0f) {
            this.ly = 100.0f;
        }
        return (this.ly * 1000.0f) / 1000.0f;
    }

    public boolean qq() {
        int iVv = com.byazt.zn.ky.vv(this);
        return iVv == 3 || iVv == 6;
    }

    public long qu() {
        return this.qk;
    }

    public int qy() {
        rk rkVar = this.qy;
        if (rkVar == null) {
            return 90;
        }
        return rkVar.jx();
    }

    public int r() {
        return this.rm;
    }

    public int rf() {
        return this.zx;
    }

    public long ri() {
        return this.mp;
    }

    public boolean rk() {
        return this.ad;
    }

    public di rl() {
        return this.lr;
    }

    public int rm() {
        return this.nl;
    }

    public gu ro() {
        return this.ll;
    }

    public Map<String, Object> rp() {
        return this.su;
    }

    public int rt() {
        return this.tn;
    }

    public String ru() {
        return this.qa;
    }

    public String rv() {
        return this.pg;
    }

    public int rw() {
        return this.df;
    }

    public String rz() {
        return this.rf;
    }

    @Override // com.byazt.yrp.gu
    public boolean s_() {
        return this.rt;
    }

    public JSONObject sf() {
        return this.jv;
    }

    public wt sh() {
        return this.ku;
    }

    public String sq() {
        return this.hd;
    }

    public long su() {
        return this.xv;
    }

    public int sv() {
        return this.ti;
    }

    public void sz(int i2) {
        this.jd = i2;
    }

    public int t() {
        return this.cs;
    }

    @Override // com.byazt.yrp.q
    public String t_() {
        return this.f27378p;
    }

    public int ti() {
        wt wtVar = this.ku;
        if (wtVar == null) {
            return 0;
        }
        return wtVar.q();
    }

    public int tn() {
        wt wtVar = this.ku;
        if (wtVar == null) {
            return 236;
        }
        return wtVar.w();
    }

    public JSONObject tq() {
        return this.jl;
    }

    public int tr() {
        wt wtVar = this.ku;
        if (wtVar == null) {
            return 82;
        }
        return wtVar.a();
    }

    public long tw() {
        return this.f27370i;
    }

    public int ty() {
        gd gdVar = this.be;
        if (gdVar == null) {
            return 16;
        }
        return gdVar.l();
    }

    public void u(int i2) {
        this.tw = i2;
    }

    @Override // com.byazt.yrp.eb
    public sz u_() {
        return this.ea;
    }

    public int ub() {
        return this.vg;
    }

    public int uc() {
        JSONObject jSONObject = this.jl;
        if (jSONObject != null) {
            return jSONObject.optInt("easy_playable_skip_duration", 0);
        }
        return 0;
    }

    public boolean ud() {
        return this.zp && xh();
    }

    public yj uf() {
        return this.pp;
    }

    public boolean uj() {
        return this.as;
    }

    public long ut() {
        return this.f27367f;
    }

    public lv ux() {
        return this.ju;
    }

    public void v(int i2) {
        this.pi = i2;
    }

    @Override // com.byazt.yrp.s
    public String v_() {
        return this.vv;
    }

    public float vd() {
        float f2 = this.zv;
        if (f2 < 0.07f || f2 > 0.175f) {
            this.zv = 0.07f;
        }
        return this.zv;
    }

    public JSONObject vg() {
        return this.ja;
    }

    public List<dy> vi() {
        return this.f27372k;
    }

    public ms vk() {
        return this.pc;
    }

    public boolean vq() {
        return this.er;
    }

    public rz vr() {
        return this.jw;
    }

    public int vt() {
        wt wtVar = this.ku;
        if (wtVar == null) {
            return 0;
        }
        return wtVar.s();
    }

    public void vv(int i2) {
        this.qh = i2;
    }

    public int vx() {
        return this.ov;
    }

    public void w(int i2) {
        this.jc = i2;
    }

    @Override // com.byazt.yrp.e, com.byazt.yrp.q, com.byazt.yrp.s
    public String w_() {
        return this.hq;
    }

    public int wc() {
        return this.qn;
    }

    public int wf() {
        if (this.ld != 2) {
            this.ld = 1;
        }
        return this.ld;
    }

    public hq wg() {
        return this.ks;
    }

    public String wi() {
        return this.la;
    }

    public JSONObject wj() {
        return this.rw;
    }

    public String wt() {
        return this.f27388z;
    }

    public int wv() {
        return this.nn;
    }

    public int x() {
        return this.pu;
    }

    @Override // com.byazt.yrp.eb
    public boolean x_() {
        return rw() == 1;
    }

    public long xe() {
        return this.dy;
    }

    public boolean xh() {
        return ky() == 1;
    }

    public JSONObject xj() {
        return this.pk;
    }

    public m xm() {
        if (this.vr == null) {
            this.vr = new m(this);
        }
        return this.vr;
    }

    public an xn() {
        return this.eb;
    }

    public String xq() {
        return TextUtils.isEmpty(this.jx) ? com.byazt.el.hp.jx() : this.jx;
    }

    public wv xr() {
        return this.ei;
    }

    public void xs(int i2) {
        this.rp = i2;
    }

    public int xv() {
        return this.qh;
    }

    public String y() {
        return this.uj;
    }

    @Override // com.byazt.yrp.q
    public boolean y_() {
        return mm() != null;
    }

    public String yj() {
        return this.gh;
    }

    public boolean yr() {
        return this.mn;
    }

    public n yt() {
        return this.di;
    }

    public int yu() {
        return this.tr;
    }

    public int z() {
        if (qo() != 100.0f || hd.hp(this) == 2) {
            return 0;
        }
        return this.nr;
    }

    @Override // com.byazt.yrp.gu
    public boolean z_() {
        y yVar = this.f27368g;
        return yVar != null && yVar.hp();
    }

    public int zb() {
        return this.pi;
    }

    public boolean zd() {
        return mn() != 1;
    }

    public float zp() {
        float f2 = this.on;
        if (f2 < 0.0f || f2 > 50.0f) {
            this.on = 0.0f;
        }
        return this.on;
    }

    public int zv() {
        rk rkVar = this.qy;
        if (rkVar == null) {
            return 0;
        }
        return rkVar.hp();
    }

    public String zx() {
        return this.hx;
    }

    public void zy(String str) {
        this.db = str;
    }

    public void as(int i2) {
        this.lp = i2;
    }

    public void b(String str) {
        this.hq = str;
    }

    public void cx(String str) {
        this.ns = str;
    }

    public void d(int i2) {
        this.zb = i2;
    }

    public void dy(int i2) {
        if (i2 != 1) {
            i2 = 0;
        }
        this.bv = i2;
    }

    public void e(String str) {
        this.f27388z = str;
    }

    public void ea(int i2) {
        this.tn = i2;
    }

    public void eb(int i2) {
        this.rm = i2;
    }

    public void ec(String str) {
        this.f27384v = str;
    }

    public void f(int i2) {
        this.zx = i2;
    }

    public void fi(int i2) {
        if (i2 <= 0 || i2 > 9) {
            this.tr = 3;
        } else {
            this.tr = i2;
        }
    }

    public void gd(int i2) {
        this.vd = i2;
    }

    public void gu(String str) {
        this.qa = str;
    }

    public void hd(int i2) {
        this.fu = i2;
    }

    public void hp(String str) {
        this.ds = str;
    }

    public void hq(int i2) {
        this.ty = i2;
    }

    public void j(boolean z2) {
        this.zd = z2;
    }

    public void jl(int i2) {
        this.cu = i2;
    }

    public void jx(String str) {
        this.hc = str;
    }

    public void k(String str) {
        this.f27378p = str;
    }

    public void kg(int i2) {
        this.f27364c = Math.max(0, i2);
    }

    public void ky(int i2) {
        this.f27385w = i2;
    }

    public void lv(int i2) {
        this.xh = i2;
    }

    public void m(int i2) {
        this.f27380r = i2;
    }

    public void mp(int i2) {
        this.f27365d = i2;
    }

    public void ms(int i2) {
        this.f27366e = i2;
    }

    public void n(String str) {
        this.sz = str;
    }

    public void nd(int i2) {
        this.ux = i2;
    }

    public void nr(int i2) {
        this.fe = i2;
    }

    public void ns(String str) {
        this.f27376n = str;
    }

    public void nu(int i2) {
        this.qj = i2;
    }

    public void o(int i2) {
        this.f27386x = i2;
    }

    public void pc(int i2) {
        this.cd = i2;
    }

    public void pu(int i2) {
        this.rz = i2;
    }

    public void q(int i2) {
        this.qq = i2;
    }

    public void qu(int i2) {
        int i3 = 500;
        if (i2 == Integer.MIN_VALUE) {
            i2 = com.byazt.zn.ky.jl(this) == 3 ? 500 : 1000;
        }
        if (i2 >= 500) {
            i3 = 3000;
            if (i2 <= 3000) {
                i3 = i2;
            }
        }
        this.vg = i3;
    }

    public void r(int i2) {
        this.yr = i2;
    }

    public void rk(int i2) {
        this.qn = i2;
    }

    public void ru(int i2) {
        this.el = i2;
    }

    public void rv(int i2) {
        this.pf = i2;
    }

    public void rz(int i2) {
        this.df = i2;
    }

    public void s(int i2) {
        this.aj = i2;
    }

    public void su(int i2) {
        if (i2 < 0 || i2 > 100) {
            return;
        }
        this.ti = i2;
    }

    public void sz(String str) {
        this.vv = str;
    }

    public void u(String str) {
        this.wv = str;
    }

    public void ud(int i2) {
        this.ci = i2;
    }

    public void v(String str) {
        this.vi = str;
    }

    public void vq(int i2) {
        if (i2 < 0 || i2 > 180) {
            this.ae = 50;
        } else {
            this.ae = i2;
        }
    }

    @Override // com.byazt.yrp.eb
    public a vv() {
        return this.fv;
    }

    public void w(boolean z2) {
        this.mn = z2;
    }

    public void wt(int i2) {
        this.ct = i2;
    }

    public void wv(int i2) {
        this.ov = i2;
    }

    public void xh(int i2) {
        this.f27362a = i2;
    }

    public void xs(String str) {
        this.f27379q = str;
    }

    public void y(int i2) {
        if (i2 < 12) {
            i2 = 12;
        }
        if (i2 > 20) {
            i2 = 20;
        }
        this.nl = i2;
    }

    public void yj(int i2) {
        this.uc = i2;
    }

    public void yr(int i2) {
        int i3 = this.kg;
        if (i3 == 100 || i3 == 102) {
            this.kg = i2;
        }
    }

    public void zx(int i2) {
        this.ld = i2;
    }

    public void zy(int i2) {
        this.pu = i2;
    }

    public void a(String str) {
        this.hx = str;
    }

    public void an(int i2) {
        this.mt = i2;
    }

    public void as(String str) {
        this.la = str;
    }

    @Override // com.byazt.yrp.eb
    public String b() {
        return this.yj;
    }

    @Override // com.byazt.yrp.eb
    public String cx() {
        return this.cx;
    }

    public void d(String str) {
        this.hd = str;
    }

    public void dy(String str) {
        this.jb = str;
    }

    public void e(boolean z2) {
        this.as = z2;
    }

    public void eb(String str) {
        this.uj = str;
    }

    @Override // com.byazt.yrp.q
    public k ec() {
        return this.eq;
    }

    public int gu(boolean z2) {
        if (this.as || z2) {
            return wu();
        }
        return 102;
    }

    public void hp(nu nuVar) {
        if (nuVar == null) {
            return;
        }
        if (this.sv == null) {
            this.sv = new ArrayList();
        }
        this.sv.add(nuVar);
    }

    public void hq(String str) {
        this.yj = str;
    }

    public void j(String str) {
        this.rf = str;
    }

    public void jl(boolean z2) {
        this.vq = z2;
    }

    public void jx(boolean z2) {
        this.gs = z2;
    }

    @Override // com.byazt.yrp.gu, com.byazt.yrp.q
    public xs k() {
        return this.f27377o;
    }

    public void kg(String str) {
        this.ut = str;
    }

    public void ky(String str) {
        this.xe = str;
    }

    public void lv(String str) {
        this.or = str;
    }

    public void ms(String str) {
        this.me = str;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.q, com.byazt.yrp.s
    public String n() {
        String strOptString;
        JSONObject jSONObject = this.f27382t;
        if (jSONObject != null) {
            strOptString = jSONObject.optString("session_id");
        } else {
            strOptString = "";
        }
        return TextUtils.isEmpty(strOptString) ? jm() : strOptString;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s
    public String ns() {
        return this.nu;
    }

    public void nu(String str) {
        this.vx = str;
    }

    public void o(String str) {
        this.cx = str;
    }

    public void pu(String str) {
        this.jx = str;
    }

    public void q(String str) {
        this.f27369h = str;
    }

    public void r(String str) {
        this.gy = str;
    }

    public void s(String str) {
        this.pg = str;
    }

    @Override // com.byazt.yrp.gu
    public xh sz() {
        return this.vt;
    }

    @Override // com.byazt.yrp.q
    public String u() {
        return this.xe;
    }

    public void ud(String str) {
        this.f27373l = str;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.gu
    public w v() {
        return this.f27363b;
    }

    public void vv(String str) {
        this.gu = str;
    }

    public void w(String str) {
        this.pn = str;
    }

    public void wv(String str) {
        this.f27387y = str;
    }

    public void xh(String str) {
        this.sh = str;
    }

    @Override // com.byazt.yrp.gu
    public boolean xs() {
        return jv() == 1;
    }

    public void zy(boolean z2) {
        this.ai = z2;
    }

    public static boolean j(mp mpVar) {
        try {
            if (mpVar.el() != null) {
                if (mpVar.el().optInt("parent_type") == 1) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean jx(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        return mpVar.hy() == 5 || mpVar.hy() == 15 || mpVar.hy() == 166;
    }

    public void a(boolean z2) {
        this.er = z2;
    }

    public void e(long j2) {
        this.f27367f = j2;
    }

    public void eb(boolean z2) {
        this.ad = z2;
    }

    @Override // com.byazt.yrp.q
    public String jl() {
        return this.me;
    }

    public void k(boolean z2) {
        this.gb = z2;
    }

    @Override // com.byazt.yrp.s
    public int q() {
        return this.f27385w;
    }

    public void s(boolean z2) {
        this.nc = z2;
    }

    public void u(boolean z2) {
        this.yt = z2;
    }

    public void v(boolean z2) {
        this.an = z2;
    }

    public void w(JSONObject jSONObject) {
        this.zy = jSONObject;
    }

    @Override // com.byazt.yrp.gu, com.byazt.yrp.q
    public ns zy() {
        return this.tq;
    }

    public void a(long j2) {
        this.lv = j2;
    }

    @Override // com.byazt.yrp.q
    public String e() {
        return this.sh;
    }

    public void eb(long j2) {
        this.nd = j2;
    }

    public void gu(long j2) {
        if (j2 != 0) {
            this.id = j2;
        } else {
            this.id = System.currentTimeMillis() / 1000;
        }
    }

    public void j(JSONObject jSONObject) {
        this.jl = jSONObject;
    }

    public void jl(JSONObject jSONObject) {
        this.vr = new m(this, jSONObject);
    }

    public void q(boolean z2) {
        this.f27375ms = z2;
    }

    @Override // com.byazt.yrp.e, com.byazt.yrp.s
    public String s() {
        return this.f27379q;
    }

    public void w(long j2) {
        this.dy = j2;
    }

    public void zy(JSONObject jSONObject) {
        this.pk = jSONObject;
    }

    public void a(JSONObject jSONObject) {
        this.f27382t = jSONObject;
    }

    public void e(JSONObject jSONObject) {
        this.rw = jSONObject;
    }

    public void eb(JSONObject jSONObject) {
        this.bu = jSONObject;
    }

    public void hp(boolean z2) {
        this.rt = z2;
    }

    public void j(long j2) {
        this.ec = j2;
    }

    public void l(int i2) {
        this.nn = i2;
    }

    public void q(long j2) {
        this.f27374m = j2;
    }

    public void s(long j2) {
        this.mp = j2;
    }

    @Override // com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s
    public int w() {
        return this.cd;
    }

    public static void eb(mp mpVar) {
        if (mpVar == null) {
            return;
        }
        mpVar.hb = System.currentTimeMillis();
    }

    public static boolean w(mp mpVar) {
        return mpVar != null && mpVar.el == 1;
    }

    @Override // com.byazt.yrp.gu
    public int a() {
        if (u_() != null) {
            return u_().j();
        }
        return -1;
    }

    @Override // com.byazt.yrp.q
    public as gu() {
        return this.dh;
    }

    public void hp(int i2) {
        this.rl = i2;
    }

    @Override // com.byazt.yrp.eb, com.byazt.yrp.gu, com.byazt.yrp.q, com.byazt.yrp.s
    public String j() {
        return this.ns;
    }

    public void jx(long j2) {
        this.f27370i = j2;
    }

    public void l(boolean z2) {
        this.zp = z2;
    }

    public void q(JSONObject jSONObject) {
        this.mk = jSONObject;
    }

    public void s(JSONObject jSONObject) {
        this.ri = jSONObject;
    }

    public static boolean a(mp mpVar) {
        if (mpVar == null || mpVar.hb <= 0 || mpVar.ct <= 0) {
            return false;
        }
        boolean z2 = System.currentTimeMillis() - mpVar.hb < ((long) mpVar.ct);
        if (z2) {
            mpVar.wf++;
            com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.xci.mp.1
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("count", mp.this.wf);
                    jSONObject.put("click_freq", mp.this.ct);
                    return com.byazt.jlb.l.l().hp("click_intercept").s(mp.this.w_()).l(jSONObject.toString());
                }
            }, "click_intercept");
        }
        return z2;
    }

    public void gu(JSONObject jSONObject) {
        this.jv = jSONObject;
    }

    public void hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.qb = new vv();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("sdk_template_info");
            if (jSONObjectOptJSONObject != null) {
                this.qb.hp(jSONObjectOptJSONObject.optString("lottie_tmp_url"));
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("aigc");
            if (jSONObjectOptJSONObject2 != null) {
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("bg_anim_img_android");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList = new ArrayList();
                    this.qb.hp(arrayList);
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i2);
                        if (jSONObjectOptJSONObject3 != null) {
                            dy dyVar = new dy();
                            dyVar.hp(jSONObjectOptJSONObject3.optInt("width"));
                            dyVar.l(jSONObjectOptJSONObject3.optInt("height"));
                            dyVar.hp(jSONObjectOptJSONObject3.optString("url"));
                            arrayList.add(dyVar);
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject2.optJSONArray("bg_videos");
                if (jSONArrayOptJSONArray2 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    this.qb.l(arrayList2);
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                        JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray2.optJSONObject(i3);
                        if (jSONObjectOptJSONObject4 != null) {
                            com.byazt.tw.j jVar = new com.byazt.tw.j();
                            jVar.setFileHash(jSONObjectOptJSONObject4.optString("file_hash"));
                            jVar.setResolution(jSONObjectOptJSONObject4.optString(bv.f48925z));
                            jVar.setVideo_duration(jSONObjectOptJSONObject4.optDouble("video_duration"));
                            jVar.setVideo_url(jSONObjectOptJSONObject4.optString(s.a.f3400b));
                            arrayList2.add(jVar);
                        }
                    }
                }
            }
        }
    }

    public void jx(JSONObject jSONObject) {
        this.ja = jSONObject;
    }

    public void l(JSONObject jSONObject) {
        this.sq = jSONObject;
    }

    public static boolean l(mp mpVar) {
        return mpVar != null && mpVar.zb() == 1;
    }

    @Override // com.byazt.yrp.s
    public String jx() {
        return this.gu;
    }

    public void jx(float f2) {
        this.on = f2;
    }

    public void l(long j2) {
        this.qk = j2;
    }

    public void l(double d2) {
        if (d2 != 2.0d && d2 != 1.0d) {
            this.cs = 2;
        } else {
            this.cs = (int) d2;
        }
    }

    public void di(int i2) {
        this.fi = i2;
    }

    @Override // com.byazt.yrp.s
    public String l() {
        if (nq() != null) {
            return nq().hp();
        }
        return "";
    }

    public void di(String str) {
        this.nu = str;
    }

    public void l(dy dyVar) {
        this.f27372k.add(dyVar);
    }

    public void l(float f2) {
        this.zv = f2;
    }

    public static boolean hp(mp mpVar) {
        return mpVar != null && mpVar.bu() == 1;
    }

    public void hp(long j2) {
        this.xv = j2;
    }

    public void hp(com.byazt.nqo.hp hpVar) {
        this.ub = hpVar;
    }

    public void hp(com.byazt.qb.hp hpVar) {
        this.qd = hpVar;
    }

    public void hp(double d2) {
        if (d2 != 2.0d && d2 != 1.0d) {
            this.gv = 2;
        } else {
            this.gv = (int) d2;
        }
    }

    public void hp(ea eaVar) {
        this.rv = eaVar;
    }

    public void hp(lv lvVar) {
        this.ju = lvVar;
    }

    public void hp(nd ndVar) {
        this.xn = ndVar;
    }

    public void hp(hd hdVar) {
        this.nf = hdVar;
    }

    public void hp(ec ecVar) {
        this.ba = ecVar;
    }

    public void hp(nr nrVar) {
        this.hl = nrVar;
    }

    public void hp(com.byazt.jt.l lVar) {
        if (lVar == null) {
            com.byazt.jt.l lVar2 = this.rk;
            if (lVar2 != null) {
                this.rk = new jx(lVar2);
                return;
            }
            return;
        }
        this.rk = lVar;
    }

    public void hp(sz szVar) {
        this.ea = szVar;
    }

    public void hp(wt wtVar) {
        this.ku = wtVar;
    }

    public void hp(a aVar) {
        this.fv = aVar;
    }

    public void hp(df dfVar) {
        this.ky = dfVar;
    }

    public void hp(an anVar) {
        this.eb = anVar;
    }

    public void hp(dy dyVar) {
        this.f27381s = dyVar;
    }

    public void hp(w wVar) {
        this.f27363b = wVar;
    }

    public void hp(n nVar) {
        this.di = nVar;
    }

    public void hp(xs xsVar) {
        this.f27377o = xsVar;
    }

    public void hp(Map<String, Object> map) {
        this.su = map;
    }

    public void hp(com.byazt.bl.l lVar) {
        this.f27371j = lVar;
    }

    public void hp(rz rzVar) {
        this.jw = rzVar;
    }

    public void hp(pu puVar) {
        this.nq = puVar;
    }

    public void hp(float f2) {
        this.ly = f2;
    }

    public void hp(di diVar) {
        this.lr = diVar;
        if (diVar != null) {
            String strL = diVar.l();
            String strJx = this.lr.jx();
            if (TextUtils.isEmpty(strL)) {
                return;
            }
            com.byazt.la.e.hp(strL, strJx, (com.byazt.la.jx) null);
        }
    }

    public void hp(o oVar) {
        this.in = oVar;
    }

    public void hp(y yVar) {
        this.f27368g = yVar;
    }

    public void hp(xh xhVar) {
        this.vt = xhVar;
    }

    public void hp(ux uxVar) {
        this.hp = uxVar;
    }

    public void hp(gd gdVar) {
        this.be = gdVar;
    }

    public void hp(rk rkVar) {
        this.qy = rkVar;
    }

    public void hp(zx zxVar) {
        this.qu = zxVar;
    }

    public void hp(k kVar) {
        this.eq = kVar;
    }

    public void hp(as asVar) {
        this.dh = asVar;
    }

    public void hp(rv rvVar) {
        this.lu = rvVar;
    }

    public void hp(v vVar) {
        this.bf = vVar;
    }

    public void hp(yj yjVar) {
        this.pp = yjVar;
    }

    public void hp(gu guVar) {
        this.ll = guVar;
    }

    public void hp(ms msVar) {
        this.pc = msVar;
    }

    public void hp(com.byazt.tw.j jVar) {
        if (this.ky == null) {
            this.ky = new df();
        }
        this.ky.hp(jVar);
    }

    public void hp(r rVar) {
        this.og = rVar;
    }

    public void hp(ns nsVar) {
        this.tq = nsVar;
    }

    public void hp(hq hqVar) {
        this.ks = hqVar;
    }

    public void hp(d dVar) {
        this.qo = dVar;
    }

    public void hp(yr yrVar) {
        this.bx = yrVar;
    }

    public void hp(wv wvVar) {
        this.ei = wvVar;
    }

    public void hp(qu quVar) {
        this.mm = quVar;
    }
}

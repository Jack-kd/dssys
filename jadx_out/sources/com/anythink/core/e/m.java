package com.anythink.core.e;

import android.location.Location;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATRewardInfo;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.ATUserDeviceInfo;
import com.anythink.core.bridge.a;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.aj;
import com.anythink.core.common.h.aq;
import com.anythink.core.common.h.ba;
import com.anythink.core.common.h.bc;
import com.anythink.core.common.h.bm;
import com.anythink.core.common.h.bv;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.byazt.rx.BaseConstants;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class m extends e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8848a = "Placement";

    /* renamed from: b, reason: collision with root package name */
    public static final int f8849b = 0;

    /* renamed from: c, reason: collision with root package name */
    public static final int f8850c = 1;

    /* renamed from: e, reason: collision with root package name */
    public static final int f8851e = 2;

    /* renamed from: f, reason: collision with root package name */
    public static final int f8852f = 1;

    /* renamed from: g, reason: collision with root package name */
    public static final int f8853g = 2;

    /* renamed from: h, reason: collision with root package name */
    public static final int f8854h = 3;

    /* renamed from: A, reason: collision with root package name */
    private long f8855A;

    /* renamed from: B, reason: collision with root package name */
    private long f8856B;

    /* renamed from: C, reason: collision with root package name */
    private long f8857C;

    /* renamed from: D, reason: collision with root package name */
    private int f8858D;

    /* renamed from: E, reason: collision with root package name */
    private String f8859E;

    /* renamed from: F, reason: collision with root package name */
    private bv f8860F;

    /* renamed from: G, reason: collision with root package name */
    private int f8861G;

    /* renamed from: H, reason: collision with root package name */
    private String f8862H;

    /* renamed from: I, reason: collision with root package name */
    private int f8863I;

    /* renamed from: J, reason: collision with root package name */
    private int f8864J;

    /* renamed from: K, reason: collision with root package name */
    private String f8865K;

    /* renamed from: L, reason: collision with root package name */
    private Map<String, Object> f8866L;

    /* renamed from: M, reason: collision with root package name */
    private Map<String, ATRewardInfo> f8867M;

    /* renamed from: N, reason: collision with root package name */
    private ATRewardInfo f8868N;

    /* renamed from: O, reason: collision with root package name */
    private String f8869O;

    /* renamed from: P, reason: collision with root package name */
    private String f8870P;

    /* renamed from: Q, reason: collision with root package name */
    private long f8871Q;

    /* renamed from: R, reason: collision with root package name */
    private String f8872R;

    /* renamed from: S, reason: collision with root package name */
    private long f8873S;

    /* renamed from: T, reason: collision with root package name */
    private int f8874T;

    /* renamed from: U, reason: collision with root package name */
    private long f8875U;

    /* renamed from: V, reason: collision with root package name */
    private int f8876V;

    /* renamed from: W, reason: collision with root package name */
    private List<ba> f8877W;

    /* renamed from: X, reason: collision with root package name */
    private bc f8878X;

    /* renamed from: Y, reason: collision with root package name */
    private long f8879Y;

    /* renamed from: Z, reason: collision with root package name */
    private double f8880Z;
    private int aA;
    private int aB;
    private int aD;
    private double[][] aH;
    private int aJ;
    private g aK;
    private boolean aM;
    private int aN;
    private int aO;
    private int aP;
    private long aQ;
    private long aR;
    private long aS;
    private int aT;
    private int aU;
    private JSONArray aV;
    private JSONArray aW;
    private JSONArray aX;
    private JSONArray aY;
    private JSONArray aZ;
    private String aa;
    private List<String> ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    private long ag;
    private String ah;
    private String ai;
    private double aj;
    private long ak;
    private long al;
    private long am;
    private long an;
    private int ao;
    private int ap;
    private int aq;
    private long ar;
    private JSONObject as;
    private JSONObject at;
    private String au;
    private String av;
    private int aw;
    private int ax;
    private List<Integer> ay;
    private int az;
    private int bA;
    private int bB;
    private aj bC;
    private List<String> bD;
    private JSONObject bE;
    private JSONObject bI;
    private long bK;
    private int bL;
    private long bN;
    private List<com.anythink.core.common.b.d> bO;
    private int bP;
    private String bQ;
    private String bR;
    private long bS;
    private double bT;
    private int bU;
    private int bV;
    private int bW;
    private int bX;
    private JSONObject bY;
    private int bZ;
    private JSONArray ba;
    private JSONArray bb;
    private JSONArray bc;
    private JSONArray bd;
    private JSONArray be;
    private JSONArray bf;
    private JSONArray bg;
    private f bh;
    private long bi;
    private int bj;
    private int bk;
    private int bl;
    private List<Integer> bm;
    private int bo;
    private String bp;
    private int bq;
    private int br;
    private int[] bs;
    private Boolean bu;
    private int bv;
    private String bw;
    private aq bx;
    private int by;
    private int bz;
    private long ca;

    /* renamed from: i, reason: collision with root package name */
    ATAdRequest f8881i;

    /* renamed from: j, reason: collision with root package name */
    private String f8882j;

    /* renamed from: k, reason: collision with root package name */
    private long f8883k;

    /* renamed from: l, reason: collision with root package name */
    private long f8884l;

    /* renamed from: m, reason: collision with root package name */
    private int f8885m;

    /* renamed from: n, reason: collision with root package name */
    private int f8886n;

    /* renamed from: o, reason: collision with root package name */
    private int f8887o;

    /* renamed from: p, reason: collision with root package name */
    private long f8888p;

    /* renamed from: q, reason: collision with root package name */
    private long f8889q;

    /* renamed from: r, reason: collision with root package name */
    private long f8890r;

    /* renamed from: s, reason: collision with root package name */
    private int f8891s;

    /* renamed from: t, reason: collision with root package name */
    private int f8892t;

    /* renamed from: u, reason: collision with root package name */
    private int f8893u;

    /* renamed from: v, reason: collision with root package name */
    private int f8894v;

    /* renamed from: w, reason: collision with root package name */
    private List<by> f8895w;

    /* renamed from: x, reason: collision with root package name */
    private Map<String, by> f8896x;

    /* renamed from: y, reason: collision with root package name */
    private int f8897y;

    /* renamed from: z, reason: collision with root package name */
    private int f8898z;
    private int aC = 0;
    private int aE = 10;
    private int aF = 10;
    private int aG = 2;
    private int aI = 1;
    private com.anythink.core.common.h.q aL = new com.anythink.core.common.h.q();
    private int bn = 2;
    private int bt = 2;
    private int bF = 1;
    private int bG = 10000;
    private int bH = 3000;
    private int bJ = 1;
    private int bM = 2;

    public static class a {

        /* renamed from: A, reason: collision with root package name */
        public static final String f8899A = "req_w_time";

        /* renamed from: B, reason: collision with root package name */
        public static final String f8900B = "wf_loadts";

        /* renamed from: C, reason: collision with root package name */
        public static final String f8901C = "req_ug_type";

        /* renamed from: D, reason: collision with root package name */
        public static final String f8902D = "req_ug_numsp";

        /* renamed from: E, reason: collision with root package name */
        public static final String f8903E = "bf_ldf_rf_sw";

        /* renamed from: F, reason: collision with root package name */
        public static final String f8904F = "hb_start_time";

        /* renamed from: G, reason: collision with root package name */
        public static final String f8905G = "dsp_list";

        /* renamed from: H, reason: collision with root package name */
        public static final String f8906H = "bid_floor";

        /* renamed from: I, reason: collision with root package name */
        public static final String f8907I = "max_unit_ids";

        /* renamed from: J, reason: collision with root package name */
        public static final String f8908J = "xdb_list";

        /* renamed from: K, reason: collision with root package name */
        public static final String f8909K = "s2s_bd_max";

        /* renamed from: L, reason: collision with root package name */
        public static final String f8910L = "req_merge";

        /* renamed from: M, reason: collision with root package name */
        public static final String f8911M = "exclude_id_max";

        /* renamed from: N, reason: collision with root package name */
        public static final String f8912N = "install_id_max";

        /* renamed from: O, reason: collision with root package name */
        public static final String f8913O = "install_ids";

        /* renamed from: P, reason: collision with root package name */
        public static final String f8914P = "exclude_ids";

        /* renamed from: Q, reason: collision with root package name */
        public static final String f8915Q = "is_test";

        /* renamed from: R, reason: collision with root package name */
        public static final String f8916R = "gsp_rates";

        /* renamed from: S, reason: collision with root package name */
        public static final String f8917S = "adx_ext";

        /* renamed from: T, reason: collision with root package name */
        public static final String f8918T = "wf_id";

        /* renamed from: U, reason: collision with root package name */
        public static final String f8919U = "sysh_mtg_sw";

        /* renamed from: V, reason: collision with root package name */
        public static final String f8920V = "mid_gdt_sw";

        /* renamed from: W, reason: collision with root package name */
        public static final String f8921W = "lm_lrqf_interval_sws";

        /* renamed from: X, reason: collision with root package name */
        public static final String f8922X = "wf_lscb_type";

        /* renamed from: Y, reason: collision with root package name */
        public static final String f8923Y = "reqid_pg_sw";

        /* renamed from: Z, reason: collision with root package name */
        public static final String f8924Z = "sr_sw";

        /* renamed from: a, reason: collision with root package name */
        public static final String f8925a = "hb_bid_timeout";
        public static final String aA = "unique_id";
        public static final String aB = "e_key_data";
        public static final String aC = "c_pub_key";
        public static final String aD = "s_id";
        public static final String aE = "c_id";
        public static final String aF = "sp_sdk_pri_timeout";
        public static final String aG = "dn_c2shb_list";
        public static final String aH = "dn_s2shb_list";
        public static final String aI = "bid_wait_other_time";
        public static final String aJ = "h_s_t_auto_sdk_to_time";
        public static final String aK = "ps_ct_out_cus";
        public static final String aL = "autoload_t";
        public static final String aM = "ads_lg_st";
        public static final String aN = "rotation_num";
        public static final String aO = "rotation_inter";
        public static final String aP = "rotation_cache_ts";
        public static final String aQ = "adx_id_b_sw";
        public static final String aR = "addr_st";
        public static final String aS = "i_r_sw";
        public static final String aT = "strategy_domain_type_key";
        public static final String aU = "anr_dyna_st";
        public static final String aV = "wf_dfp";
        private static final String aW = "ps_id_timeout";
        private static final String aX = "ps_ct";
        private static final String aY = "ps_ct_out";
        private static final String aZ = "pucs";
        public static final String aa = "p_c";
        public static final String ab = "has_1st_rl";
        public static final String ac = "updateTime";
        public static final String ad = "upd_type";
        public static final String ae = "upd_th";
        public static final String af = "value_n";
        public static final String ag = "bid_value_n";
        public static final String ah = "sto_stg";
        public static final String ai = "lf_rt_itr";
        public static final String aj = "wf2_mode_sw";
        public static final String ak = "wf2_req_ug_type";
        public static final String al = "wf2_mode_req_num";
        public static final String am = "am_est_num";
        public static final String an = "share_pl_id";
        public static final String ao = "s2s_sw";
        public static final String ap = "bd_req_bid_sw";
        public static final String aq = "bn_template_id";
        public static final String ar = "mix_click_type";
        public static final String as = "auto_refresh_type";
        public static final String at = "wf_sw";
        public static final String au = "wf_obj";
        public static final String av = "pl_wf_st_type";
        public static final String aw = "presetwf_reload_sw";
        public static final String ax = "wf2_nf_sw";
        public static final String ay = "ps_ct_max";
        public static final String az = "adx_dsp";

        /* renamed from: b, reason: collision with root package name */
        public static final String f8926b = "addr_bid";
        private static final String bA = "m_o_ks";
        private static final String bB = "p_m_o";
        private static final String bC = "callback";
        private static final String bD = "sc_list";
        private static final String bE = "rw_n";
        private static final String bF = "rw_num";
        private static final String bG = "reward";
        private static final String bH = "currency";
        private static final String bI = "cc";
        private static final String bJ = "exch_r";
        private static final String bK = "acct_cy";
        private static final String bL = "req_ug_type_v2";
        private static final String bM = "device_perf_sw";
        private static final String bN = "max_cached_num";
        private static final String bO = "wf_req_wait_t";
        private static final String bP = "c2s_req_wait_t";
        private static final String bQ = "s2s_req_wait_t";
        private static final String bR = "auto_req_type";
        private static final String bS = "auto_refresh_type_v2";
        private static final String bT = "pl_refresh_timeout";
        private static final String bU = "wait_bid_load_sw";
        private static final String bV = "wait_bid_cb_t";
        private static final String ba = "ad_delivery_sw";
        private static final String bb = "req_ug_num";
        private static final String bc = "unit_caps_d";
        private static final String bd = "unit_caps_h";
        private static final String be = "unit_pacing";
        private static final String bf = "wifi_auto_sw";
        private static final String bg = "show_type";
        private static final String bh = "refresh";
        private static final String bi = "ug_list";
        private static final String bj = "ol_list";
        private static final String bk = "gro_id";
        private static final String bl = "hb_list";
        private static final String bm = "s2shb_list";
        private static final String bn = "format";
        private static final String bo = "auto_refresh";
        private static final String bp = "auto_refresh_time";
        private static final String bq = "s_t";
        private static final String br = "l_s_t";
        private static final String bs = "ra";
        private static final String bt = "asid";
        private static final String bu = "tp_ps";
        private static final String bv = "t_g_id";
        private static final String bw = "s_id";
        private static final String bx = "u_n_f_sw";
        private static final String by = "m_o";
        private static final String bz = "m_o_s";

        /* renamed from: c, reason: collision with root package name */
        public static final String f8927c = "load_fail_wtime";

        /* renamed from: d, reason: collision with root package name */
        public static final String f8928d = "load_cap";

        /* renamed from: e, reason: collision with root package name */
        public static final String f8929e = "load_cap_time";

        /* renamed from: f, reason: collision with root package name */
        public static final String f8930f = "cached_offers_num";

        /* renamed from: g, reason: collision with root package name */
        public static final String f8931g = "adx_list";

        /* renamed from: h, reason: collision with root package name */
        public static final String f8932h = "adx_st";

        /* renamed from: i, reason: collision with root package name */
        public static final String f8933i = "ilrd";

        /* renamed from: j, reason: collision with root package name */
        public static final String f8934j = "hb_list";

        /* renamed from: k, reason: collision with root package name */
        public static final String f8935k = "inh_list";

        /* renamed from: l, reason: collision with root package name */
        public static final String f8936l = "fbhb_bid_wtime";

        /* renamed from: m, reason: collision with root package name */
        public static final String f8937m = "burl_nt_firm";

        /* renamed from: n, reason: collision with root package name */
        public static final String f8938n = "wf_bid_addr";

        /* renamed from: o, reason: collision with root package name */
        public static final String f8939o = "ss_data";

        /* renamed from: p, reason: collision with root package name */
        public static final String f8940p = "cn_addr_bid";

        /* renamed from: q, reason: collision with root package name */
        public static final String f8941q = "cn_wf_bid_addr";

        /* renamed from: r, reason: collision with root package name */
        public static final String f8942r = "byuid_wt";

        /* renamed from: s, reason: collision with root package name */
        public static final String f8943s = "addr_bks";

        /* renamed from: t, reason: collision with root package name */
        public static final String f8944t = "addr_subbks";

        /* renamed from: u, reason: collision with root package name */
        public static final String f8945u = "s2sbks_list";

        /* renamed from: v, reason: collision with root package name */
        public static final String f8946v = "exch_rate_c2u";

        /* renamed from: w, reason: collision with root package name */
        public static final String f8947w = "doffer_list";

        /* renamed from: x, reason: collision with root package name */
        public static final String f8948x = "bottom_list";

        /* renamed from: y, reason: collision with root package name */
        public static final String f8949y = "bottom_reqts";

        /* renamed from: z, reason: collision with root package name */
        public static final String f8950z = "cb_w_time";
    }

    private m(String str) {
        this.f8882j = str;
    }

    private void H(int i2) {
        this.f8894v = i2;
    }

    private JSONObject bN() {
        return this.as;
    }

    private String bO() {
        return this.bR;
    }

    private bc bP() {
        return this.f8878X;
    }

    private List<ba> bQ() {
        return this.f8877W;
    }

    private String bR() {
        return this.f8872R;
    }

    private int bS() {
        return this.f8858D;
    }

    private int bT() {
        return this.f8886n;
    }

    private int bU() {
        return this.f8891s;
    }

    private int bV() {
        return this.f8892t;
    }

    private int bW() {
        return this.f8893u;
    }

    private bv bX() {
        return this.f8860F;
    }

    private long bY() {
        return this.bS;
    }

    private String bZ() {
        return this.ae;
    }

    private void c(int i2) {
        this.aN = i2;
    }

    private long ca() {
        return this.al;
    }

    private long cb() {
        return this.am;
    }

    private int cc() {
        return this.bW;
    }

    private int cd() {
        return this.bX;
    }

    private int ce() {
        return this.ax;
    }

    private int cf() {
        return this.aA;
    }

    private int[] cg() {
        return this.bs;
    }

    private int ch() {
        return this.bn;
    }

    private by ci() {
        List<by> listA = v.a(this, this.aY);
        if (listA.size() > 0) {
            return listA.get(0);
        }
        return null;
    }

    private String cj() {
        return this.bw;
    }

    private void d(int i2) {
        this.aO = i2;
    }

    private void g(int i2) {
        this.aP = i2;
    }

    private void h(int i2) {
        this.aT = i2;
    }

    private void i(int i2) {
        this.aU = i2;
    }

    private void r(int i2) {
        this.bP = i2;
    }

    public final List<Integer> A() {
        return this.ay;
    }

    public final String B() {
        return this.av;
    }

    public final String C() {
        return this.au;
    }

    public final JSONObject D() {
        return this.at;
    }

    public final int E() {
        return this.bP;
    }

    public final long F() {
        return this.ar;
    }

    public final int G() {
        return this.aq;
    }

    public final int I() {
        int i2 = this.ao;
        if (i2 == 1) {
            return this.f8887o;
        }
        if (i2 != 2) {
            return 1;
        }
        return this.ap;
    }

    public final long J() {
        return this.an;
    }

    public final JSONArray K() {
        return this.be;
    }

    public final long L() {
        return this.ak;
    }

    public final double M() {
        return this.aj;
    }

    public final String N() {
        return this.ah;
    }

    public final String O() {
        return this.ai;
    }

    public final JSONArray P() {
        return this.bb;
    }

    public final long Q() {
        return this.ag;
    }

    public final String R() {
        return this.ad;
    }

    public final String S() {
        return this.ac;
    }

    public final List<String> T() {
        return this.ab;
    }

    public final double U() {
        return this.f8880Z;
    }

    public final String V() {
        return this.aa;
    }

    public final long W() {
        return this.f8879Y;
    }

    public final JSONArray X() {
        return this.ba;
    }

    public final String Y() {
        return this.bQ;
    }

    public final JSONArray Z() {
        return this.aY;
    }

    public final int a() {
        return this.aN;
    }

    public final JSONArray aA() {
        return this.aX;
    }

    public final JSONArray aB() {
        return this.aZ;
    }

    public final long aC() {
        return this.f8873S;
    }

    public final int aD() {
        return this.f8874T;
    }

    public final long aE() {
        return this.f8875U;
    }

    public final int aF() {
        return this.f8876V;
    }

    public final String aG() {
        return this.af;
    }

    public final JSONArray aH() {
        return this.bc;
    }

    public final JSONArray aI() {
        return this.bd;
    }

    public final int aJ() {
        return this.bV;
    }

    public final int aK() {
        return this.bU;
    }

    public final double aL() {
        return this.bT;
    }

    public final int aM() {
        return this.aw;
    }

    public final JSONObject aN() {
        return this.bY;
    }

    public final boolean aO() {
        return this.aC == 1;
    }

    public final boolean aP() {
        return this.aD == 1;
    }

    public final boolean aQ() {
        return this.aC == 2;
    }

    public final boolean aR() {
        return this.aC == 0;
    }

    public final int aS() {
        return this.aE;
    }

    public final int aT() {
        return this.aF;
    }

    public final int aU() {
        return this.aG;
    }

    public final double[][] aV() {
        return this.aH;
    }

    public final int aW() {
        return this.aC;
    }

    public final int aX() {
        return this.aI;
    }

    public final long aa() {
        return this.f8871Q;
    }

    public final Map<String, ATRewardInfo> ab() {
        return this.f8867M;
    }

    public final String ac() {
        return this.f8869O;
    }

    public final String ad() {
        return this.f8870P;
    }

    public final ATRewardInfo ae() {
        return this.f8868N;
    }

    public final Map<String, Object> af() {
        return this.f8866L;
    }

    public final int ag() {
        return this.f8864J;
    }

    public final int ah() {
        return this.f8861G;
    }

    public final String ai() {
        return this.f8862H;
    }

    public final int aj() {
        return this.f8863I;
    }

    public final long ak() {
        return this.f8856B;
    }

    public final long al() {
        return this.f8857C;
    }

    public final String am() {
        return this.f8859E;
    }

    public final int an() {
        return this.f8898z;
    }

    public final long ao() {
        return this.f8855A;
    }

    public final int ap() {
        return this.f8897y;
    }

    public final long aq() {
        return this.f8883k;
    }

    public final long ar() {
        return this.f8884l;
    }

    public final int as() {
        return this.f8885m;
    }

    public final int at() {
        return this.f8887o;
    }

    public final long au() {
        return this.f8888p;
    }

    public final long av() {
        return this.f8889q;
    }

    public final long aw() {
        return this.f8890r;
    }

    public final int ax() {
        return this.f8894v;
    }

    public final JSONArray ay() {
        return this.aV;
    }

    public final JSONArray az() {
        return this.aW;
    }

    public final int b() {
        return this.aO;
    }

    public final JSONObject bA() {
        return this.bE;
    }

    public final int bB() {
        return this.bF;
    }

    public final int bC() {
        return this.bG;
    }

    public final int bD() {
        return this.bH;
    }

    public final int bE() {
        return this.bM;
    }

    public final JSONObject bF() {
        return this.bI;
    }

    public final int bG() {
        return this.bJ;
    }

    public final long bH() {
        return this.bK;
    }

    public final int bI() {
        return this.bL;
    }

    public final boolean bJ() {
        int i2 = this.bL;
        return i2 == 2 || i2 == 5;
    }

    public final long bK() {
        return this.bN;
    }

    public final boolean bL() {
        return this.bZ == 1;
    }

    public final long bM() {
        return this.ca;
    }

    public final int bd() {
        return this.br;
    }

    public final boolean be() {
        return this.bt == 1;
    }

    public final com.anythink.core.common.h.q bf() {
        return this.aL;
    }

    public final boolean bg() {
        return this.bj == 1;
    }

    public final boolean bh() {
        return this.bn == 1;
    }

    public final List<com.anythink.core.common.b.d> bi() {
        return this.bO;
    }

    public final aq bj() {
        return this.bx;
    }

    public final boolean bk() {
        return this.f8886n == 1;
    }

    public final boolean bl() {
        return System.currentTimeMillis() - this.bS > this.f8883k;
    }

    public final boolean bm() {
        System.currentTimeMillis();
        return System.currentTimeMillis() - this.bS > ((long) this.bv);
    }

    public final boolean bn() {
        return !TextUtils.isEmpty(this.bp);
    }

    public final Boolean bo() {
        return this.bu;
    }

    public final int bp() {
        return this.bv;
    }

    public final int bq() {
        return this.by;
    }

    public final boolean br() {
        return this.aM;
    }

    public final void bs() {
        this.aM = true;
    }

    public final JSONArray bt() {
        return this.bf;
    }

    public final JSONArray bu() {
        return this.bg;
    }

    public final int bv() {
        return this.bz;
    }

    public final int bw() {
        return this.bA;
    }

    public final int bx() {
        return this.bB;
    }

    public final aj by() {
        return this.bC;
    }

    public final List<String> bz() {
        return this.bD;
    }

    public final long e() {
        return this.aR;
    }

    public final long f() {
        return this.aS;
    }

    public final g j() {
        return this.aK;
    }

    public final f k() {
        return this.bh;
    }

    public final int l() {
        return this.aJ;
    }

    public final int m() {
        return this.aB;
    }

    public final List<Integer> n() {
        return this.bm;
    }

    public final int o() {
        return this.bk;
    }

    public final int p() {
        return this.bl;
    }

    public final int q() {
        return this.bj;
    }

    public final long s() {
        return this.bi;
    }

    public final ATAdRequest t() {
        return this.f8881i;
    }

    public final int u() {
        return this.bo;
    }

    public final String v() {
        return this.bp;
    }

    public final int w() {
        return this.bq;
    }

    public final Map<String, by> x() {
        return this.f8896x;
    }

    public final List<by> y() {
        return this.f8895w;
    }

    public final int z() {
        return this.az;
    }

    private void A(int i2) {
        this.f8897y = i2;
    }

    private void B(int i2) {
        this.f8885m = i2;
    }

    private void C(int i2) {
        this.f8886n = i2;
    }

    private void D(int i2) {
        this.f8887o = i2;
    }

    private void E(int i2) {
        this.f8891s = i2;
    }

    private void F(int i2) {
        this.f8892t = i2;
    }

    private void G(int i2) {
        this.f8893u = i2;
    }

    private void J(int i2) {
        this.f8876V = i2;
    }

    private void K(int i2) {
        this.bV = i2;
    }

    private void L(int i2) {
        this.bU = i2;
    }

    private void M(int i2) {
        this.bW = i2;
    }

    private void N(int i2) {
        this.bX = i2;
    }

    private void O(int i2) {
        this.aw = i2;
    }

    private void P(int i2) {
        this.ax = i2;
    }

    private void Q(int i2) {
        this.aA = i2;
    }

    private void R(int i2) {
        this.aD = i2;
    }

    private void S(int i2) {
        this.aE = i2;
    }

    private void T(int i2) {
        this.aF = i2;
    }

    private void U(int i2) {
        this.aG = i2;
    }

    private void V(int i2) {
        this.aI = i2;
    }

    private void W(int i2) {
        this.br = i2;
    }

    private void X(int i2) {
        this.bt = i2;
    }

    private void Y(int i2) {
        this.bn = i2;
    }

    private void Z(int i2) {
        this.bv = i2;
    }

    private void a(long j2) {
        this.aQ = j2;
    }

    private void aa(int i2) {
        this.by = i2;
    }

    private void ab(int i2) {
        this.bz = i2;
    }

    private void ac(int i2) {
        this.bA = i2;
    }

    private void ad(int i2) {
        this.bB = i2;
    }

    private void ae(int i2) {
        this.bF = i2;
    }

    private void af(int i2) {
        this.bG = i2;
    }

    private void ag(int i2) {
        this.bH = i2;
    }

    private void ah(int i2) {
        this.bM = i2;
    }

    private void ai(int i2) {
        this.bJ = i2;
    }

    private void aj(int i2) {
        this.bZ = i2;
    }

    private void b(long j2) {
        this.aR = j2;
    }

    private void e(String str) {
        this.au = str;
    }

    private void f(long j2) {
        this.an = j2;
    }

    private void j(int i2) {
        this.aJ = i2;
    }

    private void k(int i2) {
        this.aB = i2;
    }

    private void l(int i2) {
        this.bk = i2;
    }

    private void m(int i2) {
        this.bl = i2;
    }

    private void n(int i2) {
        this.bj = i2;
    }

    private void o(int i2) {
        this.bo = i2;
    }

    private void p(int i2) {
        this.bq = i2;
    }

    private void q(int i2) {
        this.az = i2;
    }

    private void r(long j2) {
        this.f8890r = j2;
    }

    private void s(int i2) {
        this.aq = i2;
    }

    private void t(int i2) {
        this.ao = i2;
    }

    private void u(int i2) {
        this.ap = i2;
    }

    private void v(int i2) {
        this.f8864J = i2;
    }

    private void w(int i2) {
        this.f8861G = i2;
    }

    private void x(int i2) {
        this.f8863I = i2;
    }

    private void y(int i2) {
        this.f8858D = i2;
    }

    private void z(int i2) {
        this.f8898z = i2;
    }

    public final int H() {
        int i2 = this.aN;
        if (i2 != -1 && this.aO == 1) {
            this.ao = i2;
        }
        return this.ao;
    }

    public final int c() {
        return this.aP;
    }

    public final long d() {
        return this.aQ;
    }

    public final int g() {
        return this.aT;
    }

    public final int h() {
        return this.aU;
    }

    public final String i() {
        return this.f8882j;
    }

    private void a(g gVar) {
        this.aK = gVar;
    }

    private static m b(String str, JSONObject jSONObject) throws JSONException {
        m mVar;
        long jOptLong;
        m mVar2;
        int i2;
        JSONArray jSONArrayOptJSONArray;
        int length;
        if (jSONObject == null) {
            return null;
        }
        try {
            m mVar3 = new m(str);
            mVar3.bK = System.currentTimeMillis();
            mVar3.b(jSONObject);
            mVar3.c(jSONObject);
            mVar3.d(jSONObject);
            if (jSONObject.isNull("ps_ct")) {
                mVar3.f8883k = 0L;
            } else {
                mVar3.f8883k = jSONObject.optLong("ps_ct");
            }
            if (jSONObject.isNull("ps_ct_out")) {
                mVar3.f8884l = 0L;
            } else {
                mVar3.f8884l = jSONObject.optLong("ps_ct_out");
            }
            if (jSONObject.isNull("pucs")) {
                mVar3.f8885m = 1;
            } else {
                mVar3.f8885m = jSONObject.optInt("pucs");
            }
            if (jSONObject.isNull("ad_delivery_sw")) {
                mVar3.f8886n = 1;
            } else {
                mVar3.f8886n = jSONObject.optInt("ad_delivery_sw");
            }
            if (jSONObject.isNull("req_ug_num")) {
                mVar3.f8887o = 1;
            } else {
                int iOptInt = jSONObject.optInt("req_ug_num", 1);
                if (iOptInt <= 0) {
                    iOptInt = 1;
                }
                mVar3.f8887o = iOptInt;
            }
            if (jSONObject.isNull("unit_caps_d")) {
                mVar3.f8888p = -1L;
            } else {
                mVar3.f8888p = jSONObject.optLong("unit_caps_d");
            }
            if (jSONObject.isNull("unit_caps_h")) {
                mVar3.f8889q = -1L;
            } else {
                mVar3.f8889q = jSONObject.optLong("unit_caps_h");
            }
            if (jSONObject.isNull("unit_pacing")) {
                mVar3.f8890r = -1L;
            } else {
                mVar3.f8890r = jSONObject.optLong("unit_pacing");
            }
            if (jSONObject.isNull("wifi_auto_sw")) {
                mVar3.f8891s = 0;
            } else {
                mVar3.f8891s = jSONObject.optInt("wifi_auto_sw");
            }
            if (jSONObject.isNull("show_type")) {
                mVar3.f8892t = 0;
            } else {
                mVar3.f8892t = jSONObject.optInt("show_type");
            }
            if (jSONObject.isNull("refresh")) {
                mVar3.f8893u = 0;
            } else {
                mVar3.f8893u = jSONObject.optInt("refresh");
            }
            if (jSONObject.isNull("gro_id")) {
                mVar3.f8894v = 0;
            } else {
                mVar3.f8894v = jSONObject.optInt("gro_id");
            }
            if (jSONObject.isNull("format")) {
                mVar3.f8897y = 0;
            } else {
                mVar3.f8897y = jSONObject.optInt("format");
            }
            if (jSONObject.isNull("auto_refresh")) {
                mVar3.f8898z = 0;
            } else {
                mVar3.f8898z = jSONObject.optInt("auto_refresh");
            }
            if (jSONObject.isNull("auto_refresh_time")) {
                mVar3.f8855A = 0L;
            } else {
                mVar3.f8855A = jSONObject.optLong("auto_refresh_time");
            }
            if (jSONObject.isNull("s_t")) {
                mVar3.f8856B = PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS;
            } else {
                mVar3.f8856B = jSONObject.optLong("s_t");
            }
            if (jSONObject.isNull(com.anythink.core.common.k.f5370O)) {
                mVar3.f8857C = com.anythink.core.common.g.c.f3507a;
            } else {
                mVar3.f8857C = jSONObject.optLong(com.anythink.core.common.k.f5370O);
            }
            if (jSONObject.isNull("ra")) {
                mVar3.f8858D = -1;
            } else {
                mVar3.f8858D = jSONObject.optInt("ra");
            }
            if (jSONObject.isNull("asid")) {
                mVar3.f8859E = "";
            } else {
                mVar3.f8859E = jSONObject.optString("asid");
            }
            if (jSONObject.isNull("tp_ps")) {
                mVar = null;
                try {
                    mVar3.f8860F = null;
                } catch (Exception unused) {
                    return mVar;
                }
            } else {
                try {
                    bv bvVar = new bv();
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("tp_ps");
                    bvVar.f4049a = jSONObjectOptJSONObject.optInt("pucs") == 1;
                    bvVar.f4050b = jSONObjectOptJSONObject.optLong("apdt");
                    bvVar.f4051c = jSONObjectOptJSONObject.optInt("aprn");
                    bvVar.f4052d = jSONObjectOptJSONObject.optInt("puas") == 1;
                    bvVar.f4053e = jSONObjectOptJSONObject.optLong("cdt");
                    bvVar.f4054f = jSONObjectOptJSONObject.optInt("ski_swt") == 1;
                    bvVar.f4055g = jSONObjectOptJSONObject.optInt("aut_swt") == 1;
                    mVar3.f8860F = bvVar;
                } catch (Exception unused2) {
                }
            }
            if (jSONObject.isNull("ug_list")) {
                mVar3.aV = new JSONArray();
            } else {
                mVar3.aV = jSONObject.optJSONArray("ug_list");
            }
            if (jSONObject.isNull("ol_list")) {
                mVar3.aW = new JSONArray();
            } else {
                mVar3.aW = jSONObject.optJSONArray("ol_list");
            }
            if (jSONObject.isNull("s2shb_list")) {
                mVar3.aX = new JSONArray();
            } else {
                mVar3.aX = jSONObject.optJSONArray("s2shb_list");
            }
            if (jSONObject.isNull(a.f8931g)) {
                mVar3.aY = new JSONArray();
            } else {
                mVar3.aY = jSONObject.optJSONArray(a.f8931g);
            }
            if (jSONObject.isNull(a.f8934j)) {
                mVar3.aZ = new JSONArray();
            } else {
                mVar3.aZ = jSONObject.optJSONArray(a.f8934j);
            }
            if (jSONObject.isNull(a.f8935k)) {
                mVar3.ba = new JSONArray();
            } else {
                mVar3.ba = jSONObject.optJSONArray(a.f8935k);
            }
            if (jSONObject.isNull(a.f8945u)) {
                mVar3.bb = new JSONArray();
            } else {
                mVar3.bb = jSONObject.optJSONArray(a.f8945u);
            }
            if (jSONObject.isNull(a.f8947w)) {
                mVar3.bc = new JSONArray();
            } else {
                mVar3.bc = jSONObject.optJSONArray(a.f8947w);
            }
            if (jSONObject.isNull(a.ac)) {
                mVar3.bS = 0L;
                jOptLong = 0;
            } else {
                jOptLong = jSONObject.optLong(a.ac);
                mVar3.bS = jOptLong;
            }
            if (jSONObject.isNull("t_g_id")) {
                mVar3.f8861G = -1;
            } else {
                mVar3.f8861G = jSONObject.optInt("t_g_id");
            }
            if (jSONObject.isNull(a.aD)) {
                mVar3.f8862H = "";
            } else {
                mVar3.f8862H = jSONObject.optString(a.aD);
            }
            if (jSONObject.isNull("u_n_f_sw")) {
                mVar3.f8863I = 0;
            } else {
                mVar3.f8863I = jSONObject.optInt("u_n_f_sw");
            }
            if (!jSONObject.isNull("m_o_s")) {
                mVar3.f8878X = bc.u(jSONObject.optString("m_o_s"));
            }
            if (jSONObject.isNull("m_o")) {
                mVar2 = null;
                try {
                    mVar3.f8877W = null;
                } catch (Exception unused3) {
                    return mVar2;
                }
            } else {
                mVar3.f8877W = a(jSONObject.optString("m_o"), jSONObject.optString("m_o_ks"), jOptLong, mVar3.f8878X);
            }
            if (jSONObject.isNull("p_m_o")) {
                mVar3.f8864J = 0;
            } else {
                mVar3.f8864J = jSONObject.optInt("p_m_o");
            }
            if (jSONObject.isNull(com.anythink.core.common.m.u.f5865b)) {
                mVar = null;
                mVar3.f8866L = null;
            } else {
                JSONObject jSONObject2 = new JSONObject(jSONObject.optString(com.anythink.core.common.m.u.f5865b));
                HashMap map = new HashMap();
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.opt(next));
                }
                mVar3.f8866L = map;
            }
            if (!jSONObject.isNull("callback")) {
                JSONObject jSONObject3 = new JSONObject(jSONObject.optString("callback"));
                if (!jSONObject3.isNull("sc_list")) {
                    JSONObject jSONObject4 = new JSONObject(jSONObject3.optString("sc_list"));
                    HashMap map2 = new HashMap();
                    Iterator<String> itKeys2 = jSONObject4.keys();
                    while (itKeys2.hasNext()) {
                        String next2 = itKeys2.next();
                        JSONObject jSONObject5 = new JSONObject(jSONObject4.optString(next2));
                        ATRewardInfo aTRewardInfo = new ATRewardInfo();
                        aTRewardInfo.rewardName = jSONObject5.optString("rw_n");
                        aTRewardInfo.rewardNumber = jSONObject5.optInt("rw_num");
                        map2.put(next2, aTRewardInfo);
                    }
                    mVar3.f8867M = map2;
                }
                if (!jSONObject3.isNull("reward")) {
                    JSONObject jSONObject6 = new JSONObject(jSONObject3.optString("reward"));
                    ATRewardInfo aTRewardInfo2 = new ATRewardInfo();
                    if (!jSONObject6.isNull("rw_n")) {
                        aTRewardInfo2.rewardName = jSONObject6.optString("rw_n");
                    }
                    if (!jSONObject6.isNull("rw_num")) {
                        aTRewardInfo2.rewardNumber = jSONObject6.optInt("rw_num");
                    }
                    mVar3.f8868N = aTRewardInfo2;
                }
                if (!jSONObject3.isNull(DeepLinkPresetEvent.UMEventParamCurrency)) {
                    mVar3.f8869O = jSONObject3.optString(DeepLinkPresetEvent.UMEventParamCurrency);
                }
                if (!jSONObject3.isNull(com.umeng.ccg.a.f49747a)) {
                    mVar3.f8870P = jSONObject3.optString(com.umeng.ccg.a.f49747a);
                }
                if (!jSONObject3.isNull("exch_r")) {
                    mVar3.f8880Z = jSONObject3.optDouble("exch_r", 0.0d);
                }
                if (!jSONObject3.isNull("acct_cy")) {
                    mVar3.aa = jSONObject3.optString("acct_cy");
                }
            }
            if (jSONObject.isNull(a.f8925a)) {
                mVar3.f8871Q = 10000L;
            } else {
                mVar3.f8871Q = jSONObject.optLong(a.f8925a);
            }
            if (jSONObject.isNull(a.f8926b)) {
                mVar3.f8872R = "";
            } else {
                mVar3.f8872R = jSONObject.optString(a.f8926b);
            }
            if (jSONObject.isNull(a.f8927c)) {
                mVar3.f8873S = 10000L;
            } else {
                mVar3.f8873S = jSONObject.optLong(a.f8927c);
            }
            if (jSONObject.isNull(a.f8928d)) {
                mVar3.f8874T = -1;
            } else {
                mVar3.f8874T = jSONObject.optInt(a.f8928d);
            }
            if (jSONObject.isNull(a.f8929e)) {
                mVar3.f8875U = PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS;
            } else {
                mVar3.f8875U = jSONObject.optLong(a.f8929e);
            }
            if (jSONObject.isNull(a.f8930f)) {
                mVar3.f8876V = 2;
            } else {
                int iOptInt2 = jSONObject.optInt(a.f8930f, 1);
                if (iOptInt2 <= 0) {
                    iOptInt2 = 1;
                }
                mVar3.f8876V = iOptInt2;
            }
            if (jSONObject.isNull(a.f8933i)) {
                mVar3.bQ = null;
            } else {
                mVar3.bQ = jSONObject.optString(a.f8933i);
            }
            if (jSONObject.isNull(a.f8932h)) {
                mVar3.bR = "";
            } else {
                mVar3.bR = jSONObject.optString(a.f8932h);
            }
            if (jSONObject.isNull(a.f8936l)) {
                mVar3.f8879Y = 4000L;
            } else {
                mVar3.f8879Y = jSONObject.optLong(a.f8936l);
            }
            if (jSONObject.isNull(a.f8937m)) {
                mVar3.ab = null;
            } else {
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(a.f8937m);
                ArrayList arrayList = new ArrayList(3);
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    arrayList.add(jSONArrayOptJSONArray2.optString(i3));
                }
                mVar3.ab = arrayList;
            }
            if (jSONObject.isNull(a.f8938n)) {
                mVar3.ac = "";
            } else {
                mVar3.ac = jSONObject.optString(a.f8938n);
            }
            if (jSONObject.isNull(a.f8939o)) {
                mVar3.ad = "";
            } else {
                mVar3.ad = jSONObject.optString(a.f8939o);
            }
            if (jSONObject.isNull(a.f8940p)) {
                mVar3.ae = "";
            } else {
                mVar3.ae = jSONObject.optString(a.f8940p);
            }
            if (jSONObject.isNull(a.f8941q)) {
                mVar3.af = "";
            } else {
                mVar3.af = jSONObject.optString(a.f8941q);
            }
            if (jSONObject.isNull(a.f8942r)) {
                mVar3.ag = 500L;
            } else {
                mVar3.ag = jSONObject.optLong(a.f8942r);
            }
            if (jSONObject.isNull(a.f8943s)) {
                mVar3.ah = "";
            } else {
                mVar3.ah = jSONObject.optString(a.f8943s);
            }
            if (jSONObject.isNull(a.f8944t)) {
                mVar3.ai = "";
            } else {
                mVar3.ai = jSONObject.optString(a.f8944t);
            }
            if (jSONObject.isNull(a.f8946v)) {
                mVar3.aj = 0.1614d;
            } else {
                mVar3.aj = jSONObject.optDouble(a.f8946v);
            }
            if (jSONObject.isNull(a.f8948x)) {
                mVar3.be = new JSONArray();
            } else {
                mVar3.be = jSONObject.optJSONArray(a.f8948x);
            }
            if (jSONObject.isNull(a.f8949y)) {
                mVar3.ak = 1000L;
            } else {
                mVar3.ak = jSONObject.optLong(a.f8949y);
            }
            if (jSONObject.isNull(a.f8950z)) {
                mVar3.al = 0L;
            } else {
                mVar3.al = jSONObject.optLong(a.f8950z);
            }
            if (jSONObject.isNull(a.f8899A)) {
                mVar3.am = 2000L;
            } else {
                mVar3.am = jSONObject.optLong(a.f8899A);
            }
            if (jSONObject.isNull(a.f8900B)) {
                mVar3.an = -1L;
            } else {
                mVar3.an = jSONObject.optLong(a.f8900B);
            }
            if (jSONObject.isNull(a.f8901C)) {
                mVar3.ao = 1;
            } else {
                int iOptInt3 = jSONObject.optInt(a.f8901C);
                if (iOptInt3 != 1 && iOptInt3 != 2) {
                    iOptInt3 = 1;
                }
                mVar3.ao = iOptInt3;
            }
            if (jSONObject.isNull(a.f8902D)) {
                mVar3.ap = 1;
            } else {
                mVar3.ap = jSONObject.optInt(a.f8902D);
            }
            if (jSONObject.isNull(a.f8903E)) {
                mVar3.aq = 2;
            } else {
                mVar3.aq = jSONObject.optInt(a.f8903E);
            }
            if (jSONObject.isNull(a.f8904F)) {
                mVar3.ar = 2000L;
            } else {
                mVar3.ar = jSONObject.optLong(a.f8904F);
            }
            if (jSONObject.isNull(a.f8905G)) {
                mVar3.bd = new JSONArray();
            } else {
                mVar3.bd = jSONObject.optJSONArray(a.f8905G);
            }
            if (jSONObject.isNull("bid_floor")) {
                mVar3.bT = 0.0d;
            } else {
                mVar3.bT = jSONObject.optDouble("bid_floor");
            }
            if (jSONObject.isNull(a.f8907I)) {
                mVar3.as = null;
            } else {
                mVar3.as = jSONObject.optJSONObject(a.f8907I);
            }
            if (jSONObject.isNull(a.f8909K)) {
                mVar3.bU = 0;
            } else {
                mVar3.bU = jSONObject.optInt(a.f8909K);
            }
            if (jSONObject.isNull(a.f8910L)) {
                mVar3.bV = 2;
            } else {
                mVar3.bV = jSONObject.optInt(a.f8910L);
            }
            if (jSONObject.isNull(a.f8911M)) {
                mVar3.bX = 0;
            } else {
                mVar3.bX = jSONObject.optInt(a.f8911M);
            }
            if (jSONObject.isNull(a.f8912N)) {
                mVar3.bW = 0;
            } else {
                mVar3.bW = jSONObject.optInt(a.f8912N);
            }
            if (jSONObject.isNull("is_test")) {
                mVar3.bP = 2;
            } else {
                mVar3.bP = jSONObject.optInt("is_test");
            }
            mVar3.at = jSONObject.optJSONObject(a.f8916R);
            if (jSONObject.isNull(a.f8917S)) {
                mVar3.au = "";
            } else {
                mVar3.au = jSONObject.optString(a.f8917S);
            }
            if (jSONObject.isNull(a.f8918T)) {
                mVar3.av = "";
            } else {
                mVar3.av = jSONObject.optString(a.f8918T);
            }
            if (!jSONObject.isNull(a.f8919U)) {
                mVar3.aw = jSONObject.optInt(a.f8919U);
            } else {
                mVar3.aw = 2;
            }
            if (!jSONObject.isNull(a.f8920V)) {
                mVar3.ax = jSONObject.optInt(a.f8920V);
                i2 = 1;
            } else {
                i2 = 1;
                mVar3.ax = 1;
            }
            if (jSONObject.isNull(a.f8921W)) {
                mVar3.ay = new ArrayList(i2);
            } else {
                ArrayList arrayList2 = new ArrayList(3);
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(a.f8921W);
                if (jSONArrayOptJSONArray3 != null) {
                    int length2 = jSONArrayOptJSONArray3.length();
                    for (int i4 = 0; i4 < length2; i4++) {
                        arrayList2.add(Integer.valueOf(jSONArrayOptJSONArray3.optInt(i4)));
                    }
                }
                mVar3.ay = arrayList2;
            }
            if (jSONObject.isNull(a.f8922X)) {
                mVar3.az = 2;
            } else {
                mVar3.az = jSONObject.optInt(a.f8922X);
            }
            if (!jSONObject.isNull(a.f8923Y)) {
                mVar3.aA = jSONObject.optInt(a.f8923Y);
            } else {
                mVar3.aA = 1;
            }
            if (jSONObject.isNull(a.f8924Z)) {
                mVar3.aB = 2;
            } else {
                mVar3.aB = jSONObject.optInt(a.f8924Z);
            }
            if (!jSONObject.isNull(a.aa)) {
                mVar3.bY = jSONObject.optJSONObject(a.aa);
            }
            if (!jSONObject.isNull(a.ab)) {
                mVar3.aD = jSONObject.optInt(a.ab);
            }
            if (!jSONObject.isNull(a.af)) {
                mVar3.aE = jSONObject.optInt(a.af);
            }
            if (!jSONObject.isNull(a.ag)) {
                mVar3.aF = jSONObject.optInt(a.ag);
            }
            if (!jSONObject.isNull(a.ad)) {
                mVar3.aG = jSONObject.optInt(a.ad);
            }
            if (!jSONObject.isNull(a.ae)) {
                try {
                    JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray(a.ae);
                    if (jSONArrayOptJSONArray4 != null) {
                        double[][] dArr = new double[jSONArrayOptJSONArray4.length()][];
                        for (int i5 = 0; i5 < jSONArrayOptJSONArray4.length(); i5++) {
                            Object obj = jSONArrayOptJSONArray4.get(i5);
                            if (obj instanceof JSONArray) {
                                JSONArray jSONArray = (JSONArray) obj;
                                dArr[i5] = new double[]{Double.parseDouble(String.valueOf(jSONArray.get(0))), Double.parseDouble(String.valueOf(jSONArray.get(1)))};
                            }
                        }
                        mVar3.aH = dArr;
                    }
                } catch (Exception unused4) {
                }
            }
            if (!jSONObject.isNull(a.ah)) {
                mVar3.aI = jSONObject.optInt(a.ah);
            }
            mVar3.bi = jSONObject.optLong(a.ai, 2000L);
            mVar3.bj = jSONObject.optInt(a.aj, 2);
            int iOptInt4 = jSONObject.optInt(a.ak, 1);
            if (iOptInt4 != 1 && iOptInt4 != 2) {
                iOptInt4 = 1;
            }
            mVar3.bk = iOptInt4;
            int iOptInt5 = jSONObject.optInt(a.al, 1);
            if (iOptInt5 <= 0) {
                iOptInt5 = 1;
            }
            mVar3.bl = iOptInt5;
            mVar3.bo = jSONObject.optInt(a.am, 0);
            mVar3.bp = jSONObject.optString(a.an, "");
            mVar3.bq = jSONObject.optInt("s2s_sw", 2);
            JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray(a.ap);
            if (jSONArrayOptJSONArray5 != null && (length = jSONArrayOptJSONArray5.length()) > 0) {
                ArrayList arrayList3 = new ArrayList();
                for (int i6 = 0; i6 < length; i6++) {
                    Object obj2 = jSONArrayOptJSONArray5.get(i6);
                    if (obj2 instanceof Integer) {
                        arrayList3.add((Integer) obj2);
                    }
                }
                mVar3.bm = arrayList3;
            }
            mVar3.br = jSONObject.optInt(a.aq, 1);
            int[] iArr = {1, 2, 3, 4, 5};
            if (!jSONObject.isNull(a.ar) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(a.ar)) != null && jSONArrayOptJSONArray.length() > 0) {
                try {
                    iArr = new int[jSONArrayOptJSONArray.length()];
                    for (int i7 = 0; i7 < jSONArrayOptJSONArray.length(); i7++) {
                        iArr[i7] = jSONArrayOptJSONArray.getInt(i7);
                    }
                } catch (Exception unused5) {
                    iArr = new int[]{1, 2, 3, 4, 5};
                }
            }
            mVar3.bs = iArr;
            mVar3.aJ = jSONObject.optInt(a.as, 1);
            int iOptInt6 = jSONObject.optInt(a.at, 2);
            if (iOptInt6 == 1) {
                mVar3.aK = g.a(jSONObject.optString(a.au));
            } else {
                mVar3.aK = null;
            }
            mVar3.aC = jSONObject.optInt(a.av, 0);
            mVar3.bt = jSONObject.optInt(a.aw, 2);
            mVar3.bn = jSONObject.optInt(a.ax);
            mVar3.bv = jSONObject.optInt(a.ay, BaseConstants.Time.WEEK);
            mVar3.bw = jSONObject.optString(a.az);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(a.aB);
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                aq aqVar = new aq();
                aqVar.a(jSONObject.optString("unique_id"));
                aqVar.c(jSONObjectOptJSONObject2.optString(a.aC));
                aqVar.a(jSONObjectOptJSONObject2.optInt(a.aD));
                aqVar.b(jSONObjectOptJSONObject2.optInt("c_id"));
                mVar3.bx = aqVar;
            }
            com.anythink.core.common.v.s.a(mVar3.aj);
            mVar3.by = jSONObject.optInt(a.aF, -1);
            JSONArray jSONArrayOptJSONArray6 = jSONObject.optJSONArray(a.aG);
            if (jSONArrayOptJSONArray6 == null) {
                jSONArrayOptJSONArray6 = new JSONArray();
            }
            mVar3.bf = jSONArrayOptJSONArray6;
            JSONArray jSONArrayOptJSONArray7 = jSONObject.optJSONArray(a.aH);
            if (jSONArrayOptJSONArray7 == null) {
                jSONArrayOptJSONArray7 = new JSONArray();
            }
            mVar3.bg = jSONArrayOptJSONArray7;
            mVar3.bz = jSONObject.optInt(a.aI, -1);
            mVar3.bA = jSONObject.optInt(a.aJ, -1);
            mVar3.bB = jSONObject.optInt(a.aK, 2000);
            mVar3.bC = aj.a(jSONObject);
            mVar3.bD = com.anythink.core.common.v.p.b(jSONObject.optJSONArray(a.aL));
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(a.aM);
            if (jSONObjectOptJSONObject3 != null) {
                mVar3.bE = jSONObjectOptJSONObject3;
            }
            mVar3.bF = jSONObject.optInt(a.aN, 1);
            mVar3.bG = jSONObject.optInt(a.aO, 10000);
            mVar3.bH = jSONObject.optInt(a.aP, 3000);
            mVar3.bM = jSONObject.optInt(a.aQ, 2);
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject(a.aR);
            if (jSONObjectOptJSONObject4 != null) {
                mVar3.bI = jSONObjectOptJSONObject4;
            }
            mVar3.bJ = jSONObject.optInt(a.aS, 2);
            mVar3.aN = jSONObject.optInt("req_ug_type_v2", -1);
            mVar3.aO = jSONObject.optInt("device_perf_sw", 0);
            mVar3.aP = jSONObject.optInt("max_cached_num", -1);
            mVar3.aQ = jSONObject.optLong("wf_req_wait_t", 0L);
            mVar3.aR = jSONObject.optLong("c2s_req_wait_t", 0L);
            mVar3.aS = jSONObject.optLong("s2s_req_wait_t", 0L);
            mVar3.aT = jSONObject.optInt("auto_req_type", -1);
            mVar3.aU = jSONObject.optInt("auto_refresh_type_v2", -1);
            mVar3.bN = jSONObject.optLong("pl_refresh_timeout", 5000L);
            mVar3.f(jSONObject.optInt("strategy_domain_type_key", 0));
            mVar3.bZ = jSONObject.optInt("wait_bid_load_sw", 2);
            mVar3.ca = jSONObject.optLong("wait_bid_cb_t", 5000L);
            JSONArray jSONArrayOptJSONArray8 = jSONObject.optJSONArray("anr_dyna_st");
            if (jSONArrayOptJSONArray8 != null && jSONArrayOptJSONArray8.length() > 0) {
                ArrayList arrayList4 = new ArrayList();
                for (int i8 = 0; i8 < jSONArrayOptJSONArray8.length(); i8++) {
                    com.anythink.core.common.b.d dVarA = com.anythink.core.common.b.d.a(jSONArrayOptJSONArray8.optJSONObject(i8));
                    if (dVarA != null) {
                        arrayList4.add(dVarA);
                    }
                }
                mVar3.bO = arrayList4;
            }
            if (iOptInt6 == 1) {
                mVar3.bh = f.a(jSONObject.optJSONObject(a.aV));
            } else {
                mVar2 = null;
                mVar3.bh = null;
            }
            return mVar3;
        } catch (Exception unused6) {
            return null;
        }
    }

    private void c(long j2) {
        this.aS = j2;
    }

    private void d(long j2) {
        this.bi = j2;
    }

    private void e(JSONObject jSONObject) {
        this.as = jSONObject;
    }

    private void f(String str) {
        this.ah = str;
    }

    private void g(long j2) {
        this.ak = j2;
    }

    private void h(long j2) {
        this.ag = j2;
    }

    private void i(String str) {
        this.ac = str;
    }

    private void j(String str) {
        this.aa = str;
    }

    private void k(String str) {
        this.bQ = str;
    }

    private void l(String str) {
        this.bR = str;
    }

    private void m(String str) {
        this.f8872R = str;
    }

    private void n(String str) {
        this.f8869O = str;
    }

    private void o(String str) {
        this.f8870P = str;
    }

    private void p(String str) {
        this.f8862H = str;
    }

    private void q(String str) {
        this.f8859E = str;
    }

    private void r(String str) {
        this.ae = str;
    }

    private void s(long j2) {
        this.bS = j2;
    }

    private void t(long j2) {
        this.f8873S = j2;
    }

    private void u(long j2) {
        this.f8875U = j2;
    }

    private void v(long j2) {
        this.al = j2;
    }

    private void w(long j2) {
        this.am = j2;
    }

    private void x(long j2) {
        this.bN = j2;
    }

    private void y(long j2) {
        this.ca = j2;
    }

    private void I(int i2) {
        this.f8874T = i2;
    }

    private void a(f fVar) {
        this.bh = fVar;
    }

    private void c(String str) {
        this.bp = str;
    }

    private void d(String str) {
        this.av = str;
    }

    private void e(long j2) {
        this.ar = j2;
    }

    private void f(JSONArray jSONArray) {
        this.aW = jSONArray;
    }

    private void g(String str) {
        this.ai = str;
    }

    private void h(String str) {
        this.ad = str;
    }

    private void i(long j2) {
        this.f8879Y = j2;
    }

    private void j(long j2) {
        this.f8871Q = j2;
    }

    private void k(long j2) {
        this.f8856B = j2;
    }

    private void l(long j2) {
        this.f8857C = j2;
    }

    private void m(long j2) {
        this.f8855A = j2;
    }

    private void n(long j2) {
        this.f8883k = j2;
    }

    private void o(long j2) {
        this.f8884l = j2;
    }

    private void p(long j2) {
        this.f8888p = j2;
    }

    private void q(long j2) {
        this.f8889q = j2;
    }

    private void s(String str) {
        this.af = str;
    }

    private void t(String str) {
        this.bw = str;
    }

    public final int r() {
        return this.bj == 1 ? 2 : 1;
    }

    private void a(List<Integer> list) {
        this.bm = list;
    }

    private void c(List<Integer> list) {
        this.ay = list;
    }

    private void d(List<String> list) {
        this.ab = list;
    }

    private void e(List<ba> list) {
        this.f8877W = list;
    }

    private void f(JSONObject jSONObject) {
        this.bY = jSONObject;
    }

    private void g(JSONArray jSONArray) {
        this.aX = jSONArray;
    }

    private void h(JSONArray jSONArray) {
        this.aZ = jSONArray;
    }

    private void i(JSONArray jSONArray) {
        this.bc = jSONArray;
    }

    private void j(JSONArray jSONArray) {
        this.bd = jSONArray;
    }

    private void k(JSONArray jSONArray) {
        this.bf = jSONArray;
    }

    private void l(JSONArray jSONArray) {
        this.bg = jSONArray;
    }

    private void c(JSONArray jSONArray) {
        this.ba = jSONArray;
    }

    private void d(JSONArray jSONArray) {
        this.aY = jSONArray;
    }

    private void e(JSONArray jSONArray) {
        this.aV = jSONArray;
    }

    private void f(List<com.anythink.core.common.b.d> list) {
        this.bO = list;
    }

    private void g(List<String> list) {
        this.bD = list;
    }

    private void h(JSONObject jSONObject) {
        this.bI = jSONObject;
    }

    public final void a(ATAdRequest aTAdRequest) {
        this.f8881i = aTAdRequest;
    }

    private void a(Map<String, by> map) {
        this.f8896x = map;
    }

    private void c(Map<String, Object> map) {
        this.f8866L = map;
    }

    private void g(JSONObject jSONObject) {
        this.bE = jSONObject;
    }

    private void c(double d2) {
        this.bT = d2;
    }

    public final by a(String str) {
        Map<String, by> map = this.f8896x;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    private void a(JSONObject jSONObject) {
        this.at = jSONObject;
    }

    private void a(JSONArray jSONArray) {
        this.be = jSONArray;
    }

    private void a(double d2) {
        this.aj = d2;
    }

    private void a(bc bcVar) {
        this.f8878X = bcVar;
    }

    private void a(ATRewardInfo aTRewardInfo) {
        this.f8868N = aTRewardInfo;
    }

    private void a(bv bvVar) {
        this.f8860F = bvVar;
    }

    private void a(double[][] dArr) {
        this.aH = dArr;
    }

    public final void a(int i2) {
        this.aC = i2;
    }

    private void a(int[] iArr) {
        this.bs = iArr;
    }

    public static m a(String str, JSONObject jSONObject) throws JSONException {
        m mVarB = b(str, jSONObject);
        if (mVarB != null) {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            ArrayList arrayList = new ArrayList();
            v.a(mVarB, concurrentHashMap, arrayList);
            mVarB.f8895w = arrayList;
            mVarB.f8896x = concurrentHashMap;
            com.anythink.core.common.v.t.a();
        }
        return mVarB;
    }

    private static List<ba> a(String str, String str2, long j2, bc bcVar) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                ba baVar = new ba();
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                baVar.j(jSONObjectOptJSONObject.optString("o_id"));
                baVar.k(jSONObjectOptJSONObject.optString("c_id"));
                baVar.l(jSONObjectOptJSONObject.optString(com.umeng.analytics.pro.bv.aI));
                baVar.w(jSONObjectOptJSONObject.optString("p_g"));
                baVar.m(jSONObjectOptJSONObject.optString("d"));
                baVar.n(jSONObjectOptJSONObject.optString("ic_u"));
                baVar.o(jSONObjectOptJSONObject.optString("im_u"));
                baVar.p(jSONObjectOptJSONObject.optString("f_i_u"));
                baVar.q(jSONObjectOptJSONObject.optString("a_c_u"));
                baVar.r(jSONObjectOptJSONObject.optString("c_t"));
                baVar.s(jSONObjectOptJSONObject.optString("v_u"));
                baVar.h(jSONObjectOptJSONObject.optInt("l_t"));
                baVar.t(jSONObjectOptJSONObject.optString("p_u"));
                baVar.u(jSONObjectOptJSONObject.optString("dl"));
                baVar.v(jSONObjectOptJSONObject.optString("c_u"));
                baVar.V(jSONObjectOptJSONObject.optString("ip_u"));
                baVar.W(jSONObjectOptJSONObject.optString("t_u"));
                baVar.X(jSONObjectOptJSONObject.optString("t_u_25"));
                baVar.Y(jSONObjectOptJSONObject.optString("t_u_50"));
                baVar.Z(jSONObjectOptJSONObject.optString("t_u_75"));
                baVar.aa(jSONObjectOptJSONObject.optString("t_u_100"));
                baVar.ab(jSONObjectOptJSONObject.optString("s_e_c_t_u"));
                baVar.ac(jSONObjectOptJSONObject.optString("c_t_u"));
                baVar.ad(jSONObjectOptJSONObject.optString("ip_n_u"));
                baVar.ae(jSONObjectOptJSONObject.optString("c_n_u"));
                baVar.f3888c = jSONObjectOptJSONObject.optInt("o_a_d_c");
                baVar.f3889d = jSONObjectOptJSONObject.optLong("o_a_p");
                baVar.a(j2);
                baVar.g(jSONObjectOptJSONObject.optInt("unit_type"));
                baVar.a(jSONObjectOptJSONObject.optInt("c_m"));
                baVar.b(jSONObjectOptJSONObject.optString("ext_h_pic"));
                baVar.S(jSONObjectOptJSONObject.optString("ext_big_h_pic"));
                baVar.T(jSONObjectOptJSONObject.optString("ext_rect_h_pic"));
                baVar.U(jSONObjectOptJSONObject.optString("ext_home_h_pic"));
                baVar.a(str2);
                baVar.x(jSONObjectOptJSONObject.optString("pub"));
                baVar.y(jSONObjectOptJSONObject.optString("app_vc"));
                baVar.z(jSONObjectOptJSONObject.optString("pvc"));
                baVar.A(jSONObjectOptJSONObject.optString("pms"));
                baVar.a((y) bcVar);
                arrayList.add(baVar);
            }
            return arrayList;
        } catch (Throwable th) {
            th.printStackTrace();
            return arrayList;
        }
    }

    public final Map<String, Object> a(String str, String str2, by byVar, ATAdRequest aTAdRequest) throws JSONException {
        com.anythink.core.common.h.q qVar;
        ad adVarY;
        int iA;
        Map<String, Object> mapS = byVar.s();
        boolean zB = com.anythink.core.common.v.o.b();
        b bVarB = d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        if (!TextUtils.isEmpty(byVar.L())) {
            mapS.put("payload", byVar.L());
            if (byVar.Y() != null && !TextUtils.isEmpty(byVar.Y().q())) {
                mapS.put("bidtoken", byVar.Y().q());
            }
        }
        if (!TextUtils.isEmpty(byVar.ad())) {
            mapS.put("custom_inhouse_bid_result", byVar.ad());
        }
        boolean z2 = false;
        mapS.put("app_ccpa_switch", Boolean.valueOf(bVarB.s() == 3));
        if (bVarB.t() == 2 && zB) {
            z2 = true;
        }
        mapS.put("app_coppa_switch", Boolean.valueOf(z2));
        mapS.put("gdpr_consent", Boolean.valueOf(com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g()).b(byVar.n())));
        if (byVar.n() == 66 && byVar.Y() != null && (iA = byVar.Y().a(this.f8897y)) >= 0) {
            mapS.put("ad_type", Integer.valueOf(iA));
        } else {
            mapS.put("ad_type", Integer.valueOf(byVar.ak()));
        }
        if (this.ax == 1) {
            mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.MEDIATION_WF_ID, str + "_" + this.f8861G + "_" + this.f8894v + "_" + str2);
        }
        mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.STACK_INFO, com.anythink.core.common.t.a().b(str));
        if (byVar.n() == 28 && (adVarY = byVar.Y()) != null) {
            mapS.put("anythink_gsp", Double.valueOf(com.anythink.core.common.v.o.a(byVar) * adVarY.f3679l));
        }
        String strN = com.anythink.core.common.v.l.n();
        if (!TextUtils.isEmpty(strN)) {
            mapS.put(ATAdConst.KEY.WECHAT_APPID, strN);
        }
        if (byVar.n() == 35 || byVar.y() == 3 || byVar.y() == 4 || byVar.y() == 7) {
            x xVar = new x();
            xVar.f4489i = byVar.L();
            xVar.f4490j = byVar.n();
            xVar.f4485e = byVar.G();
            xVar.f4486f = str2;
            xVar.f4481a = str;
            xVar.f4483c = this.f8861G;
            xVar.f4484d = this.f8894v;
            xVar.f4482b = this.f8897y;
            xVar.f4491k = byVar.o();
            if (aTAdRequest != null) {
                xVar.f4493m = aTAdRequest.getChannelSource();
            }
            xVar.f4495o = byVar.r();
            ad adVarY2 = byVar.Y();
            if (adVarY2 != null) {
                xVar.f4494n = adVarY2.a(this.f8897y);
                xVar.f4488h = adVarY2.w();
                xVar.f4487g = adVarY2.getOriginRequestId();
            } else {
                xVar.f4494n = -1;
            }
            String str3 = "";
            xVar.f4492l = adVarY2 != null ? adVarY2.f3674g : "";
            if (adVarY2 != null) {
                str3 = adVarY2.f3675h;
            }
            xVar.f4497q = str3;
            if (byVar.n() == 35) {
                xVar.f4500t = this.f8878X;
            } else {
                xVar.f4500t = bm.u(this.bR);
            }
            y yVar = xVar.f4500t;
            if (yVar != null) {
                yVar.r(this.f8897y);
            }
            xVar.f4496p = adVarY2 != null ? adVarY2.f3673f : 0L;
            xVar.f4498r = this.bW;
            xVar.f4499s = this.bX;
            try {
                mapS.put(a.C0044a.f1721d, aY());
                com.anythink.core.common.d.s sVarB = com.anythink.core.common.d.s.b();
                com.anythink.core.bridge.entity.e eVar = new com.anythink.core.bridge.entity.e();
                com.anythink.core.bridge.entity.g gVar = new com.anythink.core.bridge.entity.g(xVar);
                com.anythink.core.bridge.entity.f fVar = new com.anythink.core.bridge.entity.f();
                com.anythink.core.bridge.entity.c cVar = new com.anythink.core.bridge.entity.c();
                if (byVar.Y() != null) {
                    cVar = byVar.Y().z();
                }
                eVar.a(gVar);
                eVar.a(fVar);
                eVar.a(cVar);
                mapS.put(a.C0044a.f1720c, com.anythink.core.bridge.c.a(eVar));
                com.anythink.core.bridge.entity.d dVar = new com.anythink.core.bridge.entity.d();
                dVar.e(com.anythink.core.common.v.l.i());
                dVar.b(com.anythink.core.common.v.l.H());
                mapS.put(a.C0044a.f1718a, com.anythink.core.bridge.c.a(dVar));
                com.anythink.core.bridge.entity.a aVar = new com.anythink.core.bridge.entity.a();
                aVar.a();
                aVar.a(com.anythink.core.common.v.o.a());
                aVar.b(com.anythink.core.common.d.s.b().p());
                aVar.c(com.anythink.core.common.d.s.b().q());
                mapS.put(a.C0044a.f1719b, com.anythink.core.bridge.c.a(aVar));
                ATUserDeviceInfo aTUserDeviceInfoQ = sVarB.Q();
                if (aTUserDeviceInfoQ != null) {
                    mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_USER_DEVICE_INFO, aTUserDeviceInfoQ);
                }
                String[] strArrF = sVarB.f();
                if (strArrF != null && strArrF.length > 0) {
                    mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_DENNY_DEVICE_INFO, strArrF);
                }
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_APP_ID, sVarB.p());
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_APP_KEY, sVarB.q());
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID, xVar.f4481a);
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_SYSTEM_DEV_FRAMEWORK_TYPE, com.anythink.core.common.v.l.l());
                Location locationT = sVarB.t();
                if (locationT != null) {
                    mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_LOCATION, locationT);
                }
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_WX_INSTALL_STATUS, Boolean.valueOf(sVarB.s()));
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_DELAY_INSPECT_TIME, Long.valueOf(ATSDKGlobalSetting.mDelayInspectTime));
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_INSPECT_INTERVAL, Long.valueOf(ATSDKGlobalSetting.mInspectInterval));
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_ENABLE_GET_RUNNING_APP_PROCESSES, Boolean.valueOf(!ATSDKGlobalSetting.isDenyApi_getRunningAppProcesses()));
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_ENABLE_GET_DEVICE_INFO_IN_BG, Boolean.valueOf(ATSDKGlobalSetting.enableGetDeviceInfoInBg));
                mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_EXCLUDE_PKG_LIST, com.anythink.core.common.d.s.b().k());
            } catch (Throwable unused) {
            }
        }
        if (byVar.n() == 50 && this.aA == 1) {
            mapS.put("pangle_request_id", str2);
        }
        ATAdConst.CURRENCY currency = ATAdConst.CURRENCY.RMB;
        if (TextUtils.equals(byVar.aC(), "USD")) {
            currency = ATAdConst.CURRENCY.USD;
        }
        mapS.put("gm_currency", currency);
        if (byVar.n() == 2) {
            mapS.put("anythink_g_ra_label", byVar.aL());
            mapS.put("admob_init_mode", Integer.valueOf(bVarB.aq()));
            mapS.put("admob_adsource_id", byVar.G());
            if (byVar.aV() == 1 && (qVar = this.aL) != null) {
                mapS.put("admob_hybrid_status", Boolean.valueOf(qVar.a()));
                if (this.aL.a() || this.aL.f4356b) {
                    mapS.put("mediation_request_id", str2);
                }
            }
        }
        if (byVar.ak() == 0) {
            mapS.put(a.aq, Integer.valueOf(this.br));
            if (byVar.aN() == null) {
                mapS.put(a.ar, this.bs);
            } else {
                mapS.put(a.ar, byVar.aN());
            }
            mapS.put("nw_firm_id", Integer.valueOf(byVar.n()));
        }
        JSONObject jSONObjectR = bVarB.R();
        if (jSONObjectR != null) {
            try {
                String string = jSONObjectR.getString(String.valueOf(byVar.n()));
                if (!TextUtils.isEmpty(string)) {
                    mapS.put("network_ext", string);
                }
            } catch (Exception unused2) {
            }
        }
        JSONArray jSONArrayAQ = byVar.aQ();
        if (jSONArrayAQ != null && jSONArrayAQ.length() > 0) {
            mapS.put("web_content_urls", jSONArrayAQ);
        }
        int iAR = byVar.aR();
        if (iAR > 0) {
            mapS.put(com.anythink.core.common.k.aA, Integer.valueOf(iAR));
        }
        mapS.put("ad_s_reqf_mode", Integer.valueOf(byVar.aS()));
        mapS.put("ad_format", Integer.valueOf(this.f8897y));
        mapS.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.GM_REFRESH_KEY, Boolean.valueOf(bVarB.ao()));
        if (byVar.n() == 8) {
            mapS.put("load_params_switch", Integer.valueOf(byVar.bb()));
        }
        if (byVar.n() == 39) {
            mapS.put("bid_max_time", Long.valueOf(byVar.bi()));
            mapS.put("splash_type", Integer.valueOf(byVar.bl()));
        }
        if (byVar.n() == 77) {
            mapS.put("mediation_request_id", str2);
        }
        if (byVar.n() == 22) {
            mapS.put("bd_imp_type", Integer.valueOf(byVar.ar()));
        }
        mapS.put("c_b_i_r", Integer.valueOf(byVar.e()));
        return mapS;
    }

    public final void a(Boolean bool) {
        this.bu = bool;
    }

    private void a(aq aqVar) {
        this.bx = aqVar;
    }

    private void a(aj ajVar) {
        this.bC = ajVar;
    }

    private boolean a(m mVar) {
        if (mVar == null) {
            return true;
        }
        return (TextUtils.equals(this.f8859E, mVar.f8859E) || aZ()) ? false : true;
    }

    private void b(List<by> list) {
        this.f8895w = list;
    }

    private void b(JSONArray jSONArray) {
        this.bb = jSONArray;
    }

    private void b(double d2) {
        this.f8880Z = d2;
    }

    private void b(Map<String, ATRewardInfo> map) {
        this.f8867M = map;
    }

    public final ba b(String str) {
        List<ba> list = this.f8877W;
        if (list == null) {
            return null;
        }
        for (ba baVar : list) {
            if (baVar.g() == null) {
                baVar.a((y) this.f8878X);
            }
            if (TextUtils.equals(str, baVar.i()) && !baVar.a(this.f8878X)) {
                return baVar;
            }
        }
        return null;
    }

    public final void b(int i2) {
        this.bL = i2;
    }
}

package com.anythink.core.e;

import androidx.work.WorkRequest;
import com.anythink.core.api.ATSDK;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.ap;
import com.anythink.core.common.h.bw;
import com.anythink.core.e.m;
import com.byazt.rx.BaseConstants;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b extends e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8647a = "b";

    /* renamed from: A, reason: collision with root package name */
    private String f8648A;

    /* renamed from: B, reason: collision with root package name */
    private long f8649B;

    /* renamed from: C, reason: collision with root package name */
    private long f8650C;

    /* renamed from: D, reason: collision with root package name */
    private int f8651D;

    /* renamed from: E, reason: collision with root package name */
    private Map f8652E;

    /* renamed from: F, reason: collision with root package name */
    private String f8653F;

    /* renamed from: G, reason: collision with root package name */
    private String f8654G;

    /* renamed from: H, reason: collision with root package name */
    private String f8655H;

    /* renamed from: I, reason: collision with root package name */
    private String f8656I;

    /* renamed from: J, reason: collision with root package name */
    private int f8657J;

    /* renamed from: K, reason: collision with root package name */
    private int f8658K;

    /* renamed from: L, reason: collision with root package name */
    private Map<String, bw> f8659L;

    /* renamed from: M, reason: collision with root package name */
    private Map<String, bw> f8660M;

    /* renamed from: N, reason: collision with root package name */
    private Map<String, Map<String, Integer>> f8661N;

    /* renamed from: O, reason: collision with root package name */
    private Map<String, Map<String, Integer>> f8662O;

    /* renamed from: P, reason: collision with root package name */
    private int f8663P;

    /* renamed from: Q, reason: collision with root package name */
    private String f8664Q;

    /* renamed from: R, reason: collision with root package name */
    private int f8665R;

    /* renamed from: S, reason: collision with root package name */
    private String f8666S;

    /* renamed from: T, reason: collision with root package name */
    private String f8667T;

    /* renamed from: U, reason: collision with root package name */
    private int f8668U;

    /* renamed from: V, reason: collision with root package name */
    private int f8669V;

    /* renamed from: W, reason: collision with root package name */
    private String f8670W;

    /* renamed from: X, reason: collision with root package name */
    private String f8671X;

    /* renamed from: Y, reason: collision with root package name */
    private String f8672Y;

    /* renamed from: Z, reason: collision with root package name */
    private int f8673Z;
    private long aA;
    private String aB;
    private JSONObject aC;
    private JSONObject aD;
    private int aE;
    private com.anythink.core.common.r.g aF;
    private JSONObject aG;
    private boolean aI;
    private String aK;
    private String aL;
    private String aM;
    private String aN;
    private JSONObject aO;
    private String aQ;
    private String aR;
    private int aS;
    private String aT;
    private JSONArray aU;
    private int aV;
    private String aW;
    private String aZ;
    private String aa;
    private long ab;
    private String ac;
    private String ad;
    private long ae;
    private long af;
    private long ag;
    private int ah;
    private int ai;
    private int aj;
    private int ak;
    private com.anythink.core.common.b.b al;
    private List<com.anythink.core.common.b.a> am;
    private int an;
    private String ao;
    private com.anythink.core.common.b.h ap;
    private ap aq;
    private int ar;
    private int as;
    private String at;
    private String au;
    private String av;
    private String aw;
    private int ax;
    private String ay;
    private int az;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f8674b;
    private int ba;
    private String bc;
    private int bd;
    private com.anythink.core.common.m.b.c bf;
    private int bg;
    private int bh;

    /* renamed from: c, reason: collision with root package name */
    Map<String, Object> f8675c;

    /* renamed from: e, reason: collision with root package name */
    private long f8676e;

    /* renamed from: f, reason: collision with root package name */
    private List<Integer> f8677f;

    /* renamed from: g, reason: collision with root package name */
    private long f8678g;

    /* renamed from: h, reason: collision with root package name */
    private String f8679h;

    /* renamed from: i, reason: collision with root package name */
    private long f8680i;

    /* renamed from: j, reason: collision with root package name */
    private int f8681j;

    /* renamed from: k, reason: collision with root package name */
    private int f8682k;

    /* renamed from: l, reason: collision with root package name */
    private String f8683l;

    /* renamed from: m, reason: collision with root package name */
    private String f8684m;

    /* renamed from: n, reason: collision with root package name */
    private int f8685n;

    /* renamed from: o, reason: collision with root package name */
    private int f8686o;

    /* renamed from: p, reason: collision with root package name */
    private long f8687p;

    /* renamed from: q, reason: collision with root package name */
    private String f8688q;

    /* renamed from: r, reason: collision with root package name */
    private String f8689r;

    /* renamed from: s, reason: collision with root package name */
    private String f8690s;

    /* renamed from: t, reason: collision with root package name */
    private int f8691t;

    /* renamed from: u, reason: collision with root package name */
    private long f8692u;

    /* renamed from: v, reason: collision with root package name */
    private int[] f8693v;

    /* renamed from: w, reason: collision with root package name */
    private String f8694w;

    /* renamed from: x, reason: collision with root package name */
    private int f8695x;

    /* renamed from: y, reason: collision with root package name */
    private long f8696y;

    /* renamed from: z, reason: collision with root package name */
    private String f8697z;
    private int aH = 2;
    private int aJ = 2;
    private int aP = 2;
    private int aX = 1;
    private int aY = 1;
    private int bb = 2;
    private int be = 14400000;

    public static class a {

        /* renamed from: A, reason: collision with root package name */
        public static final String f8698A = "dna";

        /* renamed from: B, reason: collision with root package name */
        public static final String f8699B = "dna_sw";

        /* renamed from: C, reason: collision with root package name */
        public static final String f8700C = "dna_invl";

        /* renamed from: D, reason: collision with root package name */
        public static final String f8701D = "st";

        /* renamed from: E, reason: collision with root package name */
        public static final String f8702E = "domain_p_mode";

        /* renamed from: F, reason: collision with root package name */
        public static final String f8703F = "al_d_i";

        /* renamed from: G, reason: collision with root package name */
        public static final String f8704G = "open_ns";

        /* renamed from: H, reason: collision with root package name */
        public static final String f8705H = "domain";

        /* renamed from: I, reason: collision with root package name */
        public static final String f8706I = "domain_bck";

        /* renamed from: J, reason: collision with root package name */
        public static final String f8707J = "main_d_timeout";

        /* renamed from: K, reason: collision with root package name */
        public static final String f8708K = "bck_d_timeout";

        /* renamed from: L, reason: collision with root package name */
        public static final String f8709L = "api_hb_intvl";

        /* renamed from: M, reason: collision with root package name */
        public static final String f8710M = "crash_stack_sw";

        /* renamed from: N, reason: collision with root package name */
        public static final String f8711N = "tk_net_mode";

        /* renamed from: O, reason: collision with root package name */
        public static final String f8712O = "strategy_domain_type_key";

        /* renamed from: P, reason: collision with root package name */
        public static final String f8713P = "anr_sw";

        /* renamed from: Q, reason: collision with root package name */
        public static final String f8714Q = "anr_dyna_cb";

        /* renamed from: R, reason: collision with root package name */
        public static final String f8715R = "anr_dyna_cbt";

        /* renamed from: S, reason: collision with root package name */
        public static final String f8716S = "anr_dyna_st";

        /* renamed from: T, reason: collision with root package name */
        public static final String f8717T = "anr_tk_sw";

        /* renamed from: U, reason: collision with root package name */
        public static final String f8718U = "tk_http";

        /* renamed from: V, reason: collision with root package name */
        public static final String f8719V = "tkda_d_new";

        /* renamed from: W, reason: collision with root package name */
        public static final String f8720W = "tk_interval";

        /* renamed from: X, reason: collision with root package name */
        public static final String f8721X = "tk_amount";

        /* renamed from: Y, reason: collision with root package name */
        public static final String f8722Y = "da_interval";

        /* renamed from: Z, reason: collision with root package name */
        public static final String f8723Z = "da_amount";

        /* renamed from: a, reason: collision with root package name */
        public static String f8724a = "pil";
        private static String aA = "data_level";
        private static String aB = "psid_hl";
        private static String aC = "la_sw";
        private static String aD = "abtest_id";
        private static String aE = "crash_sw";
        private static String aF = "crash_list";
        private static String aG = "tcp_domain";
        private static String aH = "tcp_port";
        private static String aI = "tcp_tk_da_type";
        private static String aJ = "tcp_rate";
        private static String aK = "sy_id";
        private static String aL = "adx";
        private static String aM = "req_addr";
        private static String aN = "bid_addr";
        private static String aO = "tk_addr";
        private static String aP = "ol_req_addr";
        private static String aQ = "ofm_data";
        private static String aR = "ccpa_sw";
        private static String aS = "coppa_sw";
        private static String aT = "s2s_addr";
        private static String aU = "cn_req_addr";
        private static String aV = "cn_bid_addr";
        private static String aW = "cn_tk_addr";
        private static String aX = "cn_ol_req_addr";
        private static String aY = "show_delay_url";
        private static String aZ = "show_delay_text";
        public static final String aa = "tk_rt_t_ft";
        public static final String ab = "tk_smp_t_ft";
        public static final String ac = "da_rt_keys_ft";
        public static final String ad = "da_smp_keys_ft";
        public static final String ae = "tpc";
        private static String af = "scet";
        private static String ag = "req_ver";
        private static String ah = "api_hf_req_int";
        private static String ai = "bid_i_sw";
        private static String aj = "gdpr_sdcs";
        private static String ak = "gdpr_so";
        private static String al = "gdpr_nu";
        private static String am = "gdpr_a";
        private static String an = "gdpr_ia";
        private static String ao = "gdpr_pre_sw";
        private static String ap = "pl_n";
        private static String aq = "upid";
        private static String ar = "logger";
        private static String as = "tk_address";
        private static String at = "da_address";
        private static String au = "n_psid_tm";
        private static String av = "c_a";
        private static String aw = "n_l";
        private static String ax = "preinit";
        private static String ay = "nw_eu_def";
        private static String az = "t_c";

        /* renamed from: b, reason: collision with root package name */
        public static String f8725b = "tk_rt_sp_ft";
        private static String ba = "store_wakup";
        private static String bb = "admob_m_sw";
        private static String bc = "admob_init";
        private static String bd = "smart_wf_addr";
        private static String be = "pl_st_addr";
        private static String bf = "app_sp_close";
        private static String bg = "mm_tk_sw";
        private static String bh = "adx_lc_sw";
        private static String bi = "om_a";
        private static String bj = "om_js";
        private static String bk = "om_c";
        private static final String bl = "addr_st";
        private static final String bm = "domain";
        private static final String bn = "domain_p";
        private static final String bo = "wv_c_sw";
        private static final String bp = "adx_sdk_dl";
        private static final String bq = "domain_http";

        /* renamed from: c, reason: collision with root package name */
        public static String f8726c = "da_rt_sp_ft";

        /* renamed from: d, reason: collision with root package name */
        public static String f8727d = "lrqf_interval";

        /* renamed from: e, reason: collision with root package name */
        public static String f8728e = "a_c";

        /* renamed from: f, reason: collision with root package name */
        public static String f8729f = "upd_alg";

        /* renamed from: g, reason: collision with root package name */
        public static String f8730g = "device_perf_sw";

        /* renamed from: h, reason: collision with root package name */
        public static String f8731h = "at_a_cg";

        /* renamed from: i, reason: collision with root package name */
        public static String f8732i = "at_a_re";

        /* renamed from: j, reason: collision with root package name */
        public static String f8733j = "at_a_rc";

        /* renamed from: k, reason: collision with root package name */
        public static String f8734k = "s_p_data";

        /* renamed from: l, reason: collision with root package name */
        public static String f8735l = "nw_ext";

        /* renamed from: m, reason: collision with root package name */
        public static String f8736m = "sens_sw";

        /* renamed from: n, reason: collision with root package name */
        public static String f8737n = "adx_getimgwh_sw";

        /* renamed from: o, reason: collision with root package name */
        public static String f8738o = "nw_st";

        /* renamed from: p, reason: collision with root package name */
        public static String f8739p = "job";

        /* renamed from: q, reason: collision with root package name */
        public static String f8740q = "pub_st";

        /* renamed from: r, reason: collision with root package name */
        public static String f8741r = "pil_fu";

        /* renamed from: s, reason: collision with root package name */
        public static String f8742s = "pil_int";

        /* renamed from: t, reason: collision with root package name */
        public static String f8743t = "wx_app_openid";

        /* renamed from: u, reason: collision with root package name */
        public static String f8744u = "lrqf_interval_v2";

        /* renamed from: v, reason: collision with root package name */
        public static String f8745v = "nw_f_s";

        /* renamed from: w, reason: collision with root package name */
        public static String f8746w = "a_i_mode";

        /* renamed from: x, reason: collision with root package name */
        public static String f8747x = "fd_s_sw";

        /* renamed from: y, reason: collision with root package name */
        public static String f8748y = "d_r_ls";

        /* renamed from: z, reason: collision with root package name */
        public static String f8749z = "td_sds";
    }

    public static boolean aQ() {
        b bVarB = d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        boolean z2 = bVarB != null && bVarB.f8651D == 1;
        com.anythink.core.common.d.u uVarA = com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g());
        return bVarB.f8674b ? uVarA.a() != 2 : (uVarA.a() == 2 && (bVarB.f8685n == 0 || z2)) ? false : true;
    }

    public static boolean b(int i2) {
        return i2 == 2;
    }

    private String bd() {
        return this.ay;
    }

    private String be() {
        return this.aw;
    }

    private String bf() {
        return this.f8672Y;
    }

    private long bg() {
        return this.f8680i;
    }

    private String bh() {
        return this.f8653F;
    }

    private String bi() {
        return this.aW;
    }

    private long bj() {
        return this.f8678g;
    }

    private String bk() {
        return this.f8679h;
    }

    private String bl() {
        return this.f8684m;
    }

    private long bm() {
        return this.f8687p;
    }

    private String bn() {
        return this.f8689r;
    }

    private Map<String, Object> bo() {
        return this.f8675c;
    }

    private String bp() {
        return this.aK;
    }

    private String bq() {
        return this.aL;
    }

    private int br() {
        return this.az;
    }

    private int bs() {
        return this.aP;
    }

    private String bt() {
        return this.aR;
    }

    private String bu() {
        return this.aQ;
    }

    private int bv() {
        return this.aV;
    }

    private long bw() {
        return this.ab;
    }

    private boolean bx() {
        return this.aI;
    }

    private void g(int i2) {
        this.aS = i2;
    }

    public final int A() {
        return this.f8663P;
    }

    public final void B() {
        this.f8663P = 1;
    }

    public final String C() {
        return this.f8664Q;
    }

    public final String D() {
        return this.f8656I;
    }

    public final int E() {
        return this.f8657J;
    }

    public final void F() {
        this.f8657J = KSImageLoader.InnerImageLoadingListener.MAX_DURATION;
    }

    public final int G() {
        return this.f8658K;
    }

    public final void H() {
        this.f8658K = 0;
    }

    public final String I() {
        return this.f8655H;
    }

    public final boolean J() {
        return this.f8674b;
    }

    public final String K() {
        return this.f8654G;
    }

    public final int L() {
        return this.f8651D;
    }

    public final long M() {
        return this.f8650C;
    }

    public final void N() {
        this.f8650C = 51200L;
    }

    public final Map<String, String> O() {
        return this.f8652E;
    }

    public final JSONObject P() {
        return this.aD;
    }

    public final String Q() {
        return this.aa;
    }

    public final JSONObject R() {
        return this.aG;
    }

    public final long S() {
        return this.f8649B;
    }

    public final void T() {
        this.f8649B = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
    }

    public final void U() {
        this.f8678g = i.l.f2676a;
    }

    public final int V() {
        return this.f8681j;
    }

    public final int W() {
        return this.f8682k;
    }

    public final String X() {
        return this.f8683l;
    }

    public final int Y() {
        return this.f8685n;
    }

    public final int Z() {
        return this.f8686o;
    }

    public final long a() {
        return this.f8676e;
    }

    public final int aA() {
        com.anythink.core.common.m.b.c cVar = this.bf;
        if (cVar != null) {
            return cVar.b();
        }
        return 1;
    }

    public final int aB() {
        if (this.f8673Z <= 0) {
            com.anythink.core.common.g.c.a();
            this.f8673Z = com.anythink.core.common.g.c.d() ? 3 : 2;
        }
        return this.f8673Z;
    }

    public final int aC() {
        return this.aX;
    }

    public final String aD() {
        return this.ac;
    }

    public final String aE() {
        return this.ad;
    }

    public final long aF() {
        return this.ae;
    }

    public final void aG() {
        this.ae = 10000L;
    }

    public final long aH() {
        return this.af;
    }

    public final void aI() {
        this.af = 10000L;
    }

    public final long aJ() {
        return this.ag;
    }

    public final int aK() {
        return this.ah;
    }

    public final int aL() {
        return this.ai;
    }

    public final int aM() {
        return this.an;
    }

    public final String aN() {
        return this.ao;
    }

    public final JSONObject aO() {
        return this.aC;
    }

    public final String aP() {
        return this.aM;
    }

    public final boolean aR() {
        return (this.f8674b || this.bb == 1) ? false : true;
    }

    public final boolean aS() {
        return this.f8680i + this.f8678g <= System.currentTimeMillis();
    }

    public final int aT() {
        return this.aj;
    }

    public final int aU() {
        return this.ak;
    }

    public final com.anythink.core.common.b.b aV() {
        return this.al;
    }

    public final List<com.anythink.core.common.b.a> aW() {
        return this.am;
    }

    public final com.anythink.core.common.b.h aX() {
        return this.ap;
    }

    public final void aa() {
        this.f8687p = 5000L;
    }

    public final String ab() {
        return this.f8690s;
    }

    public final int ac() {
        return this.f8691t;
    }

    public final void ad() {
        this.f8691t = 50;
    }

    public final long ae() {
        return this.f8692u;
    }

    public final void af() {
        this.f8692u = 10000L;
    }

    public final String ag() {
        return this.f8694w;
    }

    public final int ah() {
        return this.f8695x;
    }

    public final void ai() {
        this.f8695x = 50;
    }

    public final long aj() {
        return this.f8696y;
    }

    public final void ak() {
        this.f8696y = 10000L;
    }

    public final Map<String, Map<String, Integer>> al() {
        return this.f8661N;
    }

    public final Map<String, Map<String, Integer>> am() {
        return this.f8662O;
    }

    public final boolean an() {
        return this.aH == 1;
    }

    public final boolean ao() {
        return this.aJ == 1;
    }

    public final long ap() {
        return this.aA;
    }

    public final int aq() {
        return this.aY;
    }

    public final String ar() {
        return this.aN;
    }

    public final String as() {
        return this.aZ;
    }

    public final JSONObject at() {
        return this.aO;
    }

    public final int au() {
        return this.bb;
    }

    public final String av() {
        return this.f8667T;
    }

    public final int aw() {
        return this.f8669V;
    }

    public final String ax() {
        return this.bc;
    }

    public final boolean ay() {
        return this.bd == 1;
    }

    public final int az() {
        return this.be;
    }

    public final List<Integer> c() {
        return this.f8677f;
    }

    public final int d() {
        return this.aS;
    }

    public final String e() {
        return this.aT;
    }

    public final JSONArray f() {
        return this.aU;
    }

    public final boolean h() {
        return this.aE == 1;
    }

    public final String i() {
        return this.aB;
    }

    public final boolean j() {
        return this.ba == 1;
    }

    public final int k() {
        return this.bg;
    }

    public final void l() {
        this.bg = 2;
    }

    public final int m() {
        return this.bh;
    }

    public final int n() {
        return this.ax;
    }

    public final void o() {
        this.ax = 1;
    }

    public final String p() {
        return this.av;
    }

    public final String q() {
        return this.au;
    }

    public final String r() {
        return this.at;
    }

    public final int s() {
        return this.ar;
    }

    public final int t() {
        return this.as;
    }

    public final ap u() {
        return this.aq;
    }

    public final String v() {
        return this.f8671X;
    }

    public final String w() {
        return this.f8670W;
    }

    public final int x() {
        return this.f8665R;
    }

    public final String y() {
        return this.f8666S;
    }

    public final int z() {
        return this.f8668U;
    }

    private void A(String str) {
        this.aK = str;
    }

    private void B(String str) {
        this.aL = str;
    }

    private void C(String str) {
        this.aN = str;
    }

    private void D(String str) {
        this.aZ = str;
    }

    private void E(String str) {
        this.aR = str;
    }

    private void F(String str) {
        this.aQ = str;
    }

    private void G(String str) {
        this.f8667T = str;
    }

    private void H(String str) {
        this.bc = str;
    }

    private void I(String str) {
        this.ac = str;
    }

    private void J(String str) {
        this.ad = str;
    }

    private void K(String str) {
        this.ao = str;
    }

    private void L(String str) {
        this.aM = str;
    }

    private void a(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0) {
                    this.f8677f = new ArrayList();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        this.f8677f.add((Integer) jSONArray.get(i2));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void e(JSONObject jSONObject) {
        this.aD = jSONObject;
    }

    private void f(JSONObject jSONObject) {
        this.aG = jSONObject;
    }

    private void h(int i2) {
        this.aE = i2;
    }

    private void i(int i2) {
        this.bh = i2;
    }

    private void j(String str) {
        this.aw = str;
    }

    private void k(String str) {
        this.av = str;
    }

    private void l(String str) {
        this.au = str;
    }

    private void m(String str) {
        this.at = str;
    }

    private void n(String str) {
        this.f8671X = str;
    }

    private void o(String str) {
        this.f8672Y = str;
    }

    private void p(String str) {
        this.f8670W = str;
    }

    private void q(String str) {
        this.f8666S = str;
    }

    private void r(String str) {
        this.f8656I = str;
    }

    private void s(String str) {
        this.f8655H = str;
    }

    private void t(String str) {
        this.f8654G = str;
    }

    private void u(String str) {
        this.f8653F = str;
    }

    private void v(String str) {
        this.aW = str;
    }

    private void w(String str) {
        this.aa = str;
    }

    private void x(String str) {
        this.f8683l = str;
    }

    private void y(String str) {
        this.f8684m = str;
    }

    private void z(String str) {
        this.f8689r = str;
    }

    public final void b() {
        this.f8676e = com.anythink.core.common.g.c.f3507a;
    }

    public final void c(String str) {
        this.f8679h = str;
    }

    public final void d(String str) {
        this.f8690s = str;
    }

    public final com.anythink.core.common.r.g g() {
        return this.aF;
    }

    private void A(int i2) {
        this.bd = i2;
    }

    private void B(int i2) {
        this.be = i2;
    }

    private void C(int i2) {
        this.aV = i2;
    }

    private void D(int i2) {
        this.f8673Z = i2;
    }

    private void E(int i2) {
        this.aX = i2;
    }

    private void F(int i2) {
        this.ah = i2;
    }

    private void G(int i2) {
        this.ai = i2;
    }

    private void H(int i2) {
        this.an = i2;
    }

    private void b(JSONArray jSONArray) {
        this.aU = jSONArray;
    }

    private void c(Map<String, bw> map) {
        this.f8659L = map;
    }

    private void d(Map<String, bw> map) {
        this.f8660M = map;
    }

    private void g(JSONObject jSONObject) {
        this.aO = jSONObject;
    }

    private void h(String str) {
        this.aB = str;
    }

    private void i(String str) {
        this.ay = str;
    }

    private void j(int i2) {
        this.ar = i2;
    }

    private void k(int i2) {
        this.as = i2;
    }

    private void l(int i2) {
        this.f8665R = i2;
    }

    private void m(int i2) {
        this.f8668U = i2;
    }

    private void n(int i2) {
        this.f8651D = i2;
    }

    private void o(int i2) {
        this.f8681j = i2;
    }

    private void p(int i2) {
        this.f8682k = i2;
    }

    private void q(int i2) {
        this.f8685n = i2;
    }

    private void r(int i2) {
        this.f8686o = i2;
    }

    private void s(int i2) {
        this.aH = i2;
    }

    private void t(int i2) {
        this.aJ = i2;
    }

    private void u(int i2) {
        this.az = i2;
    }

    private void v(int i2) {
        this.aY = i2;
    }

    private void w(int i2) {
        this.ba = i2;
    }

    private void x(int i2) {
        this.bb = i2;
    }

    private void y(int i2) {
        this.aP = i2;
    }

    private void z(int i2) {
        this.f8669V = i2;
    }

    public final void e(String str) {
        this.f8694w = str;
    }

    public final bw f(String str) {
        Map<String, bw> map = this.f8660M;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    private void c(long j2) {
        this.ab = j2;
    }

    private void d(long j2) {
        this.ag = j2;
    }

    private void e(Map<String, Map<String, Integer>> map) {
        this.f8661N = map;
    }

    private void f(Map<String, Map<String, Integer>> map) {
        this.f8662O = map;
    }

    private void h(JSONObject jSONObject) {
        this.aC = jSONObject;
    }

    public final void b(String str) {
        this.f8664Q = str;
    }

    public final boolean g(String str) {
        com.anythink.core.common.m.b.c cVar = this.bf;
        return cVar != null && cVar.a(str);
    }

    private static void b(b bVar, JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(a.f8719V);
        if (jSONObjectOptJSONObject != null) {
            bVar.f8691t = jSONObjectOptJSONObject.optInt(a.f8721X, 50);
            bVar.f8692u = jSONObjectOptJSONObject.optLong(a.f8720W, 10000L);
            bVar.f8695x = jSONObjectOptJSONObject.optInt(a.f8723Z, 50);
            bVar.f8696y = jSONObjectOptJSONObject.optLong(a.f8722Y, 10000L);
            try {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(a.aa);
                Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
                HashMap map = new HashMap();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject(next);
                    map.put(next, new bw(com.anythink.core.common.v.p.b(jSONObjectOptJSONObject3.optJSONArray("ids")), com.anythink.core.common.v.p.b(jSONObjectOptJSONObject3.optJSONArray("formats"))));
                }
                bVar.f8659L = map;
            } catch (Throwable unused) {
                bVar.f8659L = null;
            }
            try {
                JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject(a.ac);
                Iterator<String> itKeys2 = jSONObjectOptJSONObject4.keys();
                HashMap map2 = new HashMap();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4.optJSONObject(next2);
                    map2.put(next2, new bw(com.anythink.core.common.v.p.b(jSONObjectOptJSONObject5.optJSONArray("ids")), com.anythink.core.common.v.p.b(jSONObjectOptJSONObject5.optJSONArray("formats"))));
                }
                bVar.f8660M = map2;
            } catch (Throwable unused2) {
                bVar.f8660M = null;
            }
            try {
                JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject.optJSONObject(a.ab);
                Iterator<String> itKeys3 = jSONObjectOptJSONObject6.keys();
                HashMap map3 = new HashMap();
                while (itKeys3.hasNext()) {
                    String next3 = itKeys3.next();
                    HashMap map4 = new HashMap();
                    JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject6.optJSONObject(next3);
                    Iterator<String> itKeys4 = jSONObjectOptJSONObject7.keys();
                    while (itKeys4.hasNext()) {
                        String next4 = itKeys4.next();
                        map4.put(next4, Integer.valueOf(jSONObjectOptJSONObject7.optInt(next4)));
                    }
                    map3.put(next3, map4);
                }
                bVar.f8661N = map3;
            } catch (Throwable unused3) {
                bVar.f8661N = null;
            }
            try {
                JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject.optJSONObject(a.ad);
                Iterator<String> itKeys5 = jSONObjectOptJSONObject8.keys();
                HashMap map5 = new HashMap();
                while (itKeys5.hasNext()) {
                    String next5 = itKeys5.next();
                    HashMap map6 = new HashMap();
                    JSONObject jSONObjectOptJSONObject9 = jSONObjectOptJSONObject8.optJSONObject(next5);
                    Iterator<String> itKeys6 = jSONObjectOptJSONObject9.keys();
                    while (itKeys6.hasNext()) {
                        String next6 = itKeys6.next();
                        map6.put(next6, Integer.valueOf(jSONObjectOptJSONObject9.optInt(next6)));
                    }
                    map5.put(next5, map6);
                }
                bVar.f8662O = map5;
            } catch (Throwable unused4) {
                bVar.f8662O = null;
            }
        }
    }

    private static void g(Map<String, Object> map) {
        b bVarB = d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        boolean z2 = false;
        boolean z3 = bVarB != null && bVarB.f8685n == 1;
        boolean z4 = bVarB != null && bVarB.f8651D == 1;
        com.anythink.core.common.d.u uVarA = com.anythink.core.common.d.u.a(com.anythink.core.common.d.s.b().g());
        map.put("gdpr_consent", Boolean.valueOf(uVarA.c()));
        map.put("is_eu", Boolean.valueOf(z3));
        if (!bVarB.f8674b ? uVarA.a() != 2 || (bVarB.f8685n != 0 && !z4) : uVarA.a() != 2) {
            z2 = true;
        }
        map.put("need_set_gdpr", Boolean.valueOf(z2));
    }

    public final void c(int i2) {
        this.aj = i2;
    }

    public final void d(int i2) {
        this.ak = i2;
    }

    public final void a(String str) {
        this.aT = str;
    }

    public final void a(com.anythink.core.common.r.g gVar) {
        this.aF = gVar;
    }

    private void a(com.anythink.core.common.m.b.c cVar) {
        this.bf = cVar;
    }

    private void a(ap apVar) {
        this.aq = apVar;
    }

    public final void a(long j2) {
        this.f8680i = j2;
    }

    private void a(Map map) {
        this.f8652E = map;
    }

    public static b a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        if (jSONObject == null) {
            return null;
        }
        b bVar = new b();
        try {
            bVar.b(jSONObject);
            bVar.c(jSONObject);
            bVar.d(jSONObject);
            if (jSONObject.isNull(a.ag)) {
                bVar.f8679h = "unkown";
            } else {
                bVar.f8679h = jSONObject.optString(a.ag);
            }
            if (jSONObject.isNull(a.af)) {
                bVar.f8678g = i.l.f2676a;
            } else {
                bVar.f8678g = jSONObject.optLong(a.af);
            }
            if (jSONObject.isNull(a.aj)) {
                bVar.f8681j = 0;
            } else {
                bVar.f8681j = jSONObject.optInt(a.aj);
            }
            if (jSONObject.isNull(a.ak)) {
                bVar.f8682k = 0;
            } else {
                bVar.f8682k = jSONObject.optInt(a.ak);
            }
            if (jSONObject.isNull(a.al)) {
                bVar.f8683l = "";
            } else {
                bVar.f8683l = jSONObject.optString(a.al);
            }
            if (jSONObject.isNull(a.am)) {
                bVar.f8684m = "[\"AT\",\"BE\",\"BG\",\"HR\",\"CY\",\"CZ\",\"DK\",\"EE\",\"FI\",\"FR\",\"DE\",\"GR\",\"HU\",\"IS\",\"IE\",\"IT\",\"LV\",\"LI\",\"LT\",\"LU\",\"MT\",\"NL\",\"NO\",\"PL\",\"PT\",\"RO\",\"SK\",\"SI\",\"ES\",\"SE\",\"GB\",\"UK\"]";
            } else {
                bVar.f8684m = jSONObject.optString(a.am);
            }
            if (jSONObject.isNull(a.an)) {
                bVar.f8685n = 0;
            } else {
                bVar.f8685n = jSONObject.optInt(a.an);
            }
            bVar.f8686o = jSONObject.optInt(a.ao, 1);
            if (jSONObject.isNull(a.ap)) {
                bVar.f8687p = 5000L;
            } else {
                bVar.f8687p = jSONObject.optLong(a.ap);
            }
            if (!jSONObject.isNull(a.ar)) {
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(a.ar);
                bVar.f8690s = jSONObjectOptJSONObject3.optString(a.as);
                bVar.f8694w = jSONObjectOptJSONObject3.optString(a.at);
                bVar.f8666S = jSONObjectOptJSONObject3.optString(a.aG);
                bVar.f8668U = jSONObjectOptJSONObject3.optInt(a.aH);
                bVar.f8665R = jSONObjectOptJSONObject3.optInt(a.aI);
                bVar.f8670W = jSONObjectOptJSONObject3.optString(a.aJ);
                if (!jSONObjectOptJSONObject3.isNull(a.be)) {
                    bVar.aZ = jSONObjectOptJSONObject3.optString(a.be);
                }
                if (!jSONObjectOptJSONObject3.isNull(a.bf)) {
                    bVar.ba = jSONObjectOptJSONObject3.optInt(a.bf);
                }
                JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject(a.f8719V);
                if (jSONObjectOptJSONObject4 != null) {
                    bVar.f8691t = jSONObjectOptJSONObject4.optInt(a.f8721X, 50);
                    bVar.f8692u = jSONObjectOptJSONObject4.optLong(a.f8720W, 10000L);
                    bVar.f8695x = jSONObjectOptJSONObject4.optInt(a.f8723Z, 50);
                    bVar.f8696y = jSONObjectOptJSONObject4.optLong(a.f8722Y, 10000L);
                    try {
                        JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4.optJSONObject(a.aa);
                        Iterator<String> itKeys = jSONObjectOptJSONObject5.keys();
                        HashMap map = new HashMap();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5.optJSONObject(next);
                            map.put(next, new bw(com.anythink.core.common.v.p.b(jSONObjectOptJSONObject6.optJSONArray("ids")), com.anythink.core.common.v.p.b(jSONObjectOptJSONObject6.optJSONArray("formats"))));
                        }
                        bVar.f8659L = map;
                    } catch (Throwable unused) {
                        bVar.f8659L = null;
                    }
                    try {
                        JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject4.optJSONObject(a.ac);
                        Iterator<String> itKeys2 = jSONObjectOptJSONObject7.keys();
                        HashMap map2 = new HashMap();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject7.optJSONObject(next2);
                            map2.put(next2, new bw(com.anythink.core.common.v.p.b(jSONObjectOptJSONObject8.optJSONArray("ids")), com.anythink.core.common.v.p.b(jSONObjectOptJSONObject8.optJSONArray("formats"))));
                        }
                        bVar.f8660M = map2;
                    } catch (Throwable unused2) {
                        bVar.f8660M = null;
                    }
                    try {
                        JSONObject jSONObjectOptJSONObject9 = jSONObjectOptJSONObject4.optJSONObject(a.ab);
                        Iterator<String> itKeys3 = jSONObjectOptJSONObject9.keys();
                        HashMap map3 = new HashMap();
                        while (itKeys3.hasNext()) {
                            String next3 = itKeys3.next();
                            HashMap map4 = new HashMap();
                            JSONObject jSONObjectOptJSONObject10 = jSONObjectOptJSONObject9.optJSONObject(next3);
                            Iterator<String> itKeys4 = jSONObjectOptJSONObject10.keys();
                            while (itKeys4.hasNext()) {
                                String next4 = itKeys4.next();
                                map4.put(next4, Integer.valueOf(jSONObjectOptJSONObject10.optInt(next4)));
                            }
                            map3.put(next3, map4);
                        }
                        bVar.f8661N = map3;
                    } catch (Throwable unused3) {
                        bVar.f8661N = null;
                    }
                    try {
                        JSONObject jSONObjectOptJSONObject11 = jSONObjectOptJSONObject4.optJSONObject(a.ad);
                        Iterator<String> itKeys5 = jSONObjectOptJSONObject11.keys();
                        HashMap map5 = new HashMap();
                        while (itKeys5.hasNext()) {
                            String next5 = itKeys5.next();
                            HashMap map6 = new HashMap();
                            JSONObject jSONObjectOptJSONObject12 = jSONObjectOptJSONObject11.optJSONObject(next5);
                            Iterator<String> itKeys6 = jSONObjectOptJSONObject12.keys();
                            while (itKeys6.hasNext()) {
                                String next6 = itKeys6.next();
                                map6.put(next6, Integer.valueOf(jSONObjectOptJSONObject12.optInt(next6)));
                            }
                            map5.put(next5, map6);
                        }
                        bVar.f8662O = map5;
                    } catch (Throwable unused4) {
                        bVar.f8662O = null;
                    }
                }
            }
            if (!jSONObject.isNull(a.bf)) {
                bVar.ba = jSONObject.optInt(a.bf);
            }
            if (!jSONObject.isNull(a.au)) {
                bVar.f8649B = jSONObject.optLong(a.au);
            }
            if (!jSONObject.isNull(a.av)) {
                bVar.f8650C = jSONObject.optLong(a.av);
            }
            if (!jSONObject.isNull(a.aw)) {
                JSONObject jSONObject2 = new JSONObject(jSONObject.optString(a.aw));
                Iterator<String> itKeys7 = jSONObject2.keys();
                HashMap map7 = new HashMap();
                while (itKeys7.hasNext()) {
                    String next7 = itKeys7.next();
                    map7.put(next7, jSONObject2.optString(next7));
                }
                bVar.f8652E = map7;
            }
            if (!jSONObject.isNull(a.az)) {
                bVar.f8654G = jSONObject.optString(a.az);
            }
            if (!jSONObject.isNull(a.ay)) {
                bVar.f8651D = jSONObject.optInt(a.ay);
            }
            if (!jSONObject.isNull(a.aA)) {
                bVar.f8655H = jSONObject.optString(a.aA);
            }
            if (jSONObject.isNull(a.aB)) {
                bVar.f8657J = BaseConstants.Time.MINUTE;
            } else {
                bVar.f8657J = jSONObject.optInt(a.aB);
            }
            if (jSONObject.isNull(a.aC)) {
                bVar.f8658K = 0;
            } else {
                bVar.f8658K = jSONObject.optInt(a.aC);
            }
            if (jSONObject.isNull(a.aD)) {
                bVar.f8656I = "";
            } else {
                bVar.f8656I = jSONObject.optString(a.aD);
            }
            if (jSONObject.isNull(a.aE)) {
                bVar.f8663P = 1;
            } else {
                bVar.f8663P = jSONObject.optInt(a.aE);
            }
            if (jSONObject.isNull(a.aF)) {
                bVar.f8664Q = "";
            } else {
                bVar.f8664Q = jSONObject.optString(a.aF);
            }
            if (jSONObject.isNull(a.aK)) {
                bVar.f8671X = "";
            } else {
                bVar.f8671X = jSONObject.optString(a.aK);
            }
            if (jSONObject.isNull(a.aL)) {
                bVar.aq = null;
            } else {
                ap apVar = new ap();
                JSONObject jSONObjectOptJSONObject13 = jSONObject.optJSONObject(a.aL);
                apVar.b(jSONObjectOptJSONObject13.optString(a.aM));
                apVar.c(jSONObjectOptJSONObject13.optString(a.aN));
                apVar.d(jSONObjectOptJSONObject13.optString(a.aO));
                apVar.a(jSONObjectOptJSONObject13.optString(a.aP));
                if (!jSONObject.isNull(a.aU)) {
                    apVar.e(jSONObjectOptJSONObject13.optString(a.aU));
                }
                if (!jSONObject.isNull(a.aV)) {
                    apVar.f(jSONObjectOptJSONObject13.optString(a.aV));
                }
                if (!jSONObject.isNull(a.aW)) {
                    apVar.g(jSONObjectOptJSONObject13.optString(a.aW));
                }
                if (!jSONObject.isNull(a.aX)) {
                    apVar.h(jSONObjectOptJSONObject13.optString(a.aX));
                }
                bVar.aq = apVar;
            }
            if (jSONObject.isNull("custom")) {
                bVar.f8675c = null;
            } else {
                try {
                    JSONObject jSONObject3 = new JSONObject(jSONObject.optString("custom"));
                    HashMap map8 = new HashMap();
                    Iterator<String> itKeys8 = jSONObject3.keys();
                    while (itKeys8.hasNext()) {
                        String next8 = itKeys8.next();
                        map8.put(next8, jSONObject3.opt(next8));
                    }
                    bVar.f8675c = map8;
                } catch (Throwable unused5) {
                }
            }
            bVar.ar = jSONObject.optInt(a.aR);
            bVar.as = jSONObject.optInt(a.aS);
            bVar.at = jSONObject.optString(a.aT);
            if (!jSONObject.isNull(a.aY)) {
                bVar.au = jSONObject.optString(a.aY);
            }
            if (!jSONObject.isNull(a.aZ)) {
                bVar.av = jSONObject.optString(a.aZ);
            }
            if (!jSONObject.isNull(a.ba)) {
                bVar.aw = jSONObject.optString(a.ba);
            } else {
                bVar.aw = "1";
            }
            if (!jSONObject.isNull(a.bb)) {
                bVar.ax = jSONObject.optInt(a.bb);
            } else {
                bVar.ax = 1;
            }
            if (!jSONObject.isNull(a.f8724a)) {
                bVar.ay = jSONObject.optString(a.f8724a);
            }
            if (!jSONObject.isNull(a.f8744u)) {
                bVar.aB = jSONObject.optString(a.f8744u);
            }
            if (!jSONObject.isNull(a.f8728e)) {
                bVar.aC = jSONObject.optJSONObject(a.f8728e);
            }
            if (!jSONObject.isNull(a.f8729f) && (jSONObjectOptJSONObject2 = jSONObject.optJSONObject(a.f8729f)) != null) {
                bVar.aD = jSONObjectOptJSONObject2;
            }
            bVar.aE = jSONObject.optInt(a.f8730g, 0);
            bVar.aF = com.anythink.core.common.r.g.a(jSONObject.optJSONObject(a.f8734k));
            bVar.aG = jSONObject.optJSONObject(a.f8735l);
            bVar.aH = jSONObject.optInt(a.f8736m, 2);
            bVar.aI = jSONObject.optInt(a.f8737n, 2) == 1;
            JSONObject jSONObjectOptJSONObject14 = jSONObject.optJSONObject(a.f8738o);
            if (jSONObjectOptJSONObject14 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject14.optJSONObject("15")) != null) {
                bVar.aJ = jSONObjectOptJSONObject.optInt("hot_fix_sw", 2);
            }
            JSONObject jSONObjectOptJSONObject15 = jSONObject.optJSONObject(a.f8739p);
            if (jSONObjectOptJSONObject15 != null) {
                bVar.aK = jSONObjectOptJSONObject15.optString("c_t", "");
                bVar.aL = jSONObjectOptJSONObject15.optString("url", "");
            }
            JSONObject jSONObjectOptJSONObject16 = jSONObject.optJSONObject(a.f8740q);
            if (jSONObjectOptJSONObject16 != null) {
                bVar.az = jSONObjectOptJSONObject16.optInt(a.f8741r, 2);
                bVar.aA = jSONObjectOptJSONObject16.optInt(a.f8742s, 0);
            } else {
                bVar.az = 2;
                bVar.aA = 0L;
            }
            bVar.aM = jSONObject.optString(a.f8743t);
            bVar.aY = jSONObject.optInt(a.bc, 1);
            bVar.aN = jSONObject.optString(a.bd);
            bVar.f8676e = jSONObject.optLong(a.ah, com.anythink.core.common.g.c.f3507a);
            bVar.bg = jSONObject.optInt(a.bg, 2);
            bVar.a(jSONObject.optJSONArray(a.ai));
            bVar.bh = jSONObject.optInt(a.bh, 1);
            bVar.aO = jSONObject.optJSONObject(a.f8745v);
            bVar.bb = jSONObject.optInt(a.f8746w, 2);
            bVar.aS = jSONObject.optInt(a.f8747x, 2);
            bVar.aT = jSONObject.optString(a.f8748y);
            bVar.aU = jSONObject.optJSONArray(a.f8749z);
            bVar.aP = jSONObject.optInt(a.bi, 2);
            bVar.aR = jSONObject.optString(a.bk, "");
            bVar.aQ = jSONObject.optString(a.bj, "");
            JSONObject jSONObjectOptJSONObject17 = jSONObject.optJSONObject(m.a.aR);
            if (jSONObjectOptJSONObject17 != null) {
                bVar.f8667T = jSONObjectOptJSONObject17.optString(a.f8705H);
                bVar.f8669V = jSONObjectOptJSONObject17.optInt("domain_p");
                bVar.bc = jSONObjectOptJSONObject17.optString(a.f8698A);
                bVar.aW = jSONObjectOptJSONObject17.optString("adx_sdk_dl");
                bVar.aa = jSONObjectOptJSONObject17.optString("domain_http");
                bVar.ao = jSONObjectOptJSONObject17.optString(a.f8718U);
            }
            bVar.bd = jSONObject.optInt(a.f8699B);
            bVar.be = jSONObject.optInt(a.f8700C);
            bVar.aV = jSONObject.optInt("wv_c_sw", 2);
            JSONObject jSONObjectOptJSONObject18 = jSONObject.optJSONObject("st");
            com.anythink.core.common.m.b.c cVarA = com.anythink.core.common.m.b.c.a(jSONObjectOptJSONObject18);
            if (jSONObjectOptJSONObject18 != null) {
                bVar.aX = jSONObjectOptJSONObject18.optInt("plugin_attr_sw", 1);
            }
            bVar.bf = cVarA;
            if (!ATSDK.isCnSDK()) {
                com.anythink.core.common.n.a.c.a().a(com.anythink.core.common.n.a.k.f6004j, cVarA != null ? cVarA.a() : null);
            }
            bVar.f8673Z = jSONObject.optInt(a.f8702E, 0);
            bVar.ab = jSONObject.optLong(a.f8703F, 0L);
            JSONObject jSONObjectOptJSONObject19 = jSONObject.optJSONObject("open_ns");
            if (jSONObjectOptJSONObject19 != null) {
                bVar.ac = jSONObjectOptJSONObject19.optString(a.f8705H, "");
                bVar.ad = jSONObjectOptJSONObject19.optString(a.f8706I, "");
            }
            if (jSONObjectOptJSONObject18 != null) {
                bVar.ae = jSONObjectOptJSONObject18.optLong(a.f8707J, 10000L);
                bVar.af = jSONObjectOptJSONObject18.optLong(a.f8708K, 10000L);
                bVar.ag = jSONObjectOptJSONObject18.optLong(a.f8709L, i.l.f2678c);
                bVar.ah = jSONObjectOptJSONObject18.optInt(a.f8710M, 2);
                bVar.ai = jSONObjectOptJSONObject18.optInt(a.f8711N, 2);
            } else {
                bVar.ae = 10000L;
                bVar.af = 10000L;
                bVar.ag = i.l.f2678c;
            }
            bVar.f(jSONObject.optInt("strategy_domain_type_key", 0));
            if (jSONObjectOptJSONObject18 != null) {
                a(bVar, jSONObjectOptJSONObject18);
                bVar.an = jSONObjectOptJSONObject18.optInt(a.f8717T, 2);
            }
        } catch (Throwable unused6) {
        }
        return bVar;
    }

    private void b(Map<String, Object> map) {
        this.f8675c = map;
    }

    private void b(long j2) {
        this.aA = j2;
    }

    public static void a(b bVar, JSONObject jSONObject) {
        bVar.aj = jSONObject.optInt("anr_sw", 2);
        bVar.ak = jSONObject.optInt(a.f8714Q, 1);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(a.f8715R);
        if (jSONObjectOptJSONObject != null) {
            bVar.al = com.anythink.core.common.b.b.a(jSONObjectOptJSONObject);
        } else {
            bVar.al = com.anythink.core.common.b.b.c();
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("anr_dyna_st");
        if (jSONArrayOptJSONArray != null) {
            bVar.am = com.anythink.core.common.b.a.a(jSONArrayOptJSONArray);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(a.ae);
        if (jSONObjectOptJSONObject2 != null) {
            bVar.ap = com.anythink.core.common.b.h.a(jSONObjectOptJSONObject2);
        } else {
            bVar.ap = com.anythink.core.common.b.h.g();
        }
    }

    public final bw a(int i2) {
        Map<String, bw> map = this.f8659L;
        if (map != null) {
            return map.get(String.valueOf(i2));
        }
        return null;
    }

    private void a(boolean z2) {
        this.aI = z2;
    }

    public final void a(com.anythink.core.common.b.b bVar) {
        this.al = bVar;
    }

    public final void a(List<com.anythink.core.common.b.a> list) {
        this.am = list;
    }

    private void a(com.anythink.core.common.b.h hVar) {
        this.ap = hVar;
    }
}

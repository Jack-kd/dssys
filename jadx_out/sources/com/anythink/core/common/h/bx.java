package com.anythink.core.common.h;

import android.text.TextUtils;
import com.anythink.core.e.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class bx {

    /* renamed from: X, reason: collision with root package name */
    public static final String f4058X = "ofm_tid_key";

    /* renamed from: Y, reason: collision with root package name */
    public static final int f4059Y = 1;

    /* renamed from: Z, reason: collision with root package name */
    public static final int f4060Z = 2;
    public static final int aA = 40;
    public static final int aB = 0;
    public static final int aC = 1;
    public static final int aD = 2;
    public static final int aE = 8;
    public static final int aF = 9;
    public static final int aG = 10;
    public static final int aH = 11;
    public static final int aI = 3;
    public static final int aJ = 12;
    public static final int aK = 13;
    public static final int aL = 4;
    public static final int aM = 5;
    public static final int aN = 8;
    public static final int aO = 5;
    public static final int aP = 6;
    public static final int aQ = 7;
    public static final String aR = "0";
    public static final String aS = "1";
    public static final String aT = "2";
    public static final String aU = "3";
    public static final String aV = "4";
    public static final String aW = "50";
    public static final int aa = 3;
    public static final int ab = 4;
    public static final int ac = 5;
    public static final int ad = 6;
    public static final int ae = 7;
    public static final int af = 8;
    public static final int ag = 9;
    public static final int ah = 10;
    public static final int ai = 11;
    public static final int aj = 18;
    public static final int ak = 21;
    public static final int al = 25;
    public static final int am = 26;
    public static final int an = 27;
    public static final int ao = 28;
    public static final int ap = 29;
    public static final int aq = 30;
    public static final int ar = 31;
    public static final int as = 32;
    public static final int at = 33;
    public static final int au = 34;
    public static final int av = 35;
    public static final int aw = 36;
    public static final int ax = 37;
    public static final int ay = 38;
    public static final int az = 39;

    /* renamed from: a, reason: collision with root package name */
    private String f4061a;
    protected String aX;
    protected String aY;
    protected String aZ;

    /* renamed from: b, reason: collision with root package name */
    private String f4062b;
    protected String ba;
    public String bb;
    public int bc;
    public int bd;
    protected String be;
    protected int bf;
    protected int bg;
    protected int bh;
    protected Map<Integer, Integer> bi = new ConcurrentHashMap();
    protected int bj = -1;

    /* renamed from: c, reason: collision with root package name */
    private int f4063c;

    /* renamed from: d, reason: collision with root package name */
    private JSONObject f4064d;

    /* renamed from: e, reason: collision with root package name */
    private int f4065e;

    /* renamed from: f, reason: collision with root package name */
    private Object f4066f;

    /* renamed from: g, reason: collision with root package name */
    private JSONObject f4067g;

    /* renamed from: h, reason: collision with root package name */
    private String f4068h;

    /* renamed from: i, reason: collision with root package name */
    private String f4069i;

    private int c() {
        return this.bf;
    }

    private String d() {
        return this.bb;
    }

    private int e() {
        return this.bc;
    }

    private int f() {
        return this.bd;
    }

    public final void D(String str) {
        this.f4068h = str;
    }

    public final void E(String str) {
        this.f4061a = str;
    }

    public final void F(String str) {
        this.f4062b = str;
    }

    public final void G(String str) {
        this.be = str;
    }

    public final void H(String str) {
        this.ba = str;
    }

    public final void I(String str) {
        this.aX = str;
    }

    public final void J(String str) {
        this.aY = str;
    }

    public final void K(String str) {
        this.aZ = str;
    }

    public final void L(String str) {
        this.f4069i = str;
    }

    public JSONObject O(int i2) {
        Integer num;
        JSONObject jSONObject = new JSONObject();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis());
            jSONObject.put(com.anythink.core.common.m.f.br, sb.toString());
            jSONObject.put("type", i2);
            jSONObject.put(com.anythink.core.common.m.f.bn, this.aX);
            jSONObject.put("req_id", this.aY);
            if (!TextUtils.isEmpty(this.aZ)) {
                jSONObject.put("format", Integer.parseInt(this.aZ));
            }
            jSONObject.put("ps_id", com.anythink.core.common.d.s.b().r());
            String strG = com.anythink.core.common.d.s.b().g(this.aX);
            if (!TextUtils.isEmpty(strG)) {
                jSONObject.put("sessionid", strG);
            }
            int i3 = this.bj;
            if (i3 != -1) {
                jSONObject.put("traffic_group_id", i3);
            }
            if (this.bh == 1) {
                jSONObject.put("ofm_tid", this.bg);
                jSONObject.put("ofm_system", this.bf);
                jSONObject.put(com.anythink.core.common.m.f.f5764N, this.bh);
            }
            jSONObject.put("asid", this.ba);
            jSONObject.put(m.a.f8918T, this.f4061a);
            jSONObject.put(com.anythink.core.common.m.f.aj, this.f4062b);
            JSONObject jSONObject2 = this.f4064d;
            if (jSONObject2 != null) {
                jSONObject.put(m.a.aa, jSONObject2);
            }
            int i4 = this.f4065e;
            if (i4 > 0) {
                jSONObject.put("wf2_mode", i4);
            }
            JSONObject jSONObject3 = this.f4067g;
            if (jSONObject3 != null) {
                jSONObject.put("adap_c", jSONObject3);
            }
            if (!TextUtils.isEmpty(this.f4068h)) {
                jSONObject.put("x_c", new JSONArray(this.f4068h));
            }
            if (!TextUtils.isEmpty(aU())) {
                jSONObject.put("o_r", aU());
            }
            Map<Integer, Integer> map = this.bi;
            if (map != null && !map.isEmpty() && (num = this.bi.get(Integer.valueOf(i2))) != null && num.intValue() > 0) {
                jSONObject.put("smp_rate", num);
            }
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public final void a(JSONObject jSONObject) {
        this.f4067g = jSONObject;
    }

    public final JSONObject aF() {
        return this.f4067g;
    }

    public final Object aG() {
        return this.f4066f;
    }

    public final String aH() {
        return this.f4068h;
    }

    public final int aI() {
        return this.f4063c;
    }

    public final String aJ() {
        return this.f4061a;
    }

    public final String aK() {
        return this.f4062b;
    }

    public final void aL() {
        this.bf = 1;
    }

    public final int aM() {
        return this.bg;
    }

    public final String aN() {
        return this.be;
    }

    public final int aO() {
        return this.bj;
    }

    public final String aP() {
        return this.ba;
    }

    public final String aQ() {
        return this.aX;
    }

    public final String aR() {
        return this.aY;
    }

    public final String aS() {
        return this.aZ;
    }

    public final String aT() {
        String str = this.aZ;
        str.getClass();
        switch (str) {
            case "0":
                return "native";
            case "1":
                return "reward";
            case "2":
                return "banner";
            case "3":
                return "inter";
            case "4":
                return MediationConstant.RIT_TYPE_SPLASH;
            case "50":
                return "media_video";
            default:
                return com.baidu.mobads.sdk.internal.a.f10877a;
        }
    }

    public final String aU() {
        return TextUtils.isEmpty(this.f4069i) ? this.aY : this.f4069i;
    }

    public final void aq(int i2) {
        this.f4065e = i2;
    }

    public final void ar(int i2) {
        this.f4063c = i2;
    }

    public final void as(int i2) {
        this.bh = i2;
    }

    public final void at(int i2) {
        this.bg = i2;
    }

    public final void au(int i2) {
        this.bj = i2;
    }

    public final void b(int i2, int i3) {
        Map<Integer, Integer> map = this.bi;
        if (map != null) {
            map.put(Integer.valueOf(i2), Integer.valueOf(i3));
        }
    }

    public final void a(Object obj) {
        this.f4066f = obj;
    }

    private JSONObject a() {
        return this.f4064d;
    }

    public final void b(JSONObject jSONObject) {
        this.f4064d = jSONObject;
    }

    private void a(String str) {
        this.bb = str;
    }

    private int b() {
        return this.bh;
    }

    private void a(int i2) {
        this.bc = i2;
    }

    private void b(int i2) {
        this.bd = i2;
    }
}

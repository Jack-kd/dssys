package com.anythink.core.e;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATCustomAdapterConfig;
import com.anythink.core.common.h.aa;
import com.anythink.core.common.h.aq;
import com.anythink.core.common.h.by;
import com.anythink.core.e.m;
import com.meishu.sdk.platform.gdt.GDTConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f9026a = {"unit_id", "unitid", "slot_id", "placement_id", "zone_id", "ad_place_id", "position_id", GDTConstants.POS_ID, "placement_name", "spot_id", "ad_tag", "ad_id", "plid", "space_id", "location", "tagid", "adslot_id", ATAdConst.NETWORK_REQUEST_PARAMS_KEY.INSTANCE_ID, "pid"};

    private static String a(String str, by byVar) {
        int iY;
        try {
            iY = byVar.y();
        } catch (Throwable unused) {
        }
        if (iY != 3 && iY != 7 && byVar.n() != 35) {
            Map<String, Object> mapS = byVar.s();
            for (String str2 : f9026a) {
                String strA = com.anythink.core.common.v.p.a(mapS, str2, "");
                if (!TextUtils.isEmpty(strA)) {
                    return strA;
                }
            }
            return "";
        }
        return str;
    }

    public static List<by> b(m mVar) throws JSONException {
        List<by> listA = a(mVar, mVar.ay(), 0, 1);
        listA.addAll(a(mVar, mVar.az(), 4, 6));
        Collections.sort(listA);
        return listA;
    }

    public static List<by> c(m mVar) {
        return a(mVar, mVar.K(), 8, 10);
    }

    public static List<by> d(m mVar) {
        return a(mVar, mVar.bt(), 2, 12);
    }

    public static List<by> e(m mVar) {
        return a(mVar, mVar.bu(), 1, 13);
    }

    public static void a(m mVar, Map<String, by> map, List<by> list) {
        a(mVar, map, list, mVar.ay(), 0, 1);
        a(mVar, map, list, mVar.az(), 0, 6);
        a(mVar, map, list, mVar.aA(), 1, 3);
        a(mVar, map, list, mVar.Z(), 3, 4);
        a(mVar, map, list, mVar.aB(), 2, 2);
        a(mVar, map, list, mVar.P(), 6, 11);
        a(mVar, map, list, mVar.aH(), 7, 8);
        a(mVar, map, list, mVar.aI(), 3, 5);
        a(mVar, map, list, mVar.K(), 8, 10);
        a(mVar, map, list, mVar.bt(), 2, 12);
        a(mVar, map, list, mVar.bu(), 1, 13);
    }

    private static void a(m mVar, Map<String, by> map, List<by> list, JSONArray jSONArray, int i2, int i3) {
        try {
            com.anythink.core.common.h.q qVarBf = mVar.bf();
            for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i4);
                if (jSONObjectOptJSONObject != null) {
                    by byVarA = a(i3, i2, jSONObjectOptJSONObject, mVar);
                    map.put(byVarA.G(), byVarA);
                    if (byVarA.n() == 35) {
                        list.add(byVarA);
                    }
                    a(mVar, byVarA);
                    if (qVarBf != null && byVarA.n() == 2) {
                        if (i2 == 0) {
                            qVarBf.f4355a = true;
                        }
                        if (i2 == 1) {
                            qVarBf.f4356b = true;
                        }
                    }
                    if (mVar.bo() == null && byVarA.w() && byVarA.ba() == 1) {
                        mVar.a(Boolean.TRUE);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(m mVar, by byVar) {
        if (byVar.az() > 0.0d || mVar == null) {
            return;
        }
        double dAL = mVar.aL();
        if (dAL > 0.0d) {
            byVar.d(dAL);
        }
    }

    public static List<by> a(m mVar) throws JSONException {
        List<by> listA = a(mVar, mVar.aA(), 1, 3);
        List<by> listA2 = a(mVar, mVar.Z(), 3, 4);
        List<by> listA3 = a(mVar, mVar.aB(), 2, 2);
        List<by> listA4 = a(mVar, mVar.P(), 6, 11);
        List<by> listA5 = a(mVar, mVar.aH(), 7, 8);
        List<by> listA6 = a(mVar, mVar.aI(), 3, 5);
        listA.addAll(listA2);
        listA.addAll(listA3);
        listA.addAll(listA4);
        listA.addAll(listA5);
        listA.addAll(listA6);
        return listA;
    }

    public static List<by> a(m mVar, JSONArray jSONArray) {
        return a(mVar, jSONArray, 3, 4);
    }

    private static List<by> a(m mVar, JSONArray jSONArray, int i2, int i3) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i4);
                if (jSONObject != null) {
                    by byVarA = a(i3, i2, jSONObject, mVar);
                    a(mVar, byVarA);
                    arrayList.add(byVarA);
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    private static by a(int i2, int i3, JSONObject jSONObject, m mVar) {
        String str;
        long j2;
        int i4;
        aa aaVarA;
        ATCustomAdapterConfig aTCustomAdapterConfigB;
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray;
        int i5 = (i3 == 0 || i3 == 4 || i3 == 8) ? 0 : 1;
        by byVar = new by(i2);
        byVar.i(i3);
        byVar.h(i5);
        if (jSONObject.isNull(com.anythink.core.common.k.f5360E)) {
            byVar.c("");
        } else {
            byVar.c(jSONObject.optString(com.anythink.core.common.k.f5360E));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5357B)) {
            byVar.f(-1);
        } else {
            byVar.f(jSONObject.optInt(com.anythink.core.common.k.f5357B));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5358C)) {
            byVar.g(-1);
        } else {
            byVar.g(jSONObject.optInt(com.anythink.core.common.k.f5358C));
        }
        if (jSONObject.isNull("nw_firm_id")) {
            byVar.e(-1);
        } else {
            byVar.e(jSONObject.optInt("nw_firm_id"));
        }
        if (jSONObject.isNull("content")) {
            byVar.b("");
            byVar.a(new HashMap());
        } else {
            String strOptString = jSONObject.optString("content");
            Map<String, Object> mapC = com.anythink.core.common.v.p.c(strOptString);
            if (byVar.n() == 22 && com.anythink.core.common.v.p.a(mapC, "unit_type", 0) == 1) {
                mapC.put("render_type", 1);
            }
            byVar.b(strOptString);
            byVar.a(mapC);
            byVar.k(a(mVar.i(), byVar));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5356A)) {
            byVar.a("");
        } else {
            byVar.a(jSONObject.optString(com.anythink.core.common.k.f5356A));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5361F)) {
            byVar.e("unknown");
        } else {
            byVar.e(jSONObject.optString(com.anythink.core.common.k.f5361F));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5406y)) {
            byVar.g(0L);
        } else {
            byVar.g(jSONObject.optInt(com.anythink.core.common.k.f5406y));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5404w)) {
            byVar.h(0L);
        } else {
            byVar.h(jSONObject.optInt(com.anythink.core.common.k.f5404w));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5405x)) {
            byVar.l(1);
        } else {
            byVar.l(jSONObject.optInt(com.anythink.core.common.k.f5405x));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5362G)) {
            byVar.i(-1L);
        } else {
            byVar.i(jSONObject.optLong(com.anythink.core.common.k.f5362G));
        }
        if (jSONObject.isNull("unit_id")) {
            byVar.f("");
        } else {
            byVar.f(jSONObject.optString("unit_id"));
        }
        if (jSONObject.isNull("ecpm")) {
            byVar.b(0.0d);
            str = "unit_type";
        } else {
            str = "unit_type";
            byVar.b(jSONObject.optDouble("ecpm", 0.0d));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5365J)) {
            byVar.j(2000L);
        } else {
            byVar.j(jSONObject.optInt(com.anythink.core.common.k.f5365J));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5367L)) {
            byVar.g("");
        } else {
            byVar.g(jSONObject.optString(com.anythink.core.common.k.f5367L));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5368M)) {
            byVar.m(0);
        } else {
            byVar.m(jSONObject.optInt(com.anythink.core.common.k.f5368M));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5369N)) {
            byVar.n(3000);
        } else {
            byVar.n(jSONObject.optInt(com.anythink.core.common.k.f5369N));
        }
        if (jSONObject.isNull("payload")) {
            byVar.h("");
        } else {
            byVar.h(jSONObject.optString("payload"));
        }
        if (jSONObject.isNull("error")) {
            byVar.i("");
        } else {
            byVar.i(jSONObject.optString("error"));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5370O)) {
            byVar.k(com.anythink.core.common.g.c.f3507a);
        } else {
            byVar.k(jSONObject.optLong(com.anythink.core.common.k.f5370O));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5371P)) {
            byVar.l(-1L);
        } else {
            byVar.l(jSONObject.optLong(com.anythink.core.common.k.f5371P));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5372Q)) {
            byVar.f(com.anythink.core.common.g.c.f3507a);
        } else {
            byVar.f(jSONObject.optLong(com.anythink.core.common.k.f5372Q));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.an)) {
            byVar.k(i5 ^ 1);
        } else {
            byVar.k(jSONObject.optInt(com.anythink.core.common.k.an));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5373R)) {
            byVar.o(1);
        } else {
            byVar.o(jSONObject.optInt(com.anythink.core.common.k.f5373R));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5374S)) {
            byVar.p(1);
        } else {
            byVar.p(jSONObject.optInt(com.anythink.core.common.k.f5374S));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5375T)) {
            byVar.q(-1);
        } else {
            byVar.q(jSONObject.optInt(com.anythink.core.common.k.f5375T));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5376U)) {
            byVar.j("publisher_defined");
        } else {
            byVar.j(jSONObject.optString(com.anythink.core.common.k.f5376U));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5377V)) {
            j2 = 0;
            byVar.m(0L);
        } else {
            j2 = 0;
            byVar.m(jSONObject.optLong(com.anythink.core.common.k.f5377V));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5378W)) {
            byVar.n(j2);
        } else {
            byVar.n(jSONObject.optLong(com.anythink.core.common.k.f5378W));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5379X)) {
            byVar.c(0.0d);
        } else {
            byVar.c(jSONObject.optDouble(com.anythink.core.common.k.f5379X, 0.0d));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5380Y)) {
            byVar.r(1);
        } else {
            byVar.r(jSONObject.optInt(com.anythink.core.common.k.f5380Y));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.f5381Z)) {
            byVar.s(1);
        } else {
            byVar.s(jSONObject.optInt(com.anythink.core.common.k.f5381Z));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.aa)) {
            byVar.t(2);
        } else {
            byVar.t(jSONObject.optInt(com.anythink.core.common.k.aa));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.ab)) {
            byVar.j(1);
        } else {
            byVar.j(jSONObject.optInt(com.anythink.core.common.k.ab));
        }
        if (jSONObject.isNull("s2s_sw")) {
            byVar.u(2);
        } else {
            byVar.u(jSONObject.optInt("s2s_sw"));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.ac)) {
            byVar.w(2);
        } else {
            byVar.w(jSONObject.optInt(com.anythink.core.common.k.ac));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.ad)) {
            byVar.v(0);
        } else {
            byVar.v(jSONObject.optInt(com.anythink.core.common.k.ad));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.af)) {
            byVar.x(1);
        } else {
            byVar.x(jSONObject.optInt(com.anythink.core.common.k.af));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.ai)) {
            byVar.l("");
        } else {
            byVar.l(jSONObject.optString(com.anythink.core.common.k.ai));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.ag)) {
            byVar.y(2);
        } else {
            byVar.y(jSONObject.optInt(com.anythink.core.common.k.ag));
        }
        if (jSONObject.isNull("ad_type")) {
            i4 = -1;
            byVar.z(-1);
        } else {
            i4 = -1;
            byVar.z(jSONObject.optInt("ad_type", -1));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.aj)) {
            byVar.A(i4);
        } else {
            byVar.A(jSONObject.optInt(com.anythink.core.common.k.aj, i4));
        }
        if (byVar.y() == 2 && byVar.n() == 22) {
            byVar.a(ATAdConst.CURRENCY.RMB_CENT);
        } else {
            byVar.a(ATAdConst.CURRENCY.USD);
        }
        if (jSONObject.isNull(com.anythink.core.common.k.ak)) {
            byVar.H(0);
        } else {
            byVar.H(jSONObject.optInt(com.anythink.core.common.k.ak, 0));
        }
        if (jSONObject.isNull("bid_floor")) {
            byVar.d(0.0d);
        } else {
            byVar.d(jSONObject.optDouble("bid_floor", 0.0d));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.ap)) {
            byVar.I(-1);
        } else {
            byVar.I(jSONObject.optInt(com.anythink.core.common.k.ap, -1));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.aq)) {
            byVar.e(byVar.K());
        } else {
            byVar.e(jSONObject.optDouble(com.anythink.core.common.k.aq, byVar.K()));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.ar)) {
            byVar.n("CNY");
        } else {
            byVar.n(jSONObject.optString(com.anythink.core.common.k.ar, "CNY"));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.as)) {
            byVar.J(2);
        } else {
            byVar.J(jSONObject.optInt(com.anythink.core.common.k.as, 2));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.at)) {
            byVar.M(1);
        } else {
            byVar.M(jSONObject.optInt(com.anythink.core.common.k.at));
        }
        if (jSONObject.isNull(com.anythink.core.common.k.au)) {
            byVar.N(2);
        } else {
            byVar.N(jSONObject.optInt(com.anythink.core.common.k.au, 2));
        }
        if (!jSONObject.has(com.anythink.core.common.k.av)) {
            byVar.o("TopOn");
        } else {
            byVar.o(jSONObject.optString(com.anythink.core.common.k.av));
        }
        byVar.p(jSONObject.optLong(com.anythink.core.common.k.aw, 15000L));
        int[] iArr = null;
        if (!jSONObject.isNull(m.a.ar) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(m.a.ar)) != null && jSONArrayOptJSONArray.length() > 0) {
            try {
                iArr = new int[jSONArrayOptJSONArray.length()];
                for (int i6 = 0; i6 < jSONArrayOptJSONArray.length(); i6++) {
                    iArr[i6] = jSONArrayOptJSONArray.getInt(i6);
                }
            } catch (Exception unused) {
            }
        }
        byVar.a(iArr);
        byVar.O(jSONObject.optInt(com.anythink.core.common.k.ax, 1));
        byVar.P(jSONObject.optInt(com.anythink.core.common.k.ay, 1));
        if (!jSONObject.isNull(com.anythink.core.common.k.az)) {
            byVar.a(jSONObject.optJSONArray(com.anythink.core.common.k.az));
        }
        if (!jSONObject.isNull(com.anythink.core.common.k.aA)) {
            byVar.Q(jSONObject.optInt(com.anythink.core.common.k.aA));
        }
        if (!jSONObject.isNull("ad_s_reqf_mode")) {
            byVar.R(jSONObject.optInt("ad_s_reqf_mode"));
        }
        byVar.T(jSONObject.optInt(str, 0));
        byVar.U(jSONObject.optInt(com.anythink.core.common.k.aD, 0));
        byVar.S(jSONObject.optInt("network_id"));
        byVar.V(jSONObject.optInt(com.anythink.core.common.k.aF, 2));
        byVar.h(jSONObject.optDouble(com.anythink.core.common.k.aP, 0.0d));
        byVar.g(jSONObject.optDouble(com.anythink.core.common.k.aQ, 0.0d));
        byVar.a(jSONObject.optJSONObject(com.anythink.core.common.k.aR));
        byVar.W(jSONObject.optInt(com.anythink.core.common.k.aS));
        byVar.X(jSONObject.optInt(com.anythink.core.common.k.aT, 1));
        aq aqVarBj = mVar.bj();
        if (aqVarBj != null) {
            aq aqVar = new aq();
            aqVar.b(aqVarBj.e());
            aqVar.a(aqVarBj.d());
            aqVar.a(aqVarBj.a());
            String strOptString2 = jSONObject.optString(com.anythink.core.common.k.aU);
            if (!TextUtils.isEmpty(strOptString2)) {
                aqVar.b(strOptString2);
            }
            String strOptString3 = jSONObject.optString(com.anythink.core.common.k.aV);
            if (!TextUtils.isEmpty(strOptString3)) {
                aqVar.d(strOptString3);
            }
            byVar.a(aqVar);
        }
        byVar.a(jSONObject.optDouble(com.anythink.core.common.k.aW, 0.0d));
        byVar.Y(jSONObject.optInt(com.anythink.core.common.k.aX, 2));
        byVar.Z(jSONObject.optInt(com.anythink.core.common.k.aY, 1));
        byVar.q(jSONObject.optLong(com.anythink.core.common.k.aZ, 500L));
        String strOptString4 = jSONObject.optString(com.anythink.core.common.k.ba);
        if (!TextUtils.isEmpty(strOptString4)) {
            try {
                aaVarA = aa.a(strOptString4);
            } catch (Throwable unused2) {
            }
        } else {
            aaVarA = byVar.n() == 2 ? aa.a() : null;
        }
        byVar.a(aaVarA);
        byVar.aa(jSONObject.optInt(com.anythink.core.common.k.bb, 0));
        byVar.r(jSONObject.optLong(com.anythink.core.common.k.bc, 0L));
        byVar.ab(mVar.ap());
        JSONObject jSONObjectBA = mVar.bA();
        if (jSONObjectBA != null && (jSONObjectOptJSONObject = jSONObjectBA.optJSONObject(String.valueOf(byVar.n()))) != null) {
            byVar.ac(jSONObjectOptJSONObject.optInt(com.anythink.core.common.k.bd, 2));
            byVar.p(jSONObjectOptJSONObject.optString(com.anythink.core.common.k.be, ""));
            byVar.f(jSONObjectOptJSONObject.optJSONArray(com.anythink.core.common.k.bf));
            byVar.b(jSONObjectOptJSONObject.optJSONArray(com.anythink.core.common.k.bg));
            byVar.c(jSONObjectOptJSONObject.optJSONArray(com.anythink.core.common.k.bh));
            byVar.ad(jSONObjectOptJSONObject.optInt(com.anythink.core.common.k.bt, 2));
            byVar.d(jSONObjectOptJSONObject.optJSONArray(com.anythink.core.common.k.bu));
            byVar.e(jSONObjectOptJSONObject.optJSONArray(com.anythink.core.common.k.bv));
        }
        byVar.ae(jSONObject.optInt(com.anythink.core.common.k.bi));
        byVar.s(jSONObject.optLong(com.anythink.core.common.k.bj));
        byVar.t(jSONObject.optLong(com.anythink.core.common.k.bk));
        byVar.i(jSONObject.optDouble(com.anythink.core.common.k.bl, 0.0d));
        byVar.B(jSONObject.optInt(com.anythink.core.common.k.bm, 2));
        byVar.C(jSONObject.optInt(com.anythink.core.common.k.bn, 2));
        byVar.D(jSONObject.optInt(com.anythink.core.common.k.bo, 0));
        JSONObject jSONObjectBF = mVar.bF();
        if (jSONObjectBF != null) {
            byVar.m(jSONObjectBF.optString(com.anythink.core.common.k.bp, ""));
        }
        byVar.E(jSONObject.optInt(com.anythink.core.common.k.bq, 2));
        byVar.af(jSONObject.optInt(com.anythink.core.common.k.br, 1));
        byVar.F(jSONObject.optInt(com.anythink.core.common.k.bs, 2));
        ATAdRequest aTAdRequest = mVar.f8881i;
        if (aTAdRequest != null) {
            byVar.a(aTAdRequest);
        }
        byVar.a(com.anythink.core.common.h.l.a(jSONObject.optJSONObject(com.anythink.core.common.k.bw)));
        byVar.c(jSONObject.optInt(com.anythink.core.common.k.bx, 2));
        byVar.b(jSONObject.optInt(com.anythink.core.common.k.by, 2));
        byVar.d(jSONObject.optLong(com.anythink.core.common.k.bz, 0L));
        byVar.d(jSONObject.optInt(com.anythink.core.common.k.bA, 2));
        byVar.a(jSONObject.optInt(com.anythink.core.common.k.bB, 0));
        byVar.ah(jSONObject.optInt(com.anythink.core.common.k.bC, 1));
        byVar.ai(jSONObject.optInt(com.anythink.core.common.k.bD, 2));
        byVar.v(jSONObject.optLong(com.anythink.core.common.k.bE, 500L));
        if (byVar.n() >= 100000 && (aTCustomAdapterConfigB = com.anythink.core.common.d.s.b().b(byVar.t())) != null) {
            byVar.j(aTCustomAdapterConfigB.isRealTimeBidSwitch() ? 2 : 1);
            byVar.g(aTCustomAdapterConfigB.getAdCacheTime());
            if (aTCustomAdapterConfigB.getLossNoticePostion() > 0) {
                byVar.I(aTCustomAdapterConfigB.getLossNoticePostion());
            }
        }
        return byVar;
    }

    private static void a(Map<String, Object> map, int i2) {
        if (map != null && i2 == 22 && com.anythink.core.common.v.p.a(map, "unit_type", 0) == 1) {
            map.put("render_type", 1);
        }
    }
}

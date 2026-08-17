package com.anythink.core.common.v;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.bridge.a;
import com.anythink.core.common.h.aq;
import com.anythink.core.common.h.ba;
import com.anythink.core.common.h.bq;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.ce;
import com.anythink.core.mg.api.MgPreLoadAdRequest;
import com.anythink.network.baidu.BaiduATConst;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ah {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8038a = "ah";

    public static com.anythink.core.common.h.n a(String str, String str2, com.anythink.core.e.m mVar, int i2, int i3, Map<String, Object> map, com.anythink.core.common.h.d dVar, int i4, ATAdRequest aTAdRequest, com.anythink.core.common.f fVar) {
        com.anythink.core.common.h.n nVar = new com.anythink.core.common.h.n();
        nVar.I(str2);
        nVar.J(str);
        nVar.C(i2);
        nVar.D(i2);
        nVar.E(com.anythink.core.common.t.a().a(str2) ? 1 : 2);
        nVar.f4343u = 0;
        nVar.f4342t = 2;
        nVar.f4344v = 0;
        a(nVar, mVar);
        nVar.aL();
        nVar.as(com.anythink.core.common.d.s.b().j());
        nVar.at(i3);
        if (mVar != null) {
            nVar.aq(mVar.q());
        } else {
            nVar.aq(2);
        }
        a(map, nVar);
        nVar.a(dVar);
        nVar.c(ATAdxSetting.getInstance().isAdxNetworkMode(str2));
        nVar.ae(i4);
        nVar.a(aTAdRequest);
        nVar.a(fVar);
        return nVar;
    }

    public static void b(com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter) {
        Map<String, Object> adExtraInfoMap;
        if (nVar == null || nVar.Z() != 66 || (adExtraInfoMap = aTBaseAdAdapter.getAdExtraInfoMap()) == null || adExtraInfoMap.isEmpty()) {
            return;
        }
        nVar.V(p.a(adExtraInfoMap, a.b.f1728b, 0));
        nVar.X(p.a(adExtraInfoMap, a.b.f1729c, 0));
        String strAS = nVar.aS();
        strAS.getClass();
        if (strAS.equals("1")) {
            nVar.t(p.a(adExtraInfoMap, a.b.f1730d, 0));
            nVar.ab(p.a(adExtraInfoMap, a.b.f1731e, 0));
        } else if (strAS.equals("3")) {
            nVar.ab(p.a(adExtraInfoMap, a.b.f1731e, 0));
            nVar.e(p.a(adExtraInfoMap, a.b.f1732f, 0));
            nVar.aa(p.a(adExtraInfoMap, a.b.f1733g, 0));
        }
        com.anythink.core.common.q.a(com.anythink.core.common.d.s.b().g()).a(adExtraInfoMap, nVar, 4);
    }

    public static void c(com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (nVar == null || aTBaseAdAdapter == null || nVar.Z() != 66) {
            return;
        }
        a(nVar, aTBaseAdAdapter.getAdExtraInfoMap());
    }

    private static void b(com.anythink.core.common.h.n nVar, by byVar) {
        aq aqVarBe = byVar.be();
        if (aqVarBe == null) {
            return;
        }
        nVar.g(aqVarBe.b());
        nVar.h(aqVarBe.f());
        if (byVar.bc()) {
            nVar.n(aqVarBe.e());
        } else {
            nVar.n(aqVarBe.d());
        }
        nVar.i(aqVarBe.a());
    }

    public static void a(Map<String, Object> map, com.anythink.core.common.h.n nVar) {
        if (map != null) {
            Object obj = map.get(ATAdConst.KEY.CP_PLACEMENT_ID);
            if (obj != null) {
                nVar.F(obj.toString());
            }
            Object obj2 = map.get(ATAdConst.KEY.CP_LOAD_MODE);
            if (obj2 instanceof Integer) {
                nVar.ar(Integer.parseInt(obj2.toString()));
            }
            Object obj3 = map.get(com.anythink.core.common.e.f3092b);
            if (obj3 != null) {
                nVar.a(obj3);
            }
            JSONObject jSONObjectA = ag.a(map);
            if (jSONObjectA != null) {
                nVar.a(jSONObjectA);
            }
        }
    }

    public static void a(String str, com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar) {
        if (mVar == null || nVar == null) {
            return;
        }
        com.anythink.core.common.h.d dVar = new com.anythink.core.common.h.d();
        dVar.a(str, mVar.ax(), mVar.ah());
        nVar.a(dVar);
    }

    public static void a(String str, com.anythink.core.common.h.n nVar) {
        com.anythink.core.e.m mVarA;
        if (nVar == null || TextUtils.isEmpty(str) || (mVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g()).a(str)) == null || !mVarA.bn()) {
            return;
        }
        a(str, mVarA, nVar);
    }

    public static void a(ATBaseAdAdapter aTBaseAdAdapter, com.anythink.core.common.h.n nVar, by byVar) {
        com.anythink.core.common.h.ad adVarY;
        int i2;
        com.anythink.core.common.h.ad adVarY2 = byVar.Y();
        if (adVarY2 != null) {
            nVar.l(byVar.aY());
            nVar.m(adVarY2.originPrice);
        }
        aTBaseAdAdapter.setUnitGroupInfo(byVar);
        aTBaseAdAdapter.setRefresh(nVar.V() == 1);
        try {
            nVar.f4347y = aTBaseAdAdapter.getInternalNetworkSDKVersion();
            nVar.f4346x = String.valueOf(aTBaseAdAdapter.internalBaseOnAdapterBridgeVersion());
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(nVar.aN())) {
            nVar.G(aTBaseAdAdapter.getInternalNetworkName());
        }
        nVar.k(aTBaseAdAdapter.getClass().getName());
        if (byVar.n() == 66 && (adVarY = byVar.Y()) != null) {
            try {
                i2 = Integer.parseInt(nVar.aS());
            } catch (Throwable unused2) {
                i2 = -2;
            }
            nVar.ac(adVarY.a(i2));
        }
        aTBaseAdAdapter.setTrackingInfo(nVar);
        byVar.a(aTBaseAdAdapter);
    }

    private static void a(com.anythink.core.common.h.n nVar, by byVar) {
        com.anythink.core.common.h.ad adVarY;
        int i2;
        if (byVar == null || nVar == null || byVar.n() != 66 || (adVarY = byVar.Y()) == null) {
            return;
        }
        try {
            i2 = Integer.parseInt(nVar.aS());
        } catch (Throwable unused) {
            i2 = -2;
        }
        nVar.ac(adVarY.a(i2));
    }

    public static void a(com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter) {
        Map<String, Object> adExtraInfoMap;
        if (nVar == null || nVar.Z() != 66 || (adExtraInfoMap = aTBaseAdAdapter.getAdExtraInfoMap()) == null || adExtraInfoMap.isEmpty()) {
            return;
        }
        nVar.M(p.a(adExtraInfoMap, a.b.f1727a, 0));
    }

    public static void a(com.anythink.core.common.h.n nVar, Map<String, Object> map) {
        if (nVar == null || map == null || map.isEmpty() || nVar.Z() != 66 || map.isEmpty()) {
            return;
        }
        nVar.I(p.a(map, a.b.f1734h, 0));
        nVar.J(p.a(map, a.b.f1735i, 0));
        nVar.X(p.a(map, a.b.f1729c, 0));
        int iA = p.a(map, a.b.f1736j, 6);
        nVar.d(iA == 28);
        if (iA != 28) {
            com.anythink.core.common.q.a(com.anythink.core.common.d.s.b().g()).a(map, nVar, 6);
        }
    }

    public static void a(com.anythink.core.common.h.n nVar, by byVar, int i2, boolean z2) throws NumberFormatException {
        bq.a aVarA;
        com.anythink.core.common.h.ad adVarY;
        ba baVarB;
        String str;
        Integer.parseInt(nVar.aS());
        if (z2) {
            com.anythink.core.a.a.a(com.anythink.core.common.d.s.b().g());
            nVar.aQ();
            aVarA = com.anythink.core.a.a.a(byVar.G());
        } else {
            aVarA = null;
        }
        nVar.j(byVar.k());
        nVar.i(byVar.y());
        nVar.F(byVar.n());
        nVar.r(byVar.G());
        nVar.u(byVar.P());
        nVar.v(byVar.Q());
        nVar.m(byVar.ah());
        nVar.x(i2);
        nVar.t(byVar.r());
        nVar.z(aVarA != null ? aVarA.f4029e : 0);
        nVar.A(aVarA != null ? aVarA.f4028d : 0);
        if (byVar.X()) {
            nVar.j(byVar.K());
            nVar.f(byVar.aB());
            nVar.k(byVar.j());
        } else {
            nVar.j(0.0d);
            nVar.f(0.0d);
            nVar.k(0.0d);
        }
        nVar.a(byVar.aI());
        if (byVar.w()) {
            if (byVar.ai() != 2) {
                com.anythink.core.common.h.ad adVarY2 = byVar.Y();
                if (adVarY2 == null) {
                    str = "";
                } else if (adVarY2.s() == 3) {
                    str = "ecpm_api";
                } else {
                    str = adVarY2.f3684q;
                }
                if (TextUtils.isEmpty(str)) {
                    str = "exact";
                }
                nVar.o(str);
                if (!byVar.av()) {
                    nVar.g(byVar.K() * nVar.v());
                    nVar.h(byVar.j());
                } else if (adVarY2 != null) {
                    nVar.g(adVarY2.f3682o * nVar.v());
                    nVar.h(adVarY2.getRmbPrice());
                }
            }
            nVar.c(byVar.az() * nVar.v());
        } else {
            nVar.g(byVar.V());
            nVar.h(byVar.j());
            String strS = byVar.S();
            if (TextUtils.isEmpty(strS)) {
                strS = "publisher_defined";
            }
            nVar.o(strS);
        }
        nVar.w(byVar.v());
        nVar.l(byVar.L());
        nVar.bb = byVar.H();
        nVar.bc = byVar.I();
        nVar.bd = byVar.J();
        nVar.s(byVar.R());
        nVar.l(byVar.ai());
        try {
            Map<String, Object> mapS = byVar.s();
            JSONObject jSONObject = new JSONObject();
            if (35 == byVar.n()) {
                String strA = p.a(mapS, "my_oid");
                com.anythink.core.e.m mVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g()).a(nVar.aQ());
                if (mVarA != null && (baVarB = mVarA.b(strA)) != null) {
                    jSONObject.put("o_id", strA);
                    jSONObject.put("c_id", baVarB.j());
                }
            }
            if ("0".equals(nVar.aS()) && (3 == byVar.y() || 7 == byVar.y())) {
                String strA2 = p.a(mapS, "layout_type");
                if (TextUtils.isEmpty(strA2) || strA2.equals("0")) {
                    strA2 = "2";
                }
                jSONObject.put("tpl_type", strA2);
            }
            if (28 == byVar.n()) {
                com.anythink.core.common.h.ad adVarY3 = byVar.Y();
                if (adVarY3 != null) {
                    jSONObject.put(PointParamKey.ORIGIN_PRICE, adVarY3.originPrice);
                }
            } else if (22 == byVar.n() && (adVarY = byVar.Y()) != null) {
                jSONObject.put(BaiduATConst.EN_P_KEY, adVarY.getExtra());
            }
            nVar.v(jSONObject.toString());
            nVar.Y(p.a(mapS, "render_type", 0));
            nVar.Z(p.a(mapS, "template_type", 0));
        } catch (Throwable unused) {
        }
        com.anythink.core.common.h.ad adVarY4 = byVar.Y();
        nVar.f(adVarY4 != null ? adVarY4.f3674g : "");
        nVar.H(byVar.ak());
        nVar.G(byVar.o());
        nVar.d(byVar.aU());
        aq aqVarBe = byVar.be();
        if (aqVarBe != null) {
            nVar.g(aqVarBe.b());
            nVar.h(aqVarBe.f());
            if (byVar.bc()) {
                nVar.n(aqVarBe.e());
            } else {
                nVar.n(aqVarBe.d());
            }
            nVar.i(aqVarBe.a());
        }
        nVar.a(byVar.bj());
        nVar.af(byVar.aH());
        nVar.ag(byVar.bl());
        nVar.n(byVar.bx());
        nVar.z(byVar.by());
        if (adVarY4 != null) {
            if (adVarY4.s() > 0) {
                nVar.A(adVarY4.t());
            }
            nVar.B(adVarY4.u());
            nVar.D(adVarY4.w());
            nVar.L(adVarY4.getOriginRequestId());
        }
        nVar.al(byVar.ar());
    }

    public static void a(com.anythink.core.common.h.n nVar, com.anythink.core.e.m mVar) {
        if (nVar == null || mVar == null) {
            return;
        }
        if (mVar.ap() == Integer.parseInt("1")) {
            nVar.u("1");
        } else {
            nVar.u("0");
        }
        nVar.au(mVar.ah());
        nVar.H(mVar.am());
        nVar.G(mVar.ax());
        nVar.K(String.valueOf(mVar.ap()));
        nVar.p(mVar.ad());
        nVar.q(mVar.ac());
        nVar.i(mVar.U());
        nVar.j(mVar.V());
        nVar.c(mVar.ab());
        nVar.a(mVar.ae());
        nVar.d(mVar.af());
        nVar.g(mVar.H());
        nVar.h(mVar.I());
        nVar.E(mVar.B());
        JSONObject jSONObjectAN = mVar.aN();
        if (jSONObjectAN != null) {
            nVar.b(jSONObjectAN);
        }
        nVar.aq(mVar.q());
        if (com.anythink.core.common.v.a().a(nVar.aQ())) {
            nVar.f(2);
        } else {
            nVar.f(1);
        }
        nVar.R(mVar.bd());
        nVar.ak(mVar.bC());
    }

    public static void a(com.anythink.core.common.h.n nVar, ce ceVar) {
        if (nVar != null) {
            nVar.g(ceVar.e());
            nVar.h(ceVar.f());
        }
    }

    public static void a(Context context, com.anythink.core.common.h.n nVar) throws NumberFormatException {
        System.currentTimeMillis();
        int i2 = Integer.parseInt(nVar.aS());
        com.anythink.core.a.a.a(context);
        int[] iArrA = com.anythink.core.a.a.a(Integer.parseInt(nVar.aS()));
        int i3 = iArrA[0];
        int i4 = iArrA[1];
        com.anythink.core.a.a.a(context);
        bq bqVarA = com.anythink.core.a.a.a(nVar.aQ(), i2);
        nVar.o(i3 + 1);
        nVar.p(i4 + 1);
        nVar.q(bqVarA.f4019c + 1);
        nVar.r(bqVarA.f4020d + 1);
    }

    public static void a(com.anythink.core.common.h.n nVar) {
        if (nVar != null) {
            nVar.j(0.0d);
            nVar.f(0.0d);
            nVar.g(0.0d);
            nVar.h(0.0d);
        }
    }

    public static void a(ATAdRequest aTAdRequest, com.anythink.core.common.h.n nVar) {
        if (aTAdRequest == null || nVar == null) {
            return;
        }
        try {
            ATAdRequest aTAdRequestB = nVar.b();
            if (aTAdRequestB != null) {
                MgPreLoadAdRequest preLoadInfo = aTAdRequest.getPreLoadInfo();
                MgPreLoadAdRequest preLoadInfo2 = aTAdRequestB.getPreLoadInfo();
                if (preLoadInfo == null || preLoadInfo2 == null) {
                    return;
                }
                preLoadInfo2.requestId = preLoadInfo.getRequestId();
            }
        } catch (Throwable unused) {
        }
    }
}

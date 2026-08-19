package com.anythink.core.c.d;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ab;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.ay;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.cg;
import com.anythink.core.common.h.n;
import com.anythink.core.common.k;
import com.anythink.core.common.m.j;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.ai;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.l;
import com.anythink.core.common.v.o;
import com.anythink.core.mg.api.MgAdInfo;
import com.anythink.core.mg.api.MgComparedResult;
import com.anythink.network.baidu.BaiduATConst;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: A, reason: collision with root package name */
    public static final int f2005A = 7;

    /* renamed from: B, reason: collision with root package name */
    public static final int f2006B = 8;

    /* renamed from: C, reason: collision with root package name */
    public static final int f2007C = 9;

    /* renamed from: D, reason: collision with root package name */
    public static final int f2008D = 10;

    /* renamed from: E, reason: collision with root package name */
    public static final int f2009E = 11;

    /* renamed from: F, reason: collision with root package name */
    public static final int f2010F = 12;

    /* renamed from: G, reason: collision with root package name */
    public static final String f2011G = "100";

    /* renamed from: H, reason: collision with root package name */
    public static final String f2012H = "102";

    /* renamed from: I, reason: collision with root package name */
    public static final String f2013I = "103";

    /* renamed from: J, reason: collision with root package name */
    public static final String f2014J = "103";

    /* renamed from: K, reason: collision with root package name */
    public static final String f2015K = "2";

    /* renamed from: L, reason: collision with root package name */
    public static final String f2016L = "1";

    /* renamed from: a, reason: collision with root package name */
    static final String f2017a = "c";

    /* renamed from: b, reason: collision with root package name */
    public static final String f2018b = "${AUCTION_PRICE}";

    /* renamed from: c, reason: collision with root package name */
    public static final String f2019c = "${AUCTION_PRICE_INT}";

    /* renamed from: d, reason: collision with root package name */
    public static final String f2020d = "${AUCTION_LOSS}";

    /* renamed from: e, reason: collision with root package name */
    public static final String f2021e = "${AUCTION_SEAT_ID}";

    /* renamed from: f, reason: collision with root package name */
    public static final String f2022f = "${AUCTION_BID_TO_WIN}";

    /* renamed from: g, reason: collision with root package name */
    public static final String f2023g = "${AUCTION_CURRENCY}";

    /* renamed from: h, reason: collision with root package name */
    public static final String f2024h = "${SECOND_PRICE}";

    /* renamed from: i, reason: collision with root package name */
    public static final String f2025i = "{__BIDDER__}";

    /* renamed from: j, reason: collision with root package name */
    public static final String f2026j = "${AUCTION_LOSS_BD}";

    /* renamed from: k, reason: collision with root package name */
    public static final String f2027k = "{__TS__}";

    /* renamed from: l, reason: collision with root package name */
    public static final String f2028l = "__ADN_TYPE__";

    /* renamed from: m, reason: collision with root package name */
    public static final String f2029m = "__ADN_NAME__";

    /* renamed from: n, reason: collision with root package name */
    public static final String f2030n = "__AD_N__";

    /* renamed from: o, reason: collision with root package name */
    public static final String f2031o = "__AD_TI__";

    /* renamed from: p, reason: collision with root package name */
    public static final String f2032p = "__AD_REQID__";

    /* renamed from: q, reason: collision with root package name */
    public static final String f2033q = "__IS_S__";

    /* renamed from: r, reason: collision with root package name */
    public static final String f2034r = "__IS_C__";

    /* renamed from: s, reason: collision with root package name */
    public static final String f2035s = "__AD_ECPM__";

    /* renamed from: t, reason: collision with root package name */
    public static final String f2036t = "${WIN_PRICE}";

    /* renamed from: u, reason: collision with root package name */
    public static final int f2037u = 1;

    /* renamed from: v, reason: collision with root package name */
    public static final int f2038v = 2;

    /* renamed from: w, reason: collision with root package name */
    public static final int f2039w = 3;

    /* renamed from: x, reason: collision with root package name */
    public static final int f2040x = 4;

    /* renamed from: y, reason: collision with root package name */
    public static final int f2041y = 5;

    /* renamed from: z, reason: collision with root package name */
    public static final int f2042z = 6;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f2065a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f2066b = 2;
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final int f2067a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f2068b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f2069c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f2070d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final int f2071e = 21;

        /* renamed from: f, reason: collision with root package name */
        public static final int f2072f = 22;

        /* renamed from: g, reason: collision with root package name */
        public static final int f2073g = 23;

        /* renamed from: h, reason: collision with root package name */
        public static final int f2074h = 24;

        /* renamed from: i, reason: collision with root package name */
        public static final int f2075i = 25;

        /* renamed from: j, reason: collision with root package name */
        public static final int f2076j = 26;

        /* renamed from: k, reason: collision with root package name */
        public static final int f2077k = 27;

        /* renamed from: l, reason: collision with root package name */
        public static final int f2078l = 28;

        /* renamed from: m, reason: collision with root package name */
        public static final int f2079m = 29;

        /* renamed from: n, reason: collision with root package name */
        public static final int f2080n = 30;

        /* renamed from: o, reason: collision with root package name */
        public static final int f2081o = 31;

        /* renamed from: p, reason: collision with root package name */
        public static final int f2082p = 32;

        /* renamed from: q, reason: collision with root package name */
        public static final int f2083q = 33;

        /* renamed from: r, reason: collision with root package name */
        public static final int f2084r = 34;

        /* renamed from: s, reason: collision with root package name */
        public static final int f2085s = 35;

        /* renamed from: t, reason: collision with root package name */
        public static final int f2086t = 36;

        /* renamed from: u, reason: collision with root package name */
        public static final int f2087u = 37;

        /* renamed from: v, reason: collision with root package name */
        public static final int f2088v = 38;

        public static boolean a(int i2) {
            return i2 == 34 || i2 == 35;
        }
    }

    public static void a(com.anythink.core.common.h.c cVar, boolean z2, int i2) {
        try {
            by unitGroupInfo = cVar.e().getUnitGroupInfo();
            n nVarI = cVar.i();
            ad adVarY = unitGroupInfo.Y();
            if (adVarY != null) {
                a(adVarY, new ay(z2 ? 2 : 1, unitGroupInfo, nVarI), true, i2);
            }
        } catch (Throwable unused) {
        }
    }

    private static by c(ad adVar) {
        if (adVar != null) {
            return adVar.f();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, Object> d(ad adVar) {
        if (adVar == null) {
            return null;
        }
        try {
            com.anythink.core.c.c.c cVar = adVar.f3686s;
            if (cVar != null) {
                return cVar.b() != null ? adVar.f3686s.b().getNetworkInfoMap() : adVar.f3686s.a().getInternalNetworkInfoMap();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(com.anythink.core.common.h.c cVar) {
        a(cVar, false, 25);
    }

    private static void a(com.anythink.core.common.h.c cVar, int i2, int i3) {
        try {
            by unitGroupInfo = cVar.e().getUnitGroupInfo();
            n nVarI = cVar.i();
            ad adVarY = unitGroupInfo.Y();
            if (adVarY != null) {
                ay ayVar = new ay(i2, unitGroupInfo, nVarI);
                ayVar.a(i3);
                a(adVarY, ayVar, true, i2 == 2 ? 34 : i2 == 11 ? 36 : 30);
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(final n nVar, final List<by> list, final long j2, final long j3, final int i2, final int i3) {
        com.anythink.core.common.v.b.c.a().e(new d(e.au, new Runnable() { // from class: com.anythink.core.c.d.c.1
            @Override // java.lang.Runnable
            public final void run() throws JSONException, NumberFormatException {
                Object obj;
                if (nVar == null) {
                    f.b("BiddingUtil#sendFinishHBTracking", "placementTrackingInfo is null.", s.b().r());
                    return;
                }
                JSONArray jSONArray = new JSONArray();
                nVar.u(j2);
                nVar.w(j3);
                nVar.v(System.currentTimeMillis());
                nVar.x(SystemClock.elapsedRealtime());
                nVar.f4342t = i2;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    by byVar = (by) list.get(i4);
                    if (i4 == 0) {
                        nVar.t(byVar.bD());
                    }
                    if (byVar.y() != 7 && byVar.w()) {
                        try {
                            int iB = byVar.B();
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("sorttype", iB);
                            jSONObject.put("unit_id", byVar.G());
                            jSONObject.put("bidresult", byVar.ab());
                            jSONObject.put("bid_token_succ_t", byVar.a());
                            jSONObject.put("bid_token_succ_ts", byVar.b());
                            jSONObject.put("bid_start_t", byVar.c());
                            jSONObject.put("bidprice", byVar.X() ? String.valueOf(byVar.K()) : "0");
                            jSONObject.put("bidprice_cny", byVar.X() ? String.valueOf(byVar.j()) : "0");
                            jSONObject.put(k.aq, byVar.X() ? String.valueOf(byVar.aB()) : "0");
                            jSONObject.put("nw_firm_id", String.valueOf(byVar.n()));
                            jSONObject.put("tp_bid_id", byVar.Y() != null ? byVar.Y().f3674g : null);
                            jSONObject.put("rl_bid_status", byVar.aa());
                            jSONObject.put("errormsg", byVar.M());
                            int iAk = byVar.ak();
                            String strValueOf = String.valueOf(i3);
                            if (!strValueOf.equals("0")) {
                                if (iAk == -1) {
                                    try {
                                        iAk = Integer.parseInt(strValueOf);
                                    } catch (Exception unused) {
                                    }
                                }
                                jSONObject.put("ad_type", iAk);
                            }
                            jSONObject.put("ads_list_type", byVar.k());
                            jSONObject.put("unit_type", byVar.aU());
                            ad adVarY = byVar.Y();
                            jSONObject.put("dd_ori_price", adVarY != null ? String.valueOf(adVarY.originPrice) : "0");
                            jSONObject.put(k.aP, byVar.aY());
                            jSONObject.put(k.aS, byVar.ba());
                            jSONObject.put("bid_floor", byVar.az());
                            jSONObject.put(BaiduATConst.EN_P_KEY, adVarY != null ? adVarY.getExtra() : "");
                            if (adVarY != null && adVarY.s() != 0) {
                                jSONObject.put("deal_id", adVarY.u());
                                jSONObject.put("deal_type", adVarY.t());
                                nVar.A(adVarY.t());
                                nVar.B(adVarY.u());
                            }
                            jSONObject.put(k.bk, byVar.by());
                            jSONObject.put(k.bl, byVar.bx());
                            jSONObject.put("network_pl_id", ai.a(byVar, null));
                            jSONObject.put("nw_ver", byVar.f4076B);
                            jSONObject.put(k.bC, byVar.bI());
                            jSONObject.put("adapter_bridge_ver", byVar.f4077C);
                            Map mapD = c.d(adVarY);
                            if (mapD != null && (obj = mapD.get("nw_extra_info")) != null) {
                                jSONObject.put("nw_extra_info", obj);
                            }
                            jSONArray.put(jSONObject);
                        } catch (Exception unused2) {
                        }
                        try {
                            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(s.b().g()).b(s.b().p());
                            if (bVarB != null && bVarB.c() != null) {
                                String strValueOf2 = String.valueOf(byVar.n());
                                if (bVarB.c().contains(Integer.valueOf(byVar.n()))) {
                                    f.a(nVar, strValueOf2, l.a(strValueOf2), byVar.G());
                                }
                            }
                        } catch (Throwable unused3) {
                        }
                    }
                }
                nVar.K(String.valueOf(i3));
                nVar.w(jSONArray.toString());
                com.anythink.core.common.u.e.a(s.b().g());
                com.anythink.core.common.u.e.a(11, nVar);
            }
        }));
    }

    public static void a(ad adVar, boolean z2, double d2, boolean z3, boolean z4, by byVar) {
        double sortPrice;
        if (adVar == null) {
            return;
        }
        double d3 = adVar.f3679l;
        String str = adVar.f3677j;
        int i2 = adVar.f3671d;
        double d4 = d3 > 0.0d ? d2 * d3 : d2;
        if (z2) {
            Pair<Double, Double> pairA = a(adVar, byVar);
            double dDoubleValue = pairA != null ? ((Double) pairA.first).doubleValue() : 0.0d;
            if (TextUtils.isEmpty(str)) {
                str = adVar.displayNoticeUrl;
            }
            if (!TextUtils.isEmpty(str)) {
                if (d3 > 0.0d) {
                    dDoubleValue *= d3;
                }
                a(str.replace(f2022f, String.valueOf(dDoubleValue)).replace(f2018b, com.anythink.core.c.d.a.a(adVar, d4)), (com.anythink.core.common.m.s) null);
            }
        } else {
            if (i2 == 28) {
                sortPrice = adVar.originPrice;
            } else {
                sortPrice = adVar.getSortPrice();
            }
            if (d3 > 0.0d) {
                sortPrice *= d3;
            }
            by byVarA = a(adVar);
            if (byVarA != null) {
                double dA = o.a(byVarA);
                if (d3 > 0.0d) {
                    dA *= d3;
                }
                sortPrice = Math.max(sortPrice, dA);
            } else if (byVar != null && byVar.az() > 0.0d) {
                double dAz = byVar.az();
                if (d3 > 0.0d) {
                    dAz *= d3;
                }
                sortPrice = Math.max(sortPrice, dAz);
            }
            if (sortPrice != 0.0d) {
                double d5 = 0.01d + sortPrice;
                if (d5 < d4) {
                    sortPrice = d5;
                }
            }
            String str2 = adVar.displayNoticeUrl;
            if (!TextUtils.isEmpty(str2)) {
                a(str2.replace(f2022f, String.valueOf(sortPrice)).replace(f2018b, com.anythink.core.c.d.a.a(adVar, d4)).replace(f2020d, com.anythink.core.c.d.a.a(z3, 2, i2, z4)), (com.anythink.core.common.m.s) null);
            }
        }
        synchronized (adVar) {
            try {
                ATBiddingNotice aTBiddingNotice = adVar.biddingNotice;
                if (aTBiddingNotice != null) {
                    aTBiddingNotice.notifyBidDisplay(z2, d4);
                    if (z2) {
                        adVar.e();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static by a(ad adVar) {
        if (adVar != null) {
            return adVar.g();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:268:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0198  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(final com.anythink.core.common.h.ad r43, final com.anythink.core.common.h.ay r44, boolean r45, int r46) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.d.c.a(com.anythink.core.common.h.ad, com.anythink.core.common.h.ay, boolean, int):void");
    }

    private static void a(String str, com.anythink.core.common.m.s sVar) {
        j.b(str).a(0, sVar);
    }

    private static void a(String str, cg cgVar) {
        if (cgVar == null) {
            return;
        }
        j.a(str, cgVar).a(0, (com.anythink.core.common.m.s) null);
    }

    public static void a(cg cgVar) {
        n nVarY = cgVar.y();
        nVarY.a(ab.a(cgVar));
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(24, nVarY);
        f.a(cgVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0019 A[Catch: Exception -> 0x001e, TRY_LEAVE, TryCatch #0 {Exception -> 0x001e, blocks: (B:7:0x000c, B:9:0x000f, B:11:0x0014, B:12:0x0019), top: B:25:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.anythink.core.api.bridge.ATBaseAdAdapter r2, com.anythink.core.common.h.by r3, com.anythink.core.common.h.n r4, com.anythink.core.api.BaseAd... r5) {
        /*
            if (r2 == 0) goto L59
            if (r3 == 0) goto L59
            com.anythink.core.common.h.ad r0 = r3.Y()
            if (r0 == 0) goto L59
            if (r5 == 0) goto L19
            int r1 = r5.length     // Catch: java.lang.Exception -> L1e
            if (r1 <= 0) goto L19
            r1 = 0
            r5 = r5[r1]     // Catch: java.lang.Exception -> L1e
            if (r5 == 0) goto L19
            java.util.Map r2 = r5.getNetworkInfoMap()     // Catch: java.lang.Exception -> L1e
            goto L1f
        L19:
            java.util.Map r2 = r2.getInternalNetworkInfoMap()     // Catch: java.lang.Exception -> L1e
            goto L1f
        L1e:
            r2 = 0
        L1f:
            com.anythink.core.common.h.cg r5 = new com.anythink.core.common.h.cg
            r5.<init>()
            com.anythink.core.common.h.n r1 = r4.ah()
            r1.a(r2)
            r5.a(r1)
            r5.a(r2)
            r5.a(r3)
            int r2 = r5.d()
            if (r2 == 0) goto L41
            int r2 = r5.d()
            r3.J(r2)
        L41:
            r0.f3689v = r5
            int r2 = r4.Z()
            r4 = 66
            if (r2 != r4) goto L59
            boolean r2 = r1.al()
            if (r2 == 0) goto L59
            com.anythink.core.basead.a.b r2 = new com.anythink.core.basead.a.b
            r2.<init>(r0, r3, r1)
            r0.a(r2)
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.d.c.a(com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.h.by, com.anythink.core.common.h.n, com.anythink.core.api.BaseAd[]):void");
    }

    private static double a(ad adVar, double d2) {
        double d3 = adVar.f3679l;
        return d3 > 0.0d ? d2 * d3 : d2;
    }

    private static double a(int i2, double d2, double d3) {
        if (i2 == 2) {
            return d3 + 0.01d;
        }
        if (i2 == 3) {
            return d2;
        }
        if (i2 == 4) {
            return 0.0d;
        }
        if (i2 == 5) {
            return -1.0d;
        }
        double d4 = 0.01d + d3;
        return d4 + (((d3 * 1.3d) - d4) * new Random(System.currentTimeMillis()).nextDouble());
    }

    private static double a(MgComparedResult mgComparedResult) {
        MgAdInfo mgAdInfo = mgComparedResult != null ? mgComparedResult.getMgAdInfo() : null;
        if (mgAdInfo != null) {
            return mgAdInfo.getUSDEcpm();
        }
        return 0.0d;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.anythink.core.common.h.c r7, int r8) {
        /*
            r0 = 11
            r1 = 2
            r2 = 1
            if (r8 == r2) goto L15
            if (r8 == r1) goto L12
            r3 = 3
            if (r8 == r3) goto L10
            r3 = 6
            if (r8 == r3) goto L15
            r3 = r1
            goto L16
        L10:
            r3 = r0
            goto L16
        L12:
            r3 = 10
            goto L16
        L15:
            r3 = 7
        L16:
            com.anythink.core.api.bridge.ATBaseAdAdapter r4 = r7.e()     // Catch: java.lang.Throwable -> L3f
            com.anythink.core.common.h.by r4 = r4.getUnitGroupInfo()     // Catch: java.lang.Throwable -> L3f
            com.anythink.core.common.h.n r7 = r7.i()     // Catch: java.lang.Throwable -> L3f
            com.anythink.core.common.h.ad r5 = r4.Y()     // Catch: java.lang.Throwable -> L3f
            if (r5 == 0) goto L3f
            com.anythink.core.common.h.ay r6 = new com.anythink.core.common.h.ay     // Catch: java.lang.Throwable -> L3f
            r6.<init>(r3, r4, r7)     // Catch: java.lang.Throwable -> L3f
            r6.a(r8)     // Catch: java.lang.Throwable -> L3f
            if (r3 != r1) goto L35
            r7 = 34
            goto L3c
        L35:
            if (r3 != r0) goto L3a
            r7 = 36
            goto L3c
        L3a:
            r7 = 30
        L3c:
            a(r5, r6, r2, r7)     // Catch: java.lang.Throwable -> L3f
        L3f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.d.c.a(com.anythink.core.common.h.c, int):void");
    }

    private static Pair<Double, Double> a(ad adVar, by byVar) {
        cg cgVar;
        Double dValueOf = null;
        if (adVar == null || byVar == null) {
            return null;
        }
        double d2 = 0.0d;
        try {
            cgVar = adVar.f3689v;
        } catch (Exception e2) {
            e = e2;
        }
        if (cgVar == null) {
            return null;
        }
        double dA = o.a(byVar);
        o.b(byVar);
        double d3 = adVar.f3685r;
        Double dA2 = cgVar.a();
        double dDoubleValue = dA2 != null ? dA2.doubleValue() : d3;
        if (adVar.r() || (dDoubleValue <= dA && dDoubleValue > 0.0d)) {
            d3 = dDoubleValue;
        } else if (d3 != 0.0d) {
            dValueOf = Double.valueOf(dDoubleValue);
            cgVar.a(dValueOf);
            d3 = dA - 0.01d;
            if (d3 < 0.0d) {
                d3 = 0.0d;
            }
        }
        try {
            if (byVar.n() == 8) {
                double dAz = byVar.az();
                if (dAz > 0.0d && dAz > d3) {
                    d3 = dAz;
                }
            }
        } catch (Exception e3) {
            e = e3;
            d2 = d3;
            e.printStackTrace();
            d3 = d2;
            return new Pair<>(Double.valueOf(d3), dValueOf);
        }
        return new Pair<>(Double.valueOf(d3), dValueOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.anythink.core.common.h.ad r19, com.anythink.core.common.h.by r20, int r21) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.d.c.a(com.anythink.core.common.h.ad, com.anythink.core.common.h.by, int):void");
    }
}

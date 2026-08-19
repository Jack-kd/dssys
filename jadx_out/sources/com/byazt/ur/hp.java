package com.byazt.ur;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.ap.j;
import com.byazt.di.l;
import com.byazt.dq.w;
import com.byazt.jz.d;
import com.byazt.mey.jx;
import com.byazt.rz.PluginConstants;
import com.byazt.tgw.e;
import com.byazt.tgw.eb;
import com.byazt.tgw.s;
import com.byazt.zg.a;
import com.byazt.zg.gu;
import com.byazt.zg.nu;
import com.byazt.zg.o;
import com.byazt.zn.ec;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.cl;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1379, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: com.byazt.ur.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0388hp {
        void hp(com.byazt.dq.hp hpVar);

        void hp(eb ebVar);
    }

    public static int hp(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return (i2 == 3 || i2 == 4 || i2 == 7 || i2 == 8) ? 5 : 3;
        }
        return 4;
    }

    private void jx(JSONObject jSONObject) throws JSONException {
        if (a.hp(l.getContext()) != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("latitude", r0.hp);
                jSONObject2.put("longitude", r0.f28431l);
                jSONObject.put("geo", jSONObject2);
            } catch (Exception unused) {
            }
        }
    }

    private JSONObject l() {
        if (TextUtils.isEmpty(l.l().xs())) {
            return null;
        }
        try {
            return new JSONObject(l.l().xs());
        } catch (Exception unused) {
            return null;
        }
    }

    private JSONObject l(com.byazt.iqm.l lVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            int iEc = lVar.ec();
            jSONObject.put("id", lVar.sz());
            jSONObject.put("adtype", iEc);
            jSONObject.put("pos", hp(iEc));
            if (d.f21856j < 7500) {
                hp(jSONObject, "accepted_size", lVar.ns(), lVar.cx());
            } else {
                hp(jSONObject, "accepted_size", w.hp(l.getContext(), lVar.zy()), w.hp(l.getContext(), lVar.k()));
            }
            jSONObject.put("is_support_dpl", lVar.di());
            int iB = lVar.b();
            int i2 = 1;
            if (iB <= 0) {
                iB = 1;
            }
            if (iB > 3) {
                iB = 3;
            }
            if (iEc != 7 && iEc != 8) {
                i2 = iB;
            }
            jSONObject.put(PointParamKey.AD_COUNT, i2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private String hp(Map<String, com.byazt.ewl.hp> map, Context context, com.byazt.iqm.l lVar, e eVar, Map<String, Object> map2) {
        if (lVar != null && eVar != null) {
            if (TextUtils.equals("baidu", eVar.v())) {
                com.byazt.xl.l lVarHp = com.byazt.xl.l.hp(eVar, (com.byazt.kq.hp) null);
                com.byazt.ewl.hp hpVarHp = jx.hp(lVarHp, lVar, (com.byazt.ewl.l) null);
                if (hpVarHp == null) {
                    return "";
                }
                try {
                    map.put(String.format("%1$s_%2$s_%3$s", lVar.hp(), lVar.sz(), eVar.vv()), hpVarHp);
                    return hpVarHp.getBiddingToken(context, lVarHp, lVar);
                } catch (Throwable unused) {
                    return "";
                }
            }
            return com.byazt.uhd.hp.hp(map2, eVar.v());
        }
        com.byazt.aw.l.l("serverBiddingRequest", "adSlot is null or waterFallConfig is null can not get server bidding token");
        return "";
    }

    private JSONObject jx() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", com.byazt.di.hp.jl().zy());
            jSONObject.put("name", com.byazt.di.hp.jl().ec());
            l(jSONObject);
            jx(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void l(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("package_name", nu.hp());
            jSONObject.put("version_code", nu.l());
            jSONObject.put(cl.f49059n, nu.jx());
        } catch (Exception unused) {
        }
    }

    public void hp(Map<String, com.byazt.ewl.hp> map, Context context, com.byazt.pj.jx jxVar, final InterfaceC0388hp interfaceC0388hp) throws JSONException {
        boolean z2;
        com.byazt.iqm.l lVar = jxVar.hp;
        List<e> list = jxVar.f24412l;
        List<com.byazt.rt.jx> list2 = jxVar.jx;
        com.byazt.tgw.l lVar2 = jxVar.f24411j;
        int i2 = jxVar.f24414w;
        boolean z3 = jxVar.f24410a;
        final long j2 = jxVar.eb;
        final JSONObject jSONObject = new JSONObject();
        com.byazt.ap.w wVarL = com.byazt.xr.l.hp().l().l();
        wVarL.hp(com.byazt.di.jx.jx());
        String strS = com.byazt.di.hp.jl().s();
        if (!TextUtils.isEmpty(strS)) {
            wVarL.l("X-Tt-Env", strS);
            wVarL.l("x-use-ppe", "1");
        }
        wVarL.l("User-Agent", com.byazt.rt.l.hp);
        boolean zEb = l.l().eb();
        boolean z4 = !zEb;
        if (!zEb) {
            wVarL.l("x-pglcypher", "4");
            z2 = z4;
            wVarL.hp("application/octet-stream", nu.l(hp(map, context, lVar, list, list2, lVar2, i2, z3, jSONObject, false, j2)));
            com.byazt.owd.a.hp(jSONObject, "0-encrypt", j2);
            if (wVarL.w() != null && wVarL.w().f26222w != null) {
                nu.hp(com.byazt.di.jx.jx(), wVarL.w().f26222w, true);
            }
        } else {
            z2 = z4;
            String strHp = hp(map, context, lVar, list, list2, lVar2, i2, z3, jSONObject, true, j2);
            com.byazt.owd.a.hp(jSONObject, "0-encrypt", j2);
            wVarL.jx(strHp);
            if (wVarL.w() != null && wVarL.w().f26220j != null) {
                nu.hp(com.byazt.di.jx.jx(), wVarL.w().f26220j, true);
            }
        }
        final boolean z5 = z2;
        wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.ur.hp.1
            @Override // com.byazt.mnb.hp
            public void hp(j jVar, com.byazt.oyr.l lVar3) throws JSONException {
                JSONObject jSONObject2;
                JSONObject jSONObject3;
                com.byazt.owd.a.hp(jSONObject, "0-net", j2);
                if (lVar3 == null) {
                    com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding Request onResponse...response is null");
                    hp.this.hp(-1, "response is null", interfaceC0388hp, z5);
                    return;
                }
                int iL = lVar3.l();
                if (nu.hp(lVar3)) {
                    nu.hp(com.byazt.di.jx.jx(), lVar3.gu(), false);
                    String strHp2 = nu.hp(lVar3.gu());
                    com.byazt.owd.a.hp(jSONObject, "0-decrypt", j2);
                    if (TextUtils.isEmpty(strHp2)) {
                        com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding Request onResponse...response v4 is empty");
                        hp.this.hp(iL, "response is empty", interfaceC0388hp, z5);
                        return;
                    }
                    try {
                        hp.this.hp(new JSONObject(strHp2), jSONObject, interfaceC0388hp, z5, j2);
                        return;
                    } catch (Throwable th) {
                        hp.this.hp(81014, th.getMessage(), interfaceC0388hp, z5);
                        return;
                    }
                }
                if (TextUtils.isEmpty(lVar3.w())) {
                    com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding Request onResponse...response is empty");
                    hp.this.hp(iL, "response is empty", interfaceC0388hp, z5);
                    return;
                }
                try {
                    nu.hp(com.byazt.di.jx.jx(), lVar3.w(), false);
                    JSONObject jSONObject4 = new JSONObject(lVar3.w());
                    int iOptInt = jSONObject4.optInt("cypher", -1);
                    String strOptString = jSONObject4.optString("message");
                    if (iOptInt < 0 || TextUtils.isEmpty(strOptString)) {
                        int iOptInt2 = jSONObject4.optInt("status_code", -2);
                        int iOptInt3 = jSONObject4.optInt(MediationConstant.KEY_REASON, -2);
                        String strOptString2 = jSONObject4.optString("desc");
                        com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding onResponse error ");
                        hp.this.hp(iOptInt2, "reason is " + iOptInt3 + "，desc is " + strOptString2, interfaceC0388hp, z5);
                        return;
                    }
                    if (iOptInt == 2) {
                        String strHp3 = nu.hp(strOptString);
                        com.byazt.owd.a.hp(jSONObject, "0-decrypt", j2);
                        if (TextUtils.isEmpty(strHp3)) {
                            jSONObject3 = null;
                            jSONObject2 = jSONObject3;
                        } else {
                            try {
                                jSONObject3 = new JSONObject(strHp3);
                            } catch (Throwable th2) {
                                com.byazt.aw.l.hp("ServerBiddingHelper", ">>>>> server bidding data error: " + th2.toString());
                            }
                            jSONObject2 = jSONObject3;
                        }
                    } else {
                        if (iOptInt == 1) {
                            String strL = com.byazt.zg.hp.l(strOptString, com.byazt.zg.l.hp());
                            com.byazt.owd.a.hp(jSONObject, "0-decrypt", j2);
                            if (!TextUtils.isEmpty(strL)) {
                                try {
                                    jSONObject3 = new JSONObject(strL);
                                } catch (Throwable th3) {
                                    com.byazt.aw.l.hp("ServerBiddingHelper", "server bidding data error: ", th3);
                                }
                                jSONObject2 = jSONObject3;
                            }
                        } else if (iOptInt == 0) {
                            jSONObject2 = new JSONObject(strOptString);
                        }
                        jSONObject3 = null;
                        jSONObject2 = jSONObject3;
                    }
                    hp.this.hp(jSONObject2, jSONObject, interfaceC0388hp, z5, j2);
                } catch (Throwable th4) {
                    hp.this.hp(81006, th4.getMessage(), interfaceC0388hp, z5);
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(j jVar, IOException iOException) {
                int i3 = iOException instanceof SocketTimeoutException ? 44405 : 44404;
                com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding Request onError...errorCode=".concat(String.valueOf(i3)));
                hp.this.hp(i3, "request fail " + iOException.getMessage(), interfaceC0388hp, z5);
            }
        });
    }

    private String l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            com.byazt.qyg.hp hpVarHp = com.byazt.uhd.hp.hp(str);
            if (hpVarHp != null) {
                return hpVarHp.getNetworkSdkVersion();
            }
            com.byazt.gkj.j jVarHp = com.byazt.uhd.l.hp().hp(str);
            if (jVarHp == null) {
                return null;
            }
            return jVarHp.getNetworkSdkVersion();
        } catch (Throwable th) {
            com.byazt.aw.l.j("TTMediationSDK_SDK_Init", "GDT SDK 初始化失败。。 e=" + th.toString());
            return null;
        }
    }

    private void hp(boolean z2, long j2) {
        o.hp(z2 ? "v4Enc_exchange" : "v2Enc_exchange", true, j2, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str, InterfaceC0388hp interfaceC0388hp, boolean z2) {
        o.hp(z2 ? "v4Enc_exchange" : "v2Enc_exchange", false, 0L, "code = " + i2 + "，msg = " + str);
        hp(interfaceC0388hp, new com.byazt.dq.hp(i2, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(JSONObject jSONObject, JSONObject jSONObject2, InterfaceC0388hp interfaceC0388hp, boolean z2, long j2) throws JSONException {
        String str;
        String str2;
        String str3;
        JSONArray jSONArray;
        String str4;
        s sVar;
        JSONObject jSONObjectOptJSONObject;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
        if (jSONObject == null) {
            com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding Request onResponse...data is null");
            hp(-1, "data is null", interfaceC0388hp, z2);
            return;
        }
        if (TextUtils.isEmpty(jSONObject.toString())) {
            com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding Request onResponse..data.string is null ");
            hp(-1, "data.string is null", interfaceC0388hp, z2);
            return;
        }
        eb ebVar = new eb();
        ebVar.hp(jSONObject2);
        ebVar.jx(jSONObject.optString("request_id"));
        ebVar.w(jSONObject.optString("server_bidding_extra"));
        ebVar.j(jSONObject.optString("server_request_id"));
        s sVar2 = new s();
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("winner");
        String str5 = "price";
        if (jSONObjectOptJSONObject2 == null) {
            str = "ServerBiddingHelper";
        } else {
            sVar2.l(jSONObjectOptJSONObject2.optInt("req_bidding_type"));
            sVar2.jx(jSONObjectOptJSONObject2.optString("price"));
            sVar2.j(jSONObjectOptJSONObject2.optString("load_price"));
            sVar2.e(jSONObjectOptJSONObject2.optString("adm"));
            sVar2.w(jSONObjectOptJSONObject2.optString("name"));
            sVar2.eb(jSONObjectOptJSONObject2.optString("app_id"));
            sVar2.a(jSONObjectOptJSONObject2.optString("slot_id"));
            str = "ServerBiddingHelper";
            sVar2.s(jSONObjectOptJSONObject2.optString("win_callback", null));
            sVar2.q(jSONObjectOptJSONObject2.optString("fail_callback", null));
            sVar2.hp(jSONObjectOptJSONObject2.optInt("pricing_type", 1));
            ebVar.hp(sVar2);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("winners");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            str2 = str;
        } else {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < jSONArrayOptJSONArray.length()) {
                try {
                    sVar = new s();
                    jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    jSONArray = jSONArrayOptJSONArray;
                } catch (Throwable th) {
                    th = th;
                    str3 = str5;
                    jSONArray = jSONArrayOptJSONArray;
                }
                try {
                    sVar.l(jSONObjectOptJSONObject.optInt("req_bidding_type"));
                    sVar.jx(jSONObjectOptJSONObject.optString(str5));
                    sVar.j(jSONObjectOptJSONObject.optString("load_price"));
                    sVar.e(jSONObjectOptJSONObject.optString("adm"));
                    sVar.w(jSONObjectOptJSONObject.optString("name"));
                    sVar.eb(jSONObjectOptJSONObject.optString("app_id"));
                    sVar.a(jSONObjectOptJSONObject.optString("slot_id"));
                    str3 = str5;
                    try {
                        sVar.s(jSONObjectOptJSONObject.optString("win_callback", null));
                        sVar.q(jSONObjectOptJSONObject.optString("fail_callback", null));
                        sVar.hp(jSONObjectOptJSONObject.optString("m_aid", null));
                        sVar.l(jSONObjectOptJSONObject.optString("ad_extra", null));
                        try {
                            sVar.hp(jSONObjectOptJSONObject.optInt("pricing_type", 1));
                            arrayList.add(sVar);
                            str4 = str;
                        } catch (Throwable th2) {
                            th = th2;
                            str4 = str;
                            com.byazt.aw.l.hp(str4, "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                            i2++;
                            str = str4;
                            str5 = str3;
                            jSONArrayOptJSONArray = jSONArray;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    str3 = str5;
                    str4 = str;
                    com.byazt.aw.l.hp(str4, "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                    i2++;
                    str = str4;
                    str5 = str3;
                    jSONArrayOptJSONArray = jSONArray;
                }
                i2++;
                str = str4;
                str5 = str3;
                jSONArrayOptJSONArray = jSONArray;
            }
            str2 = str;
            ebVar.hp(arrayList);
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("auto_detail");
        if (jSONObjectOptJSONObject3 != null) {
            ebVar.hp(jSONObjectOptJSONObject3.optString("est_price"));
            ebVar.hp(jSONObjectOptJSONObject3.optInt("est_price_source"));
            ebVar.l(jSONObjectOptJSONObject3.optString("bidding_ecpm"));
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("waterfall");
        if (jSONObjectOptJSONObject4 != null) {
            eb.hp hpVar = new eb.hp();
            hpVar.hp(jSONObjectOptJSONObject4.optString(cl.f49059n));
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject4.optJSONArray("adn_rit_conf");
            ArrayList arrayList2 = new ArrayList();
            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    try {
                        JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray2.optJSONObject(i3);
                        e eVar = new e();
                        eVar.jx(jSONObjectOptJSONObject5.optString(MediationConstant.EXTRA_ADN_NAME));
                        eVar.w(jSONObjectOptJSONObject5.optString("adn_slot_id"));
                        arrayList2.add(eVar);
                    } catch (Throwable th5) {
                        com.byazt.aw.l.hp(str2, "new waterfallListJson parse error: " + th5.toString());
                    }
                }
            }
            hpVar.hp(arrayList2);
            ebVar.hp(hpVar);
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("invalid_non_server_bidding_results");
        ArrayList arrayList3 = new ArrayList();
        if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
            for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                try {
                    JSONObject jSONObjectOptJSONObject6 = jSONArrayOptJSONArray3.optJSONObject(i4);
                    com.byazt.tgw.a aVar = new com.byazt.tgw.a();
                    aVar.hp(jSONObjectOptJSONObject6.optString("name"));
                    aVar.l(jSONObjectOptJSONObject6.optString("slot_id"));
                    aVar.hp(jSONObjectOptJSONObject6.optInt("req_bidding_type"));
                    aVar.l(jSONObjectOptJSONObject6.optInt("error_code"));
                    aVar.jx(jSONObjectOptJSONObject6.optString("error_msg"));
                    aVar.j(jSONObjectOptJSONObject6.optString("level_tag"));
                    arrayList3.add(aVar);
                } catch (Throwable th6) {
                    com.byazt.aw.l.hp(str2, "new invalid_non_server_bidding_results parse error: " + th6.toString());
                }
            }
            ebVar.l(arrayList3);
        }
        com.byazt.owd.a.hp(jSONObject2, "0-parse", j2);
        hp(interfaceC0388hp, ebVar);
        hp(z2, jElapsedRealtime);
    }

    private void hp(eb ebVar, String str) {
        JSONObject jSONObject;
        if (ebVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            int iOptInt = jSONObject2.optInt("cypher", -1);
            String strOptString = jSONObject2.optString("message");
            if (iOptInt < 0 || TextUtils.isEmpty(strOptString)) {
                com.byazt.aw.l.j("ServerBiddingHelper", "m_meta onResponse error ");
                return;
            }
            JSONObject jSONObject3 = null;
            if (iOptInt == 4) {
                com.byazt.pg.w wVarA = nu.a();
                String strDecryptWithCBC = wVarA != null ? wVarA.decryptWithCBC(strOptString) : null;
                if (!TextUtils.isEmpty(strDecryptWithCBC)) {
                    try {
                        jSONObject = new JSONObject(strDecryptWithCBC);
                        jSONObject3 = jSONObject;
                    } catch (Throwable th) {
                        com.byazt.aw.l.hp("ServerBiddingHelper", ">>>>> m_meta data 4 error: " + th.toString());
                    }
                }
            } else if (iOptInt == 2) {
                String strHp = nu.hp(strOptString);
                if (!TextUtils.isEmpty(strHp)) {
                    try {
                        jSONObject = new JSONObject(strHp);
                        jSONObject3 = jSONObject;
                    } catch (Throwable th2) {
                        com.byazt.aw.l.hp("ServerBiddingHelper", ">>>>> m_meta data 2 error: " + th2.toString());
                    }
                }
            } else if (iOptInt == 1) {
                String strL = com.byazt.zg.hp.l(strOptString, com.byazt.zg.l.hp());
                if (!TextUtils.isEmpty(strL)) {
                    try {
                        jSONObject = new JSONObject(strL);
                        jSONObject3 = jSONObject;
                    } catch (Throwable th3) {
                        com.byazt.aw.l.hp("ServerBiddingHelper", "m_meta data 1 error: ", th3);
                    }
                }
            } else if (iOptInt == 0) {
                jSONObject3 = new JSONObject(strOptString);
            }
            if (jSONObject3 == null) {
                com.byazt.aw.l.j("ServerBiddingHelper", "m_meta...data is null");
            } else {
                if (TextUtils.isEmpty(jSONObject3.toString())) {
                    com.byazt.aw.l.j("ServerBiddingHelper", "m_meta..data.string is null ");
                    return;
                }
                ebVar.jx(jSONObject3.optString("request_id"));
                ebVar.w(jSONObject3.optString("server_bidding_extra"));
                ebVar.j(jSONObject3.optString("server_request_id"));
            }
        } catch (Throwable th4) {
            com.byazt.aw.l.j("ServerBiddingHelper", "m_meta onResponse throwable ：".concat(String.valueOf(th4.toString())));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.byazt.tgw.s hp(org.json.JSONObject r7) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ur.hp.hp(org.json.JSONObject):com.byazt.tgw.s");
    }

    public void hp(String str, InterfaceC0388hp interfaceC0388hp) {
        if (!TextUtils.isEmpty(str)) {
            try {
                eb ebVar = new eb();
                JSONObject jSONObject = new JSONObject(str);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("items");
                String strOptString = jSONObject.optString("m_meta");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        try {
                            s sVarHp = hp(jSONArrayOptJSONArray.optJSONObject(i2));
                            if (sVarHp != null) {
                                arrayList.add(sVarHp);
                            }
                        } catch (Throwable th) {
                            com.byazt.aw.l.hp("ServerBiddingHelper", "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                        }
                    }
                    ebVar.hp(arrayList);
                }
                hp(ebVar, strOptString);
                hp(interfaceC0388hp, ebVar);
                return;
            } catch (Throwable th2) {
                String string = th2.toString();
                com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding onResponse throwable ：".concat(String.valueOf(string)));
                if (TextUtils.isEmpty(string)) {
                    string = com.byazt.dq.hp.hp(-1);
                }
                hp(interfaceC0388hp, new com.byazt.dq.hp(-1, string));
                return;
            }
        }
        com.byazt.aw.l.j("ServerBiddingHelper", "Server Bidding Request onResponse...response is invalid");
        hp(interfaceC0388hp, new com.byazt.dq.hp(-1, "response is invalid"));
    }

    private void hp(final InterfaceC0388hp interfaceC0388hp, final com.byazt.dq.hp hpVar) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.ur.hp.2
            @Override // java.lang.Runnable
            public void run() {
                InterfaceC0388hp interfaceC0388hp2 = interfaceC0388hp;
                if (interfaceC0388hp2 != null) {
                    interfaceC0388hp2.hp(hpVar);
                }
            }
        });
    }

    private void hp(final InterfaceC0388hp interfaceC0388hp, final eb ebVar) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.ur.hp.3
            @Override // java.lang.Runnable
            public void run() {
                InterfaceC0388hp interfaceC0388hp2 = interfaceC0388hp;
                if (interfaceC0388hp2 != null) {
                    interfaceC0388hp2.hp(ebVar);
                }
            }
        });
    }

    private JSONObject hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public String hp(Map<String, com.byazt.ewl.hp> map, Context context, com.byazt.iqm.l lVar, List<e> list, com.byazt.tgw.l lVar2, int i2, boolean z2, JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (context == null) {
            return "";
        }
        try {
            jSONObject2 = new JSONObject(hp(map, context, lVar, list, null, lVar2, i2, z2, jSONObject, false, SystemClock.elapsedRealtime()));
        } catch (Exception unused) {
            jSONObject2 = null;
        }
        com.byazt.pg.w wVarA = nu.a();
        if (wVarA != null) {
            return wVarA.encryptBody(jSONObject2).toString();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0569 A[Catch: Exception -> 0x04c2, TryCatch #18 {Exception -> 0x04c2, blocks: (B:137:0x04b3, B:139:0x04b8, B:142:0x04c7, B:144:0x04fe, B:146:0x0504, B:148:0x0521, B:163:0x055c, B:165:0x055f, B:167:0x0569, B:168:0x056e, B:170:0x057e, B:171:0x0582, B:173:0x0588, B:175:0x0590, B:177:0x05a2, B:180:0x05b5, B:181:0x05bc, B:183:0x05f4, B:184:0x05fd, B:178:0x05ab, B:187:0x0614), top: B:235:0x04b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x057e A[Catch: Exception -> 0x04c2, TryCatch #18 {Exception -> 0x04c2, blocks: (B:137:0x04b3, B:139:0x04b8, B:142:0x04c7, B:144:0x04fe, B:146:0x0504, B:148:0x0521, B:163:0x055c, B:165:0x055f, B:167:0x0569, B:168:0x056e, B:170:0x057e, B:171:0x0582, B:173:0x0588, B:175:0x0590, B:177:0x05a2, B:180:0x05b5, B:181:0x05bc, B:183:0x05f4, B:184:0x05fd, B:178:0x05ab, B:187:0x0614), top: B:235:0x04b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0492 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0245 A[Catch: all -> 0x0227, TRY_LEAVE, TryCatch #5 {all -> 0x0227, blocks: (B:47:0x01f4, B:49:0x0223, B:56:0x0245), top: B:210:0x01f4 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String hp(java.util.Map<java.lang.String, com.byazt.ewl.hp> r35, android.content.Context r36, com.byazt.iqm.l r37, java.util.List<com.byazt.tgw.e> r38, java.util.List<com.byazt.rt.jx> r39, com.byazt.tgw.l r40, int r41, boolean r42, org.json.JSONObject r43, boolean r44, long r45) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ur.hp.hp(java.util.Map, android.content.Context, com.byazt.iqm.l, java.util.List, java.util.List, com.byazt.tgw.l, int, boolean, org.json.JSONObject, boolean, long):java.lang.String");
    }

    private String hp(com.byazt.iqm.l lVar, e eVar) {
        String strHp = lVar != null ? lVar.hp() : null;
        if (eVar == null) {
            return strHp;
        }
        return (strHp + "_") + eVar.vv();
    }

    private String hp(JSONObject jSONObject, boolean z2, boolean z3) throws JSONException {
        if (!z3) {
            if (jSONObject == null) {
                return null;
            }
            try {
                jSONObject.putOpt("token_type", Integer.valueOf(z2 ? 1 : 0));
            } catch (Exception unused) {
            }
            return jSONObject.toString();
        }
        JSONObject jSONObjectHp = nu.hp(jSONObject);
        if (jSONObjectHp == null) {
            return null;
        }
        try {
            jSONObjectHp.putOpt("token_type", Integer.valueOf(z2 ? 1 : 0));
        } catch (Exception unused2) {
        }
        return jSONObjectHp.toString();
    }

    private JSONObject hp(com.byazt.iqm.l lVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("request_id", lVar.hp());
            jSONObject.put("ad_sdk_version", com.byazt.rt.l.l());
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, com.byazt.rt.l.j());
            jSONObject.put(n.f36456s, "app");
            jSONObject.put("app", jx());
            JSONObject jSONObjectHp = com.byazt.zg.n.hp(l.getContext());
            if (jSONObjectHp != null && lVar.ud() > 0) {
                jSONObjectHp.put("orientation", lVar.ud());
            }
            jSONObject.put("device", jSONObjectHp);
            jSONObject.put("ua", com.byazt.rt.l.hp);
            jSONObject.put("ip", ec.hp());
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(l(lVar));
            jSONObject.put("adslots", jSONArray);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", jCurrentTimeMillis);
            String strConcat = "";
            if (lVar.sz() != null && lVar.hp() != null) {
                strConcat = String.valueOf(jCurrentTimeMillis).concat(lVar.sz()).concat(lVar.hp());
            }
            jSONObject.put("req_sign", gu.hp(strConcat));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void hp(JSONObject jSONObject, String str, int i2, int i3) throws JSONException {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", i2);
            jSONObject2.put("height", i3);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }
}

package com.anythink.core.common.q;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.AdError;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.s;
import com.anythink.core.common.f.b;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.k;
import com.anythink.core.common.v.ai;
import com.anythink.core.common.v.j;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class e implements com.anythink.core.common.k.e {

    /* renamed from: b, reason: collision with root package name */
    private static String f7241b = "anythink_s2s_reward";

    /* renamed from: a, reason: collision with root package name */
    com.anythink.core.common.f f7242a;

    /* renamed from: c, reason: collision with root package name */
    private int f7243c = -1;

    /* renamed from: d, reason: collision with root package name */
    private String f7244d = "";

    /* renamed from: e, reason: collision with root package name */
    private String f7245e = "";

    public e(com.anythink.core.common.f fVar) {
        this.f7242a = fVar;
    }

    public final String b() {
        return this.f7245e;
    }

    public final int a() {
        return this.f7243c;
    }

    @Override // com.anythink.core.common.k.e
    public final void a(final long j2, final ATBaseAdAdapter aTBaseAdAdapter, final n nVar) {
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cy, new Runnable() { // from class: com.anythink.core.common.q.e.1
            @Override // java.lang.Runnable
            public final void run() {
                n nVar2;
                String str;
                String str2;
                try {
                    if (aTBaseAdAdapter == null || (nVar2 = nVar) == null) {
                        return;
                    }
                    final String strAQ = nVar2.aQ();
                    String strH = nVar.h();
                    if (TextUtils.isEmpty(strH) || TextUtils.equals(strAQ, strH)) {
                        str = strAQ;
                        str2 = "";
                    } else {
                        str2 = strAQ;
                        str = strH;
                    }
                    m mVarA = o.a(s.b().g()).a(str);
                    if (mVarA != null && mVarA.bG() == 1) {
                        try {
                            Object objOpt = new JSONObject(a.a(mVarA.R())).opt("api_c");
                            if (objOpt == null) {
                                objOpt = new JSONObject();
                            }
                            String str3 = str2;
                            String strA = e.this.a(aTBaseAdAdapter, mVarA, nVar, str3, j2, objOpt);
                            by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                            if (TextUtils.isEmpty(strA) || unitGroupInfo == null || TextUtils.isEmpty(unitGroupInfo.ap())) {
                                return;
                            }
                            new c(s.b().g(), unitGroupInfo.ap(), strA, nVar, mVarA, str, str3).a(0, new com.anythink.core.common.m.s() { // from class: com.anythink.core.common.q.e.1.1
                                @Override // com.anythink.core.common.m.s
                                public final void onLoadCanceled(int i2) {
                                }

                                @Override // com.anythink.core.common.m.s
                                public final void onLoadError(int i2, String str4, AdError adError) {
                                    e.this.f7243c = -2;
                                    if (adError != null) {
                                        Log.e(e.f7241b, "S2S impression error! PlacementId: " + strAQ + ", " + adError.printStackTrace());
                                        e.this.f7245e = adError.toString();
                                        try {
                                            e.this.f7243c = Integer.parseInt(adError.getPlatformCode());
                                        } catch (Exception unused) {
                                        }
                                    }
                                }

                                @Override // com.anythink.core.common.m.s
                                public final void onLoadFinish(int i2, Object obj) {
                                    if (s.b().G()) {
                                        String unused = e.f7241b;
                                        Objects.toString(obj);
                                    }
                                    if (obj != null) {
                                        try {
                                            JSONObject jSONObject = new JSONObject(obj.toString());
                                            e.this.f7243c = jSONObject.optInt("code");
                                            if (e.this.f7243c == 0) {
                                                e.this.f7244d = jSONObject.optString("data");
                                            }
                                        } catch (Exception e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                }

                                @Override // com.anythink.core.common.m.s
                                public final void onLoadStart(int i2) {
                                }
                            });
                        } catch (Throwable unused) {
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(ATBaseAdAdapter aTBaseAdAdapter, m mVar, n nVar, String str, long j2, Object obj) throws JSONException {
        if (nVar != null) {
            try {
                JSONObject jSONObjectO = nVar.O(4);
                if (jSONObjectO != null) {
                    jSONObjectO.put(com.anythink.core.common.m.f.br, j2);
                    String userId = aTBaseAdAdapter.getUserId();
                    if (TextUtils.isEmpty(userId) && !TextUtils.isEmpty(str)) {
                        userId = ATInitMediation.getStringFromMap(this.f7242a.r(), "user_id");
                    }
                    jSONObjectO.put("api_c", obj);
                    jSONObjectO.put("user_id", userId);
                    jSONObjectO.put("curr_ts", j2);
                    jSONObjectO.put("ps_ct", mVar.aq());
                    jSONObjectO.put(m.a.ay, mVar.bp());
                    jSONObjectO.put(k.f5406y, ai.c(aTBaseAdAdapter.getUnitGroupInfo()));
                    return j.d(jSONObjectO.toString());
                }
                return "";
            } catch (Exception e2) {
                e2.printStackTrace();
                return "";
            }
        }
        return "";
    }

    @Override // com.anythink.core.common.k.e
    public final void a(final long j2, final long j3, final ATBaseAdAdapter aTBaseAdAdapter, final n nVar) {
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cz, new Runnable() { // from class: com.anythink.core.common.q.e.2
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                String str2;
                try {
                    final String strAQ = nVar.aQ();
                    String strH = nVar.h();
                    if (TextUtils.isEmpty(strH) || TextUtils.equals(strAQ, strH)) {
                        str = strAQ;
                        str2 = "";
                    } else {
                        str2 = strAQ;
                        str = strH;
                    }
                    m mVarA = o.a(s.b().g()).a(str);
                    if (mVarA.w() != 1) {
                        return;
                    }
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j4 = j3;
                    long j5 = (j4 == 0 || jElapsedRealtime < j4) ? jElapsedRealtime : j4;
                    JSONObject jSONObject = new JSONObject(a.a(mVarA.R()));
                    int iOptInt = jSONObject.optInt("a");
                    String strOptString = jSONObject.optString("b");
                    Object objOpt = jSONObject.opt("api_c");
                    if (objOpt == null) {
                        objOpt = new JSONObject();
                    }
                    b bVarA = a.a(strOptString, e.this.a(str, str2, j2, j5, nVar, aTBaseAdAdapter, objOpt));
                    if (TextUtils.isEmpty(bVarA.a())) {
                        com.anythink.core.common.u.f.a("1004658", str, str2, nVar, mVarA, "", bVarA.b());
                    } else {
                        new d(s.b().g(), iOptInt, bVarA.a(), nVar, mVarA, str, str2).a(0, new com.anythink.core.common.m.s() { // from class: com.anythink.core.common.q.e.2.1
                            @Override // com.anythink.core.common.m.s
                            public final void onLoadCanceled(int i2) {
                            }

                            @Override // com.anythink.core.common.m.s
                            public final void onLoadError(int i2, String str3, AdError adError) {
                                Log.e(e.f7241b, "S2S reward error! PlacementId: " + strAQ + ", " + adError.printStackTrace());
                            }

                            @Override // com.anythink.core.common.m.s
                            public final void onLoadFinish(int i2, Object obj) {
                                if (s.b().G()) {
                                    String unused = e.f7241b;
                                }
                            }

                            @Override // com.anythink.core.common.m.s
                            public final void onLoadStart(int i2) {
                            }
                        });
                    }
                } catch (Throwable unused) {
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2, long j2, long j3, n nVar, ATBaseAdAdapter aTBaseAdAdapter, Object obj) {
        String string;
        String stringFromMap;
        Map<String, Object> mapR;
        Map<String, Object> internalNetworkInfoMap;
        try {
            internalNetworkInfoMap = aTBaseAdAdapter.getInternalNetworkInfoMap();
        } catch (Throwable unused) {
        }
        if (internalNetworkInfoMap == null) {
            string = "";
        } else {
            string = new JSONObject(internalNetworkInfoMap).toString();
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.anythink.core.common.m.f.bn, str);
            jSONObject.put("req_id", nVar.aR());
            jSONObject.put("show_id", nVar.A());
            jSONObject.put("unit_id", nVar.N());
            jSONObject.put("nw_firm_id", nVar.Z());
            jSONObject.put("scenario_id", nVar.f4324H);
            jSONObject.put("rv_start_ts", j2);
            jSONObject.put("r_callback_ts", j3);
            jSONObject.put("rv_play_dur", j3 - j2);
            jSONObject.put("tp_bid_id", nVar.p());
            jSONObject.put(b.a.f3232f, string);
            try {
                String userId = aTBaseAdAdapter.getUserId();
                if (!TextUtils.isEmpty(userId) || TextUtils.isEmpty(str2)) {
                    stringFromMap = userId;
                    mapR = null;
                } else {
                    mapR = this.f7242a.r();
                    stringFromMap = ATInitMediation.getStringFromMap(mapR, "user_id");
                }
                String userCustomData = aTBaseAdAdapter.getUserCustomData();
                if (TextUtils.isEmpty(userCustomData) && !TextUtils.isEmpty(str2)) {
                    if (mapR == null) {
                        mapR = this.f7242a.r();
                    }
                    userCustomData = ATInitMediation.getStringFromMap(mapR, ATAdConst.KEY.USER_CUSTOM_DATA);
                }
                jSONObject.put("user_id", stringFromMap);
                jSONObject.put("extra_data", userCustomData);
            } catch (Exception unused2) {
            }
            jSONObject.put("curr_ts", System.currentTimeMillis());
            jSONObject.put("api_c", obj);
            JSONObject jSONObjectA = com.anythink.core.common.d.k.a(nVar, aTBaseAdAdapter).a();
            jSONObjectA.put("o_p_usd", nVar.M());
            jSONObjectA.put("cur_rate", nVar.v());
            jSONObject.put(m.a.f8933i, jSONObjectA.toString());
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put(m.a.an, str2);
            }
            jSONObject.put("i_t", this.f7244d);
            jSONObject.put("i_t_c", this.f7243c);
            return jSONObject.toString();
        } catch (Throwable unused3) {
            return "";
        }
    }

    private void a(String str, ATBaseAdAdapter aTBaseAdAdapter, JSONObject jSONObject) throws JSONException {
        String stringFromMap;
        Map<String, Object> mapR;
        try {
            String userId = aTBaseAdAdapter.getUserId();
            if (!TextUtils.isEmpty(userId) || TextUtils.isEmpty(str)) {
                stringFromMap = userId;
                mapR = null;
            } else {
                mapR = this.f7242a.r();
                stringFromMap = ATInitMediation.getStringFromMap(mapR, "user_id");
            }
            String userCustomData = aTBaseAdAdapter.getUserCustomData();
            if (TextUtils.isEmpty(userCustomData) && !TextUtils.isEmpty(str)) {
                if (mapR == null) {
                    mapR = this.f7242a.r();
                }
                userCustomData = ATInitMediation.getStringFromMap(mapR, ATAdConst.KEY.USER_CUSTOM_DATA);
            }
            jSONObject.put("user_id", stringFromMap);
            jSONObject.put("extra_data", userCustomData);
        } catch (Exception unused) {
        }
    }
}

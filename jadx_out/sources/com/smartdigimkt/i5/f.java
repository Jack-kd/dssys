package com.smartdigimkt.i5;

import com.anythink.network.baidu.BaiduATConst;
import com.smartdigimkt.sdk.core.SDKContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.g5.a f40753a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.a5.f f40754b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f40755c;

    public f(h hVar, com.smartdigimkt.g5.a aVar, com.smartdigimkt.a5.f fVar) {
        this.f40755c = hVar;
        this.f40753a = aVar;
        this.f40754b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws JSONException {
        com.smartdigimkt.q3.a aVarA = this.f40753a.f40412s.a();
        String str = this.f40755c.f40757c;
        JSONArray jSONArray = new JSONArray();
        com.smartdigimkt.h5.a aVar = this.f40753a.f40402i;
        if (aVar != null) {
            aVarA.f42774n = aVar.f40594d;
        }
        aVarA.f42776o = System.currentTimeMillis();
        aVarA.f42764i = 2;
        com.smartdigimkt.a5.f fVar = this.f40754b;
        if (fVar.f39441b == 67 || fVar.f39446g != 1 || fVar.f39440a == null) {
            return;
        }
        try {
            int i2 = fVar.f39449j;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sorttype", i2);
            jSONObject.put("unit_id", this.f40754b.f39450k);
            jSONObject.put("bidresult", this.f40754b.f39440a.f42221a ? "1" : "0");
            if (aVar != null) {
                jSONObject.put("bid_token_succ_t", aVar.f40595e);
                jSONObject.put("bid_start_t", aVar.f40594d);
            }
            com.smartdigimkt.a5.f fVar2 = this.f40754b;
            jSONObject.put("bidprice", fVar2.f39452m == 2 ? String.valueOf(fVar2.f39445f) : "0");
            com.smartdigimkt.a5.f fVar3 = this.f40754b;
            jSONObject.put("bidprice_cny", fVar3.f39452m == 2 ? String.valueOf(fVar3.f39438B) : "0");
            com.smartdigimkt.a5.f fVar4 = this.f40754b;
            jSONObject.put(com.anythink.core.common.k.aq, fVar4.f39452m == 2 ? String.valueOf(fVar4.f39458s) : "0");
            jSONObject.put("nw_firm_id", String.valueOf(this.f40754b.f39441b));
            com.smartdigimkt.o3.b bVar = this.f40754b.f39440a;
            String str2 = null;
            jSONObject.put("tp_bid_id", bVar != null ? bVar.f42256s : null);
            this.f40754b.getClass();
            jSONObject.put("rl_bid_status", 2);
            jSONObject.put("errormsg", this.f40754b.f39448i);
            jSONObject.put("ad_type", -1);
            jSONObject.put("ads_list_type", this.f40754b.f39454o);
            jSONObject.put("unit_type", this.f40754b.f39461v);
            com.smartdigimkt.o3.b bVar2 = this.f40754b.f39440a;
            jSONObject.put("dd_ori_price", bVar2 != null ? String.valueOf(bVar2.f42222b) : "0");
            jSONObject.put(com.anythink.core.common.k.aP, this.f40754b.f39462w);
            jSONObject.put(com.anythink.core.common.k.aS, this.f40754b.f39463x);
            jSONObject.put("bid_floor", this.f40754b.f39457r);
            if (bVar2 == null) {
                str2 = "";
            }
            jSONObject.put(BaiduATConst.EN_P_KEY, str2);
            if (bVar2 != null && bVar2.f42245M != 0) {
                jSONObject.put("deal_id", bVar2.f42246N);
                jSONObject.put("deal_type", bVar2.f42244L);
                aVarA.f42731J = bVar2.f42244L;
                aVarA.f42732K = bVar2.f42246N;
            }
            jSONObject.put(com.anythink.core.common.k.bk, this.f40754b.f39465z);
            jSONObject.put(com.anythink.core.common.k.bl, this.f40754b.f39464y);
            jSONObject.put("network_pl_id", aVarA.f42748a);
            jSONArray.put(jSONObject);
        } catch (Exception unused) {
        }
        aVarA.f42752c = this.f40753a.f40412s.f42752c;
        aVarA.f42778p = jSONArray.toString();
        com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(11, aVarA, -1L);
    }
}

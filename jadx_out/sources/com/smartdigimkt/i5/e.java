package com.smartdigimkt.i5;

import com.anythink.core.api.ATAdConst;
import com.smartdigimkt.sdk.api.ISDMAdManager;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class e implements ISDMAdManager.BidTokenCallBack {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.g5.a f40747a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f40748b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f40749c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.a5.e f40750d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.a5.f f40751e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ h f40752f;

    public e(h hVar, com.smartdigimkt.g5.a aVar, ArrayList arrayList, String str, com.smartdigimkt.a5.e eVar, com.smartdigimkt.a5.f fVar) {
        this.f40752f = hVar;
        this.f40747a = aVar;
        this.f40748b = arrayList;
        this.f40749c = str;
        this.f40750d = eVar;
        this.f40751e = fVar;
    }

    @Override // com.smartdigimkt.sdk.api.ISDMAdManager.BidTokenCallBack
    public final void onComplete(JSONObject jSONObject) {
        if (jSONObject == null) {
            this.f40747a.a(com.smartdigimkt.k4.b.a("10008", "bid token is empty"));
            h hVar = this.f40752f;
            com.smartdigimkt.g5.a aVar = this.f40747a;
            hVar.getClass();
            h.a("fail", aVar);
            this.f40752f.a(this.f40747a);
            return;
        }
        try {
            jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.GET_OFFER, 2);
            com.smartdigimkt.g5.a aVar2 = this.f40747a;
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.smartdigimkt.h5.a aVar3 = aVar2.f40402i;
            if (aVar3 != null) {
                aVar3.f40595e = jCurrentTimeMillis;
            }
            this.f40748b.add(jSONObject);
            String str = this.f40749c;
            com.smartdigimkt.a5.e eVar = this.f40750d;
            com.smartdigimkt.r4.e eVar2 = new com.smartdigimkt.r4.e(str, eVar, this.f40748b);
            if (com.smartdigimkt.z4.f.f45461a == null) {
                synchronized (com.smartdigimkt.z4.f.class) {
                    try {
                        if (com.smartdigimkt.z4.f.f45461a == null) {
                            com.smartdigimkt.z4.f.f45461a = new com.smartdigimkt.z4.f();
                        }
                    } finally {
                    }
                }
            }
            com.smartdigimkt.z4.f fVar = com.smartdigimkt.z4.f.f45461a;
            d dVar = new d(this);
            fVar.getClass();
            if (eVar == null) {
                dVar.a(com.smartdigimkt.k4.b.a("10008", "The placeStrategy is null."));
                return;
            }
            try {
                new com.smartdigimkt.q4.f(eVar2).a(0, (com.smartdigimkt.l4.b) new com.smartdigimkt.z4.e(eVar.f39415e, dVar));
            } catch (Throwable th) {
                dVar.a(com.smartdigimkt.k4.b.a("10008", "start bid request with an exception." + th));
            }
        } catch (Throwable unused) {
            this.f40747a.a(com.smartdigimkt.k4.b.a("10008", "bid token handle fail"));
            h hVar2 = this.f40752f;
            com.smartdigimkt.g5.a aVar4 = this.f40747a;
            hVar2.getClass();
            h.a("fail", aVar4);
            this.f40752f.a(this.f40747a);
        }
    }
}

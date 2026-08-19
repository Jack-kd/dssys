package com.smartdigimkt.d4;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.ISDMAdManager;
import com.smartdigimkt.z4.l;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class d implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ISDMAdManager.S2SBidTokenCallback f39898a;

    public d(String str, Map map, ISDMAdManager.S2SBidTokenCallback s2SBidTokenCallback) {
        this.f39898a = s2SBidTokenCallback;
    }

    @Override // com.smartdigimkt.z4.l
    public final void a() {
    }

    @Override // com.smartdigimkt.z4.l
    public final void b() {
    }

    @Override // com.smartdigimkt.z4.l
    public final void a(com.smartdigimkt.a5.e eVar) {
    }

    @Override // com.smartdigimkt.z4.l
    public final void b(com.smartdigimkt.a5.e eVar) {
        ISDMAdManager.S2SBidTokenCallback s2SBidTokenCallback = this.f39898a;
        try {
            if (eVar == null) {
                com.smartdigimkt.b4.e.a().c(new f(s2SBidTokenCallback, ""));
                return;
            }
            com.smartdigimkt.a5.f fVarB = eVar.b();
            if (fVarB == null) {
                com.smartdigimkt.b4.e.a().c(new f(s2SBidTokenCallback, ""));
                return;
            }
            JSONObject jSONObjectA = g.a(fVarB.f39450k);
            if (jSONObjectA == null) {
                com.smartdigimkt.b4.e.a().c(new f(s2SBidTokenCallback, ""));
            } else {
                com.smartdigimkt.b4.e.a().c(new f(s2SBidTokenCallback, com.smartdigimkt.c5.d.f(jSONObjectA.toString())));
            }
        } catch (Throwable th) {
            th.getMessage();
            com.smartdigimkt.b4.e.a().c(new f(s2SBidTokenCallback, ""));
        }
    }

    @Override // com.smartdigimkt.z4.l
    public final void a(AdError adError) {
        adError.getErrorInfo();
        com.smartdigimkt.b4.e.a().c(new f(this.f39898a, ""));
    }
}

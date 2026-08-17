package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.format.SDMAdEcpmInfo;

/* loaded from: classes5.dex */
public final class j implements SDMAdEcpmInfo {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.o3.b f40088a;

    public j(com.smartdigimkt.j1.f fVar) {
        this.f40088a = fVar != null ? fVar.f41075k : null;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdEcpmInfo
    public final double getEcpm(SDMAdConst.CURRENCY currency) {
        com.smartdigimkt.o3.b bVar;
        if (currency == null || (bVar = this.f40088a) == null) {
            return 0.0d;
        }
        return com.smartdigimkt.c5.n.a(bVar.f42223c, SDMAdConst.CURRENCY.USD, currency);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdEcpmInfo
    public final String getEncEcpmInfo(SDMAdConst.CURRENCY currency) {
        String str;
        com.smartdigimkt.o3.b bVar = this.f40088a;
        if (bVar == null) {
            str = "";
        } else if (currency == SDMAdConst.CURRENCY.USD) {
            str = bVar.f42240H;
        } else if (currency == SDMAdConst.CURRENCY.RMB) {
            str = bVar.f42242J;
        } else {
            str = "The currency(" + currency + ") is not supported.";
        }
        return str != null ? str : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdEcpmInfo
    public final int getSecretId() {
        com.smartdigimkt.o3.b bVar = this.f40088a;
        if (bVar != null) {
            return bVar.f42241I;
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SDMAdEcpmInfo{ecpm(USD)=");
        SDMAdConst.CURRENCY currency = SDMAdConst.CURRENCY.USD;
        sb.append(getEcpm(currency));
        sb.append(", ecpmEncInfo(USD)=");
        sb.append(getEncEcpmInfo(currency));
        sb.append(", ecpm(RMB)=");
        SDMAdConst.CURRENCY currency2 = SDMAdConst.CURRENCY.RMB;
        sb.append(getEcpm(currency2));
        sb.append(", ecpmEncInfo(RMB)=");
        sb.append(getEncEcpmInfo(currency2));
        sb.append(", secretId=");
        sb.append(getSecretId());
        sb.append('}');
        return sb.toString();
    }
}

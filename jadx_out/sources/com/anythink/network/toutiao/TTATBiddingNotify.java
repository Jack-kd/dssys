package com.anythink.network.toutiao;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATSDK;
import com.bytedance.sdk.openadsdk.TTClientBidding;
import java.util.Map;

/* loaded from: classes2.dex */
public class TTATBiddingNotify implements ATBiddingNotice {

    /* renamed from: a, reason: collision with root package name */
    TTClientBidding f10327a;

    public TTATBiddingNotify(TTClientBidding tTClientBidding) {
        this.f10327a = tTClientBidding;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
        ATSDK.isNetworkLogDebug();
        try {
            this.f10327a.setPrice(Double.valueOf(d2));
        } catch (Throwable unused) {
        }
        this.f10327a = null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidLoss(String str, double d2, Map<String, Object> map) {
        str.getClass();
        String str2 = "102";
        char c2 = 65535;
        switch (str.hashCode()) {
            case 50:
                if (str.equals("2")) {
                    c2 = 0;
                    break;
                }
                break;
            case 53:
                if (str.equals("5")) {
                    c2 = 1;
                    break;
                }
                break;
            case 48627:
                if (str.equals("102")) {
                    c2 = 2;
                    break;
                }
                break;
            case 48628:
                if (str.equals("103")) {
                    c2 = 3;
                    break;
                }
                break;
            case 48629:
                if (str.equals("104")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                str2 = "2";
                break;
            case 1:
            default:
                str2 = "201";
                break;
            case 2:
            case 3:
            case 4:
                break;
        }
        ATSDK.isNetworkLogDebug();
        try {
            this.f10327a.loss(Double.valueOf(d2), str2, null);
        } catch (Throwable unused) {
        }
        this.f10327a = null;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        ATSDK.isNetworkLogDebug();
        try {
            this.f10327a.win(Double.valueOf(d3));
        } catch (Throwable unused) {
        }
    }
}

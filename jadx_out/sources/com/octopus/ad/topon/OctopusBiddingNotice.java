package com.octopus.ad.topon;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.octopus.ad.ADBidEvent;
import com.octopus.ad.IBidding;
import java.util.Map;

/* loaded from: classes4.dex */
public class OctopusBiddingNotice implements ATBiddingNotice {
    private IBidding octopusAd;

    public OctopusBiddingNotice(IBidding iBidding) {
        this.octopusAd = iBidding;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidLoss(String str, double d2, Map<String, Object> map) {
        String str2;
        if (this.octopusAd != null) {
            str.getClass();
            switch (str) {
                case "2":
                    str2 = ADBidEvent.TIMEOUT_FILTER;
                    break;
                case "102":
                case "103":
                    str2 = "1002";
                    break;
                default:
                    str2 = ADBidEvent.OTHER;
                    break;
            }
            this.octopusAd.sendLossNotice((int) d2, str2, ADBidEvent.OTHER);
            this.octopusAd = null;
        }
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        IBidding iBidding = this.octopusAd;
        if (iBidding != null) {
            iBidding.sendWinNotice((int) d3);
            this.octopusAd = null;
        }
    }
}

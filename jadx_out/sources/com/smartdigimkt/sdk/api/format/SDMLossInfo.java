package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.c5.n;
import com.smartdigimkt.sdk.api.SDMAdConst;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMLossInfo {
    private final SDMAdConst.CURRENCY currency;
    private final Map<String, Object> extraMap;
    private final LOSS_REASON lossReason;
    private final double winPrice;

    public enum LOSS_REASON {
        LOSS_TO_HIGHER_BID(1),
        LOSS_TO_NORMAL(2),
        LOSS_TO_AUCTION_FLOOR(3),
        LOSS_TO_EXPIRE(4);

        private final int code;

        LOSS_REASON(int i2) {
            this.code = i2;
        }

        public int getCode() {
            return this.code;
        }
    }

    public SDMLossInfo(LOSS_REASON loss_reason, double d2) {
        this(loss_reason, d2, SDMAdConst.CURRENCY.USD);
    }

    public SDMAdConst.CURRENCY getCurrency() {
        return this.currency;
    }

    public Map<String, Object> getExtraMap() {
        return this.extraMap;
    }

    public LOSS_REASON getLossReason() {
        return this.lossReason;
    }

    public double getWinPrice() {
        return this.winPrice;
    }

    public SDMLossInfo(LOSS_REASON loss_reason, double d2, SDMAdConst.CURRENCY currency) {
        this(loss_reason, d2, currency, null);
    }

    public double getWinPrice(SDMAdConst.CURRENCY currency) {
        double d2 = this.winPrice;
        SDMAdConst.CURRENCY currency2 = this.currency;
        if (d2 <= 0.0d) {
            return 0.0d;
        }
        return currency2 != null ? n.a(d2, currency2, currency) : d2;
    }

    public SDMLossInfo(LOSS_REASON loss_reason, double d2, SDMAdConst.CURRENCY currency, Map<String, Object> map) {
        this.lossReason = loss_reason;
        this.winPrice = d2;
        this.currency = currency;
        this.extraMap = map;
    }
}

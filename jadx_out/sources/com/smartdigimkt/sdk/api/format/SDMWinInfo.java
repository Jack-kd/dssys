package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.c5.n;
import com.smartdigimkt.sdk.api.SDMAdConst;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMWinInfo {
    private final SDMAdConst.CURRENCY currency;
    private final Map<String, Object> extraMap;
    private final double secondPrice;

    public SDMWinInfo(double d2) {
        this(d2, SDMAdConst.CURRENCY.USD);
    }

    public SDMAdConst.CURRENCY getCurrency() {
        return this.currency;
    }

    public Map<String, Object> getExtraMap() {
        return this.extraMap;
    }

    public double getSecondPrice() {
        return this.secondPrice;
    }

    public SDMWinInfo(double d2, SDMAdConst.CURRENCY currency) {
        this(d2, currency, null);
    }

    public double getSecondPrice(SDMAdConst.CURRENCY currency) {
        double d2 = this.secondPrice;
        SDMAdConst.CURRENCY currency2 = this.currency;
        if (d2 <= 0.0d) {
            return 0.0d;
        }
        return currency2 != null ? n.a(d2, currency2, currency) : d2;
    }

    public SDMWinInfo(double d2, SDMAdConst.CURRENCY currency, Map<String, Object> map) {
        this.secondPrice = d2;
        this.currency = currency;
        this.extraMap = map;
    }
}

package com.smartdigimkt.c5;

import com.smartdigimkt.sdk.api.SDMAdConst;

/* loaded from: classes5.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public static double f39793a;

    /* renamed from: b, reason: collision with root package name */
    public static double f39794b;

    public static double a(double d2, SDMAdConst.CURRENCY currency, SDMAdConst.CURRENCY currency2) {
        double d3;
        if (d2 > 0.0d && currency2 != null && currency != null) {
            try {
                int i2 = m.f39792a[currency.ordinal()];
                if (i2 == 1) {
                    if (currency2 == SDMAdConst.CURRENCY.USD) {
                        d3 = f39793a;
                        return d2 * d3;
                    }
                    if (currency2 == SDMAdConst.CURRENCY.RMB_CENT) {
                        return d2 * 100.0d;
                    }
                    return d2 * 1.0d;
                }
                if (i2 != 2) {
                    if (currency2 == SDMAdConst.CURRENCY.RMB) {
                        d3 = f39794b;
                        return d2 * d3;
                    }
                    if (currency2 == SDMAdConst.CURRENCY.RMB_CENT) {
                        return d2 * f39794b * 100.0d;
                    }
                    return d2 * 1.0d;
                }
                if (currency2 != SDMAdConst.CURRENCY.USD) {
                    if (currency2 == SDMAdConst.CURRENCY.RMB) {
                        return d2 / 100.0d;
                    }
                    return d2 * 1.0d;
                }
                d3 = f39793a;
                d2 /= 100.0d;
                return d2 * d3;
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return d2;
    }
}

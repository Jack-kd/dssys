package com.anythink.core.common.v;

import com.anythink.core.api.ATAdConst;

/* loaded from: classes2.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8301a = "s";

    /* renamed from: b, reason: collision with root package name */
    private static double f8302b;

    /* renamed from: c, reason: collision with root package name */
    private static double f8303c;

    /* renamed from: com.anythink.core.common.v.s$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8304a;

        static {
            int[] iArr = new int[ATAdConst.CURRENCY.values().length];
            f8304a = iArr;
            try {
                iArr[ATAdConst.CURRENCY.RMB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8304a[ATAdConst.CURRENCY.RMB_CENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8304a[ATAdConst.CURRENCY.USD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static double a() {
        return f8303c;
    }

    public static double b() {
        return f8302b;
    }

    public static void a(double d2) {
        f8302b = d2;
        if (d2 > 0.0d) {
            f8303c = 1.0d / d2;
        }
    }

    public static ATAdConst.CURRENCY a(String str) {
        if ("CNY".equalsIgnoreCase(str)) {
            return ATAdConst.CURRENCY.RMB;
        }
        if ("USD".equalsIgnoreCase(str)) {
            return ATAdConst.CURRENCY.USD;
        }
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    public static double a(double d2, ATAdConst.CURRENCY currency, ATAdConst.CURRENCY currency2) {
        if (d2 <= 0.0d || currency2 == null || currency == null) {
            return d2;
        }
        try {
            int i2 = AnonymousClass1.f8304a[currency.ordinal()];
            if (i2 == 1) {
                if (currency2 == ATAdConst.CURRENCY.USD) {
                    return d2 * f8302b;
                }
                return currency2 == ATAdConst.CURRENCY.RMB_CENT ? d2 * 100.0d : d2 * 1.0d;
            }
            if (i2 != 2) {
                if (currency2 == ATAdConst.CURRENCY.RMB) {
                    return d2 * f8303c;
                }
                return currency2 == ATAdConst.CURRENCY.RMB_CENT ? d2 * f8303c * 100.0d : d2 * 1.0d;
            }
            if (currency2 == ATAdConst.CURRENCY.USD) {
                return (d2 / 100.0d) * f8302b;
            }
            return currency2 == ATAdConst.CURRENCY.RMB ? d2 / 100.0d : d2 * 1.0d;
        } catch (Throwable unused) {
            return d2;
        }
    }
}

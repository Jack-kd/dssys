package com.beizi.fusion;

import java.math.BigDecimal;

/* loaded from: classes2.dex */
public final class wg extends Number {

    /* renamed from: a, reason: collision with root package name */
    private final String f16963a;

    public wg(String str) {
        this.f16963a = str;
    }

    private BigDecimal a() {
        return tj.b(this.f16963a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f16963a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof wg) {
            return this.f16963a.equals(((wg) obj).f16963a);
        }
        return false;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f16963a);
    }

    public int hashCode() {
        return this.f16963a.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.f16963a);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f16963a);
            }
        } catch (NumberFormatException unused2) {
            return a().intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f16963a);
        } catch (NumberFormatException unused) {
            return a().longValue();
        }
    }

    public String toString() {
        return this.f16963a;
    }
}

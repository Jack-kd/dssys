package com.beizi.fusion;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class og extends ig {

    /* renamed from: a, reason: collision with root package name */
    private final Object f15431a;

    public og(Number number) {
        Objects.requireNonNull(number);
        this.f15431a = number;
    }

    private static boolean a(og ogVar) {
        Object obj = ogVar.f15431a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || og.class != obj.getClass()) {
            return false;
        }
        og ogVar = (og) obj;
        if (this.f15431a == null) {
            return ogVar.f15431a == null;
        }
        if (a(this) && a(ogVar)) {
            return ((this.f15431a instanceof BigInteger) || (ogVar.f15431a instanceof BigInteger)) ? i().equals(ogVar.i()) : l().longValue() == ogVar.l().longValue();
        }
        Object obj2 = this.f15431a;
        if (obj2 instanceof Number) {
            Object obj3 = ogVar.f15431a;
            if (obj3 instanceof Number) {
                if ((obj2 instanceof BigDecimal) && (obj3 instanceof BigDecimal)) {
                    return h().compareTo(ogVar.h()) == 0;
                }
                double dK = k();
                double dK2 = ogVar.k();
                return dK == dK2 || (Double.isNaN(dK) && Double.isNaN(dK2));
            }
        }
        return obj2.equals(ogVar.f15431a);
    }

    public BigDecimal h() {
        Object obj = this.f15431a;
        return obj instanceof BigDecimal ? (BigDecimal) obj : tj.b(m());
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.f15431a == null) {
            return 31;
        }
        if (a(this)) {
            jDoubleToLongBits = l().longValue();
        } else {
            Object obj = this.f15431a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(l().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public BigInteger i() {
        Object obj = this.f15431a;
        return obj instanceof BigInteger ? (BigInteger) obj : a(this) ? BigInteger.valueOf(l().longValue()) : tj.c(m());
    }

    public boolean j() {
        return n() ? ((Boolean) this.f15431a).booleanValue() : Boolean.parseBoolean(m());
    }

    public double k() {
        return o() ? l().doubleValue() : Double.parseDouble(m());
    }

    public Number l() {
        Object obj = this.f15431a;
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            return new wg((String) obj);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public String m() {
        Object obj = this.f15431a;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (o()) {
            return l().toString();
        }
        if (n()) {
            return ((Boolean) this.f15431a).toString();
        }
        throw new AssertionError("Unexpected value type: " + this.f15431a.getClass());
    }

    public boolean n() {
        return this.f15431a instanceof Boolean;
    }

    public boolean o() {
        return this.f15431a instanceof Number;
    }

    public og(String str) {
        Objects.requireNonNull(str);
        this.f15431a = str;
    }
}

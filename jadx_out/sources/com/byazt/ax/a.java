package com.byazt.ax;

@com.byazt.kj.hp(hp = {0, 1, 1748, 54})
/* loaded from: classes2.dex */
public class a {
    private static Object hp(int i2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Integer.valueOf(i2 % number.intValue());
        }
        if (number instanceof Long) {
            return Long.valueOf(i2 % number.longValue());
        }
        if (number instanceof Float) {
            return Float.valueOf(i2 % number.floatValue());
        }
        if (number instanceof Double) {
            return Double.valueOf(i2 % number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object hp(long j2, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Long.valueOf(j2 % number.longValue());
            }
            if (number instanceof Float) {
                return Float.valueOf(j2 % number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(j2 % number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Long.valueOf(j2 % number.intValue());
    }

    private static Object hp(float f2, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Float.valueOf(f2 % number.longValue());
            }
            if (number instanceof Float) {
                return Float.valueOf(f2 % number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(f2 % number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Float.valueOf(f2 % number.intValue());
    }

    private static Object hp(double d2, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Double.valueOf(d2 % number.longValue());
            }
            if (number instanceof Float) {
                return Double.valueOf(d2 % number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(d2 % number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Double.valueOf(d2 % number.intValue());
    }

    public static Object hp(Number number, Number number2) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return hp(number.longValue(), number2);
            }
            if (number instanceof Float) {
                return hp(number.floatValue(), number2);
            }
            if (number instanceof Double) {
                return hp(number.doubleValue(), number2);
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return hp(number.intValue(), number2);
    }
}

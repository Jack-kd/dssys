package com.byazt.ax;

@com.byazt.kj.hp(hp = {0, 1, 1748, 34})
/* loaded from: classes2.dex */
public class l {
    private static boolean hp(int i2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return i2 == number.intValue();
        }
        if (number instanceof Long) {
            return ((long) i2) == number.longValue();
        }
        if (number instanceof Float) {
            return ((float) i2) == number.floatValue();
        }
        if (number instanceof Double) {
            return ((double) i2) == number.doubleValue();
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static boolean hp(long j2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return j2 == ((long) number.intValue());
        }
        if (number instanceof Long) {
            return j2 == number.longValue();
        }
        if (number instanceof Float) {
            return ((float) j2) == number.floatValue();
        }
        if (number instanceof Double) {
            return ((double) j2) == number.doubleValue();
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static boolean hp(float f2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return f2 == ((float) number.intValue());
        }
        if (number instanceof Long) {
            return f2 == ((float) number.longValue());
        }
        if (number instanceof Float) {
            return f2 == number.floatValue();
        }
        if (number instanceof Double) {
            return ((double) f2) == number.doubleValue();
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static boolean hp(double d2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return d2 == ((double) number.intValue());
        }
        if (number instanceof Long) {
            return d2 == ((double) number.longValue());
        }
        if (number instanceof Float) {
            return d2 == ((double) number.floatValue());
        }
        if (number instanceof Double) {
            return d2 == number.doubleValue();
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    public static boolean hp(Number number, Number number2) {
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

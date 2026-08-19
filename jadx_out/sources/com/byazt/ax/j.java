package com.byazt.ax;

@com.byazt.kj.hp(hp = {0, 1, 1748, 38})
/* loaded from: classes2.dex */
public class j {
    private static Object hp(int i2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(i2 < number.intValue());
        }
        if (number instanceof Long) {
            return Boolean.valueOf(((long) i2) < number.longValue());
        }
        if (number instanceof Float) {
            return Boolean.valueOf(((float) i2) < number.floatValue());
        }
        if (number instanceof Double) {
            return Boolean.valueOf(((double) i2) < number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object hp(long j2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(j2 < ((long) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(j2 < number.longValue());
        }
        if (number instanceof Float) {
            return Boolean.valueOf(((float) j2) < number.floatValue());
        }
        if (number instanceof Double) {
            return Boolean.valueOf(((double) j2) < number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object hp(float f2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(f2 < ((float) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(f2 < ((float) number.longValue()));
        }
        if (number instanceof Float) {
            return Boolean.valueOf(f2 < number.floatValue());
        }
        if (number instanceof Double) {
            return Boolean.valueOf(((double) f2) < number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object hp(double d2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(d2 < ((double) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(d2 < ((double) number.longValue()));
        }
        if (number instanceof Float) {
            return Boolean.valueOf(d2 < ((double) number.floatValue()));
        }
        if (number instanceof Double) {
            return Boolean.valueOf(d2 < number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    public static Object hp(Object obj, Number number) {
        if (!(obj instanceof Integer) && !(obj instanceof Short) && !(obj instanceof Byte)) {
            if (obj instanceof Long) {
                return hp(((Long) obj).longValue(), number);
            }
            if (obj instanceof Float) {
                return hp(((Float) obj).floatValue(), number);
            }
            if (obj instanceof Double) {
                return hp(((Double) obj).doubleValue(), number);
            }
            if (obj instanceof String) {
                try {
                    return hp(Float.parseFloat((String) obj), number);
                } catch (NumberFormatException unused) {
                    throw new UnsupportedOperationException(obj.getClass().getName() + "This type of addition operation is not supported");
                }
            }
            throw new UnsupportedOperationException(obj.getClass().getName() + "This type of addition operation is not supported");
        }
        return hp(((Number) obj).intValue(), number);
    }
}

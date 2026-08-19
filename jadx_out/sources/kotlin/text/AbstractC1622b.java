package kotlin.text;

/* renamed from: kotlin.text.b, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1622b {
    public static int a(int i2) {
        if (2 <= i2 && i2 < 37) {
            return i2;
        }
        throw new IllegalArgumentException("radix " + i2 + " was not in valid range " + new E1.d(2, 36));
    }

    public static final int b(char c2, int i2) {
        return Character.digit((int) c2, i2);
    }

    public static final boolean c(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }
}

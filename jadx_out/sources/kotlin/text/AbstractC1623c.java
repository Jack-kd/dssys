package kotlin.text;

/* renamed from: kotlin.text.c, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1623c extends AbstractC1622b {
    public static final boolean d(char c2, char c3, boolean z2) {
        if (c2 == c3) {
            return true;
        }
        if (!z2) {
            return false;
        }
        char upperCase = Character.toUpperCase(c2);
        char upperCase2 = Character.toUpperCase(c3);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }
}

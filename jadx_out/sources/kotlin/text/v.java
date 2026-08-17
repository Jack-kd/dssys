package kotlin.text;

import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;

/* loaded from: classes5.dex */
public abstract class v extends u {
    @SinceKotlin(version = "1.9")
    @InlineOnly
    private static final StringBuilder insert(StringBuilder sb, int i2, byte b3) {
        kotlin.jvm.internal.j.e(sb, "<this>");
        StringBuilder sbInsert = sb.insert(i2, (int) b3);
        kotlin.jvm.internal.j.d(sbInsert, "insert(...)");
        return sbInsert;
    }

    @SinceKotlin(version = "1.9")
    @InlineOnly
    private static final StringBuilder insert(StringBuilder sb, int i2, short s2) {
        kotlin.jvm.internal.j.e(sb, "<this>");
        StringBuilder sbInsert = sb.insert(i2, (int) s2);
        kotlin.jvm.internal.j.d(sbInsert, "insert(...)");
        return sbInsert;
    }
}

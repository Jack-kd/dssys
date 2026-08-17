package kotlin.time;

import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class e {
    public static final long a(long j2, DurationUnit sourceUnit, DurationUnit targetUnit) {
        j.e(sourceUnit, "sourceUnit");
        j.e(targetUnit, "targetUnit");
        return targetUnit.getTimeUnit().convert(j2, sourceUnit.getTimeUnit());
    }

    public static final long b(long j2, DurationUnit sourceUnit, DurationUnit targetUnit) {
        j.e(sourceUnit, "sourceUnit");
        j.e(targetUnit, "targetUnit");
        return targetUnit.getTimeUnit().convert(j2, sourceUnit.getTimeUnit());
    }
}

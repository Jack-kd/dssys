package kotlin.enums;

import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class b {
    public static final a a(Enum[] entries) {
        j.e(entries, "entries");
        return new EnumEntriesList(entries);
    }
}

package kotlin.reflect;

import kotlin.ExperimentalContextParameters;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"kotlin/reflect/KParameter$Kind", "", "Lkotlin/reflect/KParameter$Kind;", "<init>", "(Ljava/lang/String;I)V", "INSTANCE", "CONTEXT", "EXTENSION_RECEIVER", "VALUE", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class KParameter$Kind {
    private static final /* synthetic */ kotlin.enums.a $ENTRIES;
    private static final /* synthetic */ KParameter$Kind[] $VALUES;
    public static final KParameter$Kind INSTANCE = new KParameter$Kind("INSTANCE", 0);

    @ExperimentalContextParameters
    public static final KParameter$Kind CONTEXT = new KParameter$Kind("CONTEXT", 1);
    public static final KParameter$Kind EXTENSION_RECEIVER = new KParameter$Kind("EXTENSION_RECEIVER", 2);
    public static final KParameter$Kind VALUE = new KParameter$Kind("VALUE", 3);

    private static final /* synthetic */ KParameter$Kind[] $values() {
        return new KParameter$Kind[]{INSTANCE, CONTEXT, EXTENSION_RECEIVER, VALUE};
    }

    static {
        KParameter$Kind[] kParameter$KindArr$values = $values();
        $VALUES = kParameter$KindArr$values;
        $ENTRIES = kotlin.enums.b.a(kParameter$KindArr$values);
    }

    private KParameter$Kind(String str, int i2) {
    }

    @NotNull
    public static kotlin.enums.a getEntries() {
        return $ENTRIES;
    }

    public static KParameter$Kind valueOf(String str) {
        return (KParameter$Kind) Enum.valueOf(KParameter$Kind.class, str);
    }

    public static KParameter$Kind[] values() {
        return (KParameter$Kind[]) $VALUES.clone();
    }
}

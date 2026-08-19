package kotlin.random;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u0000 \u000b2\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\fB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlin/random/PlatformRandom;", "Lkotlin/random/a;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Ljava/util/Random;", "impl", "<init>", "(Ljava/util/Random;)V", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "Companion", "a", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
final class PlatformRandom extends kotlin.random.a implements Serializable {

    @NotNull
    private static final a Companion = new a(null);
    private static final long serialVersionUID = 0;

    @NotNull
    private final java.util.Random impl;

    public static final class a {
        public /* synthetic */ a(f fVar) {
            this();
        }

        public a() {
        }
    }

    public PlatformRandom(@NotNull java.util.Random impl) {
        j.e(impl, "impl");
        this.impl = impl;
    }

    @Override // kotlin.random.a
    @NotNull
    public java.util.Random getImpl() {
        return this.impl;
    }
}

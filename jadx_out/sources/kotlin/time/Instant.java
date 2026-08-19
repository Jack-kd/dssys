package kotlin.time;

import androidx.core.location.LocationRequestCompat;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import kotlin.time.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "2.1")
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\b\u0007\u0018\u0000 -2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001.B\u0019\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0011\u001a\u00020\u00102\n\u0010\u000f\u001a\u00060\rj\u0002`\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015H\u0086\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\u001f\u0010 J\u001a\u0010\"\u001a\u00020!2\b\u0010\u001c\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0006H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010)\u001a\u0004\b*\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010+\u001a\u0004\b,\u0010%¨\u0006/"}, d2 = {"Lkotlin/time/Instant;", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "epochSeconds", "", "nanosecondsOfSecond", "<init>", "(JI)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "input", "Lkotlin/j;", "readObject", "(Ljava/io/ObjectInputStream;)V", "toEpochMilliseconds", "()J", "Lkotlin/time/b;", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/Instant;", "plus", "minus-LRDsOJo", "minus", "other", "minus-UwyO8pc", "(Lkotlin/time/Instant;)J", "compareTo", "(Lkotlin/time/Instant;)I", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "J", "getEpochSeconds", "I", "getNanosecondsOfSecond", "Companion", "a", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/InstantKt\n+ 4 Duration.kt\nkotlin/time/Duration\n*L\n1#1,864:1\n1#2:865\n803#3,14:866\n786#3,6:880\n803#3,14:886\n786#3,6:900\n786#3,6:907\n548#4:906\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n*L\n150#1:866,14\n153#1:880,6\n161#1:886,14\n164#1:900,6\n188#1:907,6\n184#1:906\n*E\n"})
@ExperimentalTime
/* loaded from: classes5.dex */
public final class Instant implements Comparable<Instant>, Serializable {
    private final long epochSeconds;
    private final int nanosecondsOfSecond;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Instant MIN = new Instant(-31557014167219200L, 0);

    @NotNull
    private static final Instant MAX = new Instant(31556889864403199L, 999999999);

    /* renamed from: kotlin.time.Instant$a, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final Instant a(long j2, int i2) {
            return b(j2, i2);
        }

        public final Instant b(long j2, long j3) {
            long j4 = j3 / C.NANOS_PER_SECOND;
            if ((j3 ^ C.NANOS_PER_SECOND) < 0 && j4 * C.NANOS_PER_SECOND != j3) {
                j4--;
            }
            long j5 = j2 + j4;
            if ((j2 ^ j5) < 0 && (j4 ^ j2) >= 0) {
                return j2 > 0 ? Instant.INSTANCE.c() : Instant.INSTANCE.d();
            }
            if (j5 < -31557014167219200L) {
                return d();
            }
            if (j5 > 31556889864403199L) {
                return c();
            }
            long j6 = j3 % C.NANOS_PER_SECOND;
            return new Instant(j5, (int) (j6 + ((((j6 ^ C.NANOS_PER_SECOND) & ((-j6) | j6)) >> 63) & C.NANOS_PER_SECOND)));
        }

        public final Instant c() {
            return Instant.MAX;
        }

        public final Instant d() {
            return Instant.MIN;
        }

        public Companion() {
        }
    }

    public Instant(long j2, int i2) {
        this.epochSeconds = j2;
        this.nanosecondsOfSecond = i2;
        if (-31557014167219200L > j2 || j2 >= 31556889864403200L) {
            throw new IllegalArgumentException("Instant exceeds minimum or maximum instant");
        }
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        return f.a(this);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Instant)) {
            return false;
        }
        Instant instant = (Instant) other;
        return this.epochSeconds == instant.epochSeconds && this.nanosecondsOfSecond == instant.nanosecondsOfSecond;
    }

    public final long getEpochSeconds() {
        return this.epochSeconds;
    }

    public final int getNanosecondsOfSecond() {
        return this.nanosecondsOfSecond;
    }

    public int hashCode() {
        return Long.hashCode(this.epochSeconds) + (this.nanosecondsOfSecond * 51);
    }

    @NotNull
    /* renamed from: minus-LRDsOJo, reason: not valid java name */
    public final Instant m77minusLRDsOJo(long duration) {
        return m79plusLRDsOJo(b.A(duration));
    }

    /* renamed from: minus-UwyO8pc, reason: not valid java name */
    public final long m78minusUwyO8pc(@NotNull Instant other) {
        j.e(other, "other");
        b.a aVar = b.f51490b;
        return b.x(d.p(this.epochSeconds - other.epochSeconds, DurationUnit.SECONDS), d.o(this.nanosecondsOfSecond - other.nanosecondsOfSecond, DurationUnit.NANOSECONDS));
    }

    @NotNull
    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public final Instant m79plusLRDsOJo(long duration) {
        long jL = b.l(duration);
        int iN = b.n(duration);
        if (jL == 0 && iN == 0) {
            return this;
        }
        long j2 = this.epochSeconds;
        long j3 = j2 + jL;
        if ((j2 ^ j3) >= 0 || (jL ^ j2) < 0) {
            return INSTANCE.a(j3, this.nanosecondsOfSecond + iN);
        }
        return b.w(duration) ? MAX : MIN;
    }

    public final long toEpochMilliseconds() {
        long j2 = this.epochSeconds;
        long j3 = 1000;
        if (j2 >= 0) {
            if (j2 != 1) {
                if (j2 != 0) {
                    long j4 = j2 * 1000;
                    if (j4 / 1000 != j2) {
                        return LocationRequestCompat.PASSIVE_INTERVAL;
                    }
                    j3 = j4;
                } else {
                    j3 = 0;
                }
            }
            long j5 = this.nanosecondsOfSecond / 1000000;
            long j6 = j3 + j5;
            return ((j3 ^ j6) >= 0 || (j5 ^ j3) < 0) ? j6 : LocationRequestCompat.PASSIVE_INTERVAL;
        }
        long j7 = j2 + 1;
        if (j7 != 1) {
            if (j7 != 0) {
                long j8 = j7 * 1000;
                if (j8 / 1000 != j7) {
                    return Long.MIN_VALUE;
                }
                j3 = j8;
            } else {
                j3 = 0;
            }
        }
        long j9 = (this.nanosecondsOfSecond / 1000000) - 1000;
        long j10 = j3 + j9;
        if ((j3 ^ j10) >= 0 || (j9 ^ j3) < 0) {
            return j10;
        }
        return Long.MIN_VALUE;
    }

    @NotNull
    public String toString() {
        return g.b(this);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull Instant other) {
        j.e(other, "other");
        int iH = j.h(this.epochSeconds, other.epochSeconds);
        return iH != 0 ? iH : j.g(this.nanosecondsOfSecond, other.nanosecondsOfSecond);
    }
}

package kotlin.random;

import com.umeng.analytics.pro.bv;
import java.io.InvalidObjectException;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\b\u0000\u0018\u0000 \u001c2\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u001dB9\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fB\u0019\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001bR\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u001bR\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u001bR\u0016\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u001bR\u0016\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u001bR\u0016\u0010\n\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u001b¨\u0006\u001e"}, d2 = {"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "x", "y", bv.aD, "w", "v", "addend", "<init>", "(IIIIII)V", "seed1", "seed2", "(II)V", "Lkotlin/j;", "checkInvariants", "()V", "", "readResolve", "()Ljava/lang/Object;", "nextInt", "()I", "bitCount", "nextBits", "(I)I", "I", "Companion", "a", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes5.dex */
public final class XorWowRandom extends Random implements Serializable {

    @NotNull
    private static final a Companion = new a(null);
    private static final long serialVersionUID = 0;
    private int addend;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    public static final class a {
        public /* synthetic */ a(f fVar) {
            this();
        }

        public a() {
        }
    }

    public XorWowRandom(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.x = i2;
        this.y = i3;
        this.z = i4;
        this.w = i5;
        this.v = i6;
        this.addend = i7;
        checkInvariants();
        for (int i8 = 0; i8 < 64; i8++) {
            nextInt();
        }
    }

    private final void checkInvariants() {
        if ((this.x | this.y | this.z | this.w | this.v) == 0) {
            throw new IllegalArgumentException("Initial state must have at least one non-zero element.");
        }
    }

    private final Object readResolve() throws Throwable {
        try {
            checkInvariants();
            return this;
        } catch (Throwable th) {
            Throwable thInitCause = new InvalidObjectException(th.getMessage()).initCause(th);
            j.d(thInitCause, "initCause(...)");
            throw thInitCause;
        }
    }

    @Override // kotlin.random.Random
    public int nextBits(int bitCount) {
        return d.f(nextInt(), bitCount);
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        int i2 = this.x;
        int i3 = i2 ^ (i2 >>> 2);
        this.x = this.y;
        this.y = this.z;
        this.z = this.w;
        int i4 = this.v;
        this.w = i4;
        int i5 = ((i3 ^ (i3 << 1)) ^ i4) ^ (i4 << 4);
        this.v = i5;
        int i6 = this.addend + 362437;
        this.addend = i6;
        return i5 + i6;
    }

    public XorWowRandom(int i2, int i3) {
        this(i2, i3, 0, 0, ~i2, (i2 << 10) ^ (i3 >>> 4));
    }
}

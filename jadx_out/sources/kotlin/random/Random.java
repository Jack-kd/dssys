package kotlin.random;

import io.flutter.embedding.android.KeyboardMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import x1.AbstractC1801b;

/* loaded from: classes5.dex */
public abstract class Random {

    @NotNull
    public static final Default Default = new Default(null);

    @NotNull
    private static final Random defaultRandom = AbstractC1801b.f52829a.b();

    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u00013B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\r\u001a\u00020\f2\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001bJ\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0015\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010#J\u001f\u0010!\u001a\u00020 2\u0006\u0010\u0016\u001a\u00020 2\u0006\u0010\u0015\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010*\u001a\u00020(2\u0006\u0010,\u001a\u00020\u000fH\u0016¢\u0006\u0004\b*\u0010-J'\u0010*\u001a\u00020(2\u0006\u0010)\u001a\u00020(2\u0006\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020\u000fH\u0016¢\u0006\u0004\b*\u00100R\u0014\u00101\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102¨\u00064"}, d2 = {"Lkotlin/random/Random$Default;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "<init>", "()V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "input", "Lkotlin/j;", "readObject", "(Ljava/io/ObjectInputStream;)V", "", "bitCount", "nextBits", "(I)I", "nextInt", "()I", "until", "from", "(II)I", "", "nextLong", "()J", "(J)J", "(JJ)J", "", "nextBoolean", "()Z", "", "nextDouble", "()D", "(D)D", "(DD)D", "", "nextFloat", "()F", "", "array", "nextBytes", "([B)[B", "size", "(I)[B", "fromIndex", "toIndex", "([BII)[B", "defaultRandom", "Lkotlin/random/Random;", "Serialized", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Default extends Random implements Serializable {

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lkotlin/random/Random$Default$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "<init>", "()V", "serialVersionUID", "", "readResolve", "", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Serialized implements Serializable {

            @NotNull
            public static final Serialized INSTANCE = new Serialized();
            private static final long serialVersionUID = 0;

            private Serialized() {
            }

            private final Object readResolve() {
                return Random.Default;
            }
        }

        public /* synthetic */ Default(f fVar) {
            this();
        }

        private final void readObject(ObjectInputStream input) throws InvalidObjectException {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        private final Object writeReplace() {
            return Serialized.INSTANCE;
        }

        @Override // kotlin.random.Random
        public int nextBits(int bitCount) {
            return Random.defaultRandom.nextBits(bitCount);
        }

        @Override // kotlin.random.Random
        public boolean nextBoolean() {
            return Random.defaultRandom.nextBoolean();
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(@NotNull byte[] array) {
            j.e(array, "array");
            return Random.defaultRandom.nextBytes(array);
        }

        @Override // kotlin.random.Random
        public double nextDouble() {
            return Random.defaultRandom.nextDouble();
        }

        @Override // kotlin.random.Random
        public float nextFloat() {
            return Random.defaultRandom.nextFloat();
        }

        @Override // kotlin.random.Random
        public int nextInt() {
            return Random.defaultRandom.nextInt();
        }

        @Override // kotlin.random.Random
        public long nextLong() {
            return Random.defaultRandom.nextLong();
        }

        private Default() {
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(int size) {
            return Random.defaultRandom.nextBytes(size);
        }

        @Override // kotlin.random.Random
        public double nextDouble(double until) {
            return Random.defaultRandom.nextDouble(until);
        }

        @Override // kotlin.random.Random
        public int nextInt(int until) {
            return Random.defaultRandom.nextInt(until);
        }

        @Override // kotlin.random.Random
        public long nextLong(long until) {
            return Random.defaultRandom.nextLong(until);
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(@NotNull byte[] array, int fromIndex, int toIndex) {
            j.e(array, "array");
            return Random.defaultRandom.nextBytes(array, fromIndex, toIndex);
        }

        @Override // kotlin.random.Random
        public double nextDouble(double from, double until) {
            return Random.defaultRandom.nextDouble(from, until);
        }

        @Override // kotlin.random.Random
        public int nextInt(int from, int until) {
            return Random.defaultRandom.nextInt(from, until);
        }

        @Override // kotlin.random.Random
        public long nextLong(long from, long until) {
            return Random.defaultRandom.nextLong(from, until);
        }
    }

    public static /* synthetic */ byte[] nextBytes$default(Random random, byte[] bArr, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: nextBytes");
        }
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = bArr.length;
        }
        return random.nextBytes(bArr, i2, i3);
    }

    public abstract int nextBits(int i2);

    public boolean nextBoolean() {
        return nextBits(1) != 0;
    }

    @NotNull
    public byte[] nextBytes(@NotNull byte[] array, int i2, int i3) {
        j.e(array, "array");
        if (i2 < 0 || i2 > array.length || i3 < 0 || i3 > array.length) {
            throw new IllegalArgumentException(("fromIndex (" + i2 + ") or toIndex (" + i3 + ") are out of range: 0.." + array.length + '.').toString());
        }
        if (i2 > i3) {
            throw new IllegalArgumentException(("fromIndex (" + i2 + ") must be not greater than toIndex (" + i3 + ").").toString());
        }
        int i4 = (i3 - i2) / 4;
        for (int i5 = 0; i5 < i4; i5++) {
            int iNextInt = nextInt();
            array[i2] = (byte) iNextInt;
            array[i2 + 1] = (byte) (iNextInt >>> 8);
            array[i2 + 2] = (byte) (iNextInt >>> 16);
            array[i2 + 3] = (byte) (iNextInt >>> 24);
            i2 += 4;
        }
        int i6 = i3 - i2;
        int iNextBits = nextBits(i6 * 8);
        for (int i7 = 0; i7 < i6; i7++) {
            array[i2 + i7] = (byte) (iNextBits >>> (i7 * 8));
        }
        return array;
    }

    public double nextDouble() {
        return c.a(nextBits(26), nextBits(27));
    }

    public float nextFloat() {
        return nextBits(24) / 1.6777216E7f;
    }

    public abstract int nextInt();

    public int nextInt(int i2) {
        return nextInt(0, i2);
    }

    public long nextLong() {
        return (nextInt() << 32) + nextInt();
    }

    public double nextDouble(double d2) {
        return nextDouble(0.0d, d2);
    }

    public int nextInt(int i2, int i3) {
        int iNextInt;
        int i4;
        int iNextBits;
        d.c(i2, i3);
        int i5 = i3 - i2;
        if (i5 > 0 || i5 == Integer.MIN_VALUE) {
            if (((-i5) & i5) == i5) {
                iNextBits = nextBits(d.e(i5));
            } else {
                do {
                    iNextInt = nextInt() >>> 1;
                    i4 = iNextInt % i5;
                } while ((iNextInt - i4) + (i5 - 1) < 0);
                iNextBits = i4;
            }
            return i2 + iNextBits;
        }
        while (true) {
            int iNextInt2 = nextInt();
            if (i2 <= iNextInt2 && iNextInt2 < i3) {
                return iNextInt2;
            }
        }
    }

    public long nextLong(long j2) {
        return nextLong(0L, j2);
    }

    public double nextDouble(double d2, double d3) {
        double dNextDouble;
        d.b(d2, d3);
        double d4 = d3 - d2;
        if (Double.isInfinite(d4) && Math.abs(d2) <= Double.MAX_VALUE && Math.abs(d3) <= Double.MAX_VALUE) {
            double d5 = 2;
            double dNextDouble2 = nextDouble() * ((d3 / d5) - (d2 / d5));
            dNextDouble = d2 + dNextDouble2 + dNextDouble2;
        } else {
            dNextDouble = d2 + (nextDouble() * d4);
        }
        return dNextDouble >= d3 ? Math.nextAfter(d3, Double.NEGATIVE_INFINITY) : dNextDouble;
    }

    public long nextLong(long j2, long j3) {
        long jNextLong;
        long j4;
        long jNextBits;
        int iNextInt;
        d.d(j2, j3);
        long j5 = j3 - j2;
        if (j5 > 0) {
            if (((-j5) & j5) == j5) {
                int i2 = (int) j5;
                int i3 = (int) (j5 >>> 32);
                if (i2 != 0) {
                    iNextInt = nextBits(d.e(i2));
                } else if (i3 == 1) {
                    iNextInt = nextInt();
                } else {
                    jNextBits = (nextBits(d.e(i3)) << 32) + (nextInt() & KeyboardMap.kValueMask);
                }
                jNextBits = iNextInt & KeyboardMap.kValueMask;
            } else {
                do {
                    jNextLong = nextLong() >>> 1;
                    j4 = jNextLong % j5;
                } while ((jNextLong - j4) + (j5 - 1) < 0);
                jNextBits = j4;
            }
            return j2 + jNextBits;
        }
        while (true) {
            long jNextLong2 = nextLong();
            if (j2 <= jNextLong2 && jNextLong2 < j3) {
                return jNextLong2;
            }
        }
    }

    @NotNull
    public byte[] nextBytes(@NotNull byte[] array) {
        j.e(array, "array");
        return nextBytes(array, 0, array.length);
    }

    @NotNull
    public byte[] nextBytes(int i2) {
        return nextBytes(new byte[i2]);
    }
}

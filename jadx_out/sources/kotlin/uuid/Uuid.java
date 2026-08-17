package kotlin.uuid;

import androidx.exifinterface.media.ExifInterface;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.g;
import kotlin.h;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import kotlin.text.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "2.0")
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\b\u0007\u0018\u0000 62\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u00017B\u0019\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ^\u0010\u000e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\t26\u0010\r\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00028\u00000\nH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u000e\u0010\u000fJ^\u0010\u0011\u001a\u00028\u0000\"\u0004\b\u0000\u0010\t26\u0010\r\u001a2\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00028\u00000\nH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0011\u0010\u000fJ\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0019\u001a\u00020\u00182\n\u0010\u0017\u001a\u00060\u0015j\u0002`\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u001bH\u0007¢\u0006\u0004\b\u001e\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001b¢\u0006\u0004\b\u001f\u0010\u001dJ\r\u0010!\u001a\u00020 ¢\u0006\u0004\b!\u0010\"J\u000f\u0010%\u001a\u00020#H\u0007¢\u0006\u0004\b$\u0010\"J\u001a\u0010(\u001a\u00020'2\b\u0010&\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\b(\u0010)J\u0018\u0010+\u001a\u00020*2\u0006\u0010&\u001a\u00020\u0000H\u0097\u0002¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020*H\u0016¢\u0006\u0004\b-\u0010.R \u0010\u0005\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010/\u0012\u0004\b2\u00103\u001a\u0004\b0\u00101R \u0010\u0006\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0006\u0010/\u0012\u0004\b5\u00103\u001a\u0004\b4\u00101\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00068"}, d2 = {"Lkotlin/uuid/Uuid;", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "mostSignificantBits", "leastSignificantBits", "<init>", "(JJ)V", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", com.umeng.ccg.a.f49772z, "toLongs", "(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Lkotlin/h;", "toULongs", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "input", "Lkotlin/j;", "readObject", "(Ljava/io/ObjectInputStream;)V", "", "toString", "()Ljava/lang/String;", "toHexDashString", "toHexString", "", "toByteArray", "()[B", "Lkotlin/g;", "toUByteArray-TcUX1vc", "toUByteArray", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "compareTo", "(Lkotlin/uuid/Uuid;)I", "hashCode", "()I", "J", "getMostSignificantBits", "()J", "getMostSignificantBits$annotations", "()V", "getLeastSignificantBits", "getLeastSignificantBits$annotations", "Companion", "a", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@ExperimentalUuidApi
/* loaded from: classes5.dex */
public final class Uuid implements Comparable<Uuid>, Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Uuid NIL = new Uuid(0, 0);
    public static final int SIZE_BITS = 128;
    public static final int SIZE_BYTES = 16;
    private final long leastSignificantBits;
    private final long mostSignificantBits;

    /* renamed from: kotlin.uuid.Uuid$a, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final Uuid a(long j2, long j3) {
            return (j2 == 0 && j3 == 0) ? b() : new Uuid(j2, j3, null);
        }

        public final Uuid b() {
            return Uuid.NIL;
        }

        public Companion() {
        }
    }

    public /* synthetic */ Uuid(long j2, long j3, f fVar) {
        this(j2, j3);
    }

    @PublishedApi
    public static /* synthetic */ void getLeastSignificantBits$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMostSignificantBits$annotations() {
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @InlineOnly
    private final <T> T toLongs(Function2<? super Long, ? super Long, ? extends T> action) {
        j.e(action, "action");
        return action.invoke(Long.valueOf(getMostSignificantBits()), Long.valueOf(getLeastSignificantBits()));
    }

    @InlineOnly
    private final <T> T toULongs(Function2<? super h, ? super h, ? extends T> action) {
        j.e(action, "action");
        return action.invoke(h.a(h.b(getMostSignificantBits())), h.a(h.b(getLeastSignificantBits())));
    }

    private final Object writeReplace() {
        return a.b(this);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) other;
        return this.mostSignificantBits == uuid.mostSignificantBits && this.leastSignificantBits == uuid.leastSignificantBits;
    }

    public final long getLeastSignificantBits() {
        return this.leastSignificantBits;
    }

    public final long getMostSignificantBits() {
        return this.mostSignificantBits;
    }

    public int hashCode() {
        return Long.hashCode(this.mostSignificantBits ^ this.leastSignificantBits);
    }

    @NotNull
    public final byte[] toByteArray() {
        byte[] bArr = new byte[16];
        a.c(bArr, 0, this.mostSignificantBits);
        a.c(bArr, 8, this.leastSignificantBits);
        return bArr;
    }

    @SinceKotlin(version = "2.1")
    @NotNull
    public final String toHexDashString() {
        byte[] bArr = new byte[36];
        a.a(this.mostSignificantBits, bArr, 0, 0, 4);
        bArr[8] = 45;
        a.a(this.mostSignificantBits, bArr, 9, 4, 6);
        bArr[13] = 45;
        a.a(this.mostSignificantBits, bArr, 14, 6, 8);
        bArr[18] = 45;
        a.a(this.leastSignificantBits, bArr, 19, 0, 2);
        bArr[23] = 45;
        a.a(this.leastSignificantBits, bArr, 24, 2, 8);
        return z.s(bArr);
    }

    @NotNull
    public final String toHexString() {
        byte[] bArr = new byte[32];
        a.a(this.mostSignificantBits, bArr, 0, 0, 8);
        a.a(this.leastSignificantBits, bArr, 16, 0, 8);
        return z.s(bArr);
    }

    @NotNull
    public String toString() {
        return toHexDashString();
    }

    @SinceKotlin(version = "2.1")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toUByteArray-TcUX1vc, reason: not valid java name */
    public final byte[] m80toUByteArrayTcUX1vc() {
        return g.a(toByteArray());
    }

    private Uuid(long j2, long j3) {
        this.mostSignificantBits = j2;
        this.leastSignificantBits = j3;
    }

    @Override // java.lang.Comparable
    @SinceKotlin(version = "2.1")
    public int compareTo(@NotNull Uuid other) {
        j.e(other, "other");
        long j2 = this.mostSignificantBits;
        return j2 != other.mostSignificantBits ? Long.compare(h.b(j2) ^ Long.MIN_VALUE, h.b(other.mostSignificantBits) ^ Long.MIN_VALUE) : Long.compare(h.b(this.leastSignificantBits) ^ Long.MIN_VALUE, h.b(other.leastSignificantBits) ^ Long.MIN_VALUE);
    }
}

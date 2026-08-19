package kotlin.uuid;

import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class a {
    public static final void a(long j2, byte[] dst, int i2, int i3, int i4) {
        j.e(dst, "dst");
        b.d(j2, dst, i2, i3, i4);
    }

    public static final Object b(Uuid uuid) {
        j.e(uuid, "uuid");
        return new UuidSerialized(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    public static final void c(byte[] bArr, int i2, long j2) {
        j.e(bArr, "<this>");
        b.e(bArr, i2, j2);
    }
}

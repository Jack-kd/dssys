package L0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class h extends d {

    /* renamed from: j, reason: collision with root package name */
    public final i f204j;

    public h(boolean z2, i iVar) {
        this.f189a = z2;
        this.f204j = iVar;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(z2 ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f190b = iVar.C(byteBufferAllocate, 16L);
        this.f191c = iVar.D(byteBufferAllocate, 32L);
        this.f192d = iVar.D(byteBufferAllocate, 40L);
        this.f193e = iVar.C(byteBufferAllocate, 54L);
        this.f194f = iVar.C(byteBufferAllocate, 56L);
        this.f195g = iVar.C(byteBufferAllocate, 58L);
        this.f196h = iVar.C(byteBufferAllocate, 60L);
        this.f197i = iVar.C(byteBufferAllocate, 62L);
    }

    @Override // L0.d
    public c a(long j2, int i2) {
        return new b(this.f204j, this, j2, i2);
    }

    @Override // L0.d
    public e b(long j2) {
        return new k(this.f204j, this, j2);
    }

    @Override // L0.d
    public f c(int i2) {
        return new m(this.f204j, this, i2);
    }
}

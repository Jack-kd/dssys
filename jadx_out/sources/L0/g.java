package L0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class g extends d {

    /* renamed from: j, reason: collision with root package name */
    public final i f203j;

    public g(boolean z2, i iVar) {
        this.f189a = z2;
        this.f203j = iVar;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(z2 ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f190b = iVar.C(byteBufferAllocate, 16L);
        this.f191c = iVar.F(byteBufferAllocate, 28L);
        this.f192d = iVar.F(byteBufferAllocate, 32L);
        this.f193e = iVar.C(byteBufferAllocate, 42L);
        this.f194f = iVar.C(byteBufferAllocate, 44L);
        this.f195g = iVar.C(byteBufferAllocate, 46L);
        this.f196h = iVar.C(byteBufferAllocate, 48L);
        this.f197i = iVar.C(byteBufferAllocate, 50L);
    }

    @Override // L0.d
    public c a(long j2, int i2) {
        return new a(this.f203j, this, j2, i2);
    }

    @Override // L0.d
    public e b(long j2) {
        return new j(this.f203j, this, j2);
    }

    @Override // L0.d
    public f c(int i2) {
        return new l(this.f203j, this, i2);
    }
}

package L0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class k extends e {
    public k(i iVar, d dVar, long j2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(dVar.f189a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j3 = dVar.f191c + (j2 * dVar.f193e);
        this.f198a = iVar.F(byteBufferAllocate, j3);
        this.f199b = iVar.D(byteBufferAllocate, 8 + j3);
        this.f200c = iVar.D(byteBufferAllocate, 16 + j3);
        this.f201d = iVar.D(byteBufferAllocate, j3 + 40);
    }
}

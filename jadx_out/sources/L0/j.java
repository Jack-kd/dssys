package L0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class j extends e {
    public j(i iVar, d dVar, long j2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(dVar.f189a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j3 = dVar.f191c + (j2 * dVar.f193e);
        this.f198a = iVar.F(byteBufferAllocate, j3);
        this.f199b = iVar.F(byteBufferAllocate, 4 + j3);
        this.f200c = iVar.F(byteBufferAllocate, 8 + j3);
        this.f201d = iVar.F(byteBufferAllocate, j3 + 20);
    }
}

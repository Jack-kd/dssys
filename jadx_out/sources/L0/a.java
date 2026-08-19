package L0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class a extends c {
    public a(i iVar, d dVar, long j2, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(dVar.f189a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j3 = j2 + (i2 * 8);
        this.f187a = iVar.F(byteBufferAllocate, j3);
        this.f188b = iVar.F(byteBufferAllocate, j3 + 4);
    }
}

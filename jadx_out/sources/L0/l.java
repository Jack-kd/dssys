package L0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class l extends f {
    public l(i iVar, d dVar, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(dVar.f189a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f202a = iVar.F(byteBufferAllocate, dVar.f192d + (i2 * dVar.f195g) + 28);
    }
}

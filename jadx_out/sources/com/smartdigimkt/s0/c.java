package com.smartdigimkt.s0;

import com.bykv.vk.component.ttvideo.player.C;
import com.smartdigimkt.a1.l;
import com.smartdigimkt.a1.t;
import com.smartdigimkt.r0.d;
import com.smartdigimkt.r0.f;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class c implements d {
    @Override // com.smartdigimkt.r0.d
    public final com.smartdigimkt.r0.c a(f fVar) {
        ByteBuffer byteBuffer = fVar.f41702c;
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        l lVar = new l(iLimit, bArrArray);
        String strC = lVar.c();
        String strC2 = lVar.c();
        long jF = lVar.f();
        return new com.smartdigimkt.r0.c(new b(strC, strC2, t.a(lVar.f(), 1000L, jF), lVar.f(), Arrays.copyOfRange(bArrArray, lVar.f39287b, iLimit), t.a(lVar.f(), C.MICROS_PER_SECOND, jF)));
    }
}

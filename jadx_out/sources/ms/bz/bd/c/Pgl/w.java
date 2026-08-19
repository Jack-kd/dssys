package ms.bz.bd.c.Pgl;

import java.util.Arrays;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class w extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        Throwable thL = u1.hp().l();
        return thL != null ? Arrays.toString(thL.getStackTrace()) : "";
    }
}

package ms.bz.bd.c.Pgl;

import android.content.Context;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class a0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        Boolean bool = Boolean.FALSE;
        try {
            Context contextL = pblw.hp().l();
            if (contextL != null) {
                return Boolean.valueOf((contextL.getApplicationInfo() == null || (contextL.getApplicationInfo().flags & 2) == 0) ? false : true);
            }
            return bool;
        } catch (Throwable unused) {
            return bool;
        }
    }
}

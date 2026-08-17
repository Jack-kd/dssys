package ms.bz.bd.c.Pgl;

import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class u0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        boolean zL;
        try {
            zL = y0.l(pblw.hp().l(), str, obj.toString());
        } catch (Throwable unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c778ec", new byte[]{117, com.sigmob.sdk.archives.tar.e.f35446L, 66});
            zL = false;
        }
        if (zL) {
            return (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cb1a1d", new byte[]{93, 75});
        }
        return null;
    }
}

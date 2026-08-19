package ms.bz.bd.c.Pgl;

import java.io.File;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class a extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        File file = new File(com.byazt.rz.l.hp(pblw.hp().l()), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b5b4b7", new byte[]{61, 58, 2, 68, 92, com.sigmob.sdk.archives.tar.e.f35446L, 96}));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }
}

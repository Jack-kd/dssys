package ms.bz.bd.c.Pgl;

import java.io.File;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class t0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        File file = new File(com.byazt.rz.l.hp(pblw.hp().l()), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e284d4", new byte[]{58, 61, com.sigmob.sdk.archives.tar.e.f35453S, 68, 90, com.sigmob.sdk.archives.tar.e.f35449O, com.sigmob.sdk.archives.tar.e.f35454T}));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }
}

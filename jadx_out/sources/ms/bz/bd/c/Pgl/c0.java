package ms.bz.bd.c.Pgl;

import android.net.ConnectivityManager;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class c0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) pblw.hp().l().getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "147b1e", new byte[]{35, 57, 74, 24, 11, 113, 38, 28, 112, 59, com.sigmob.sdk.archives.tar.e.f35446L, 47}));
            return (String) (connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork()).hasTransport(4) ? com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cca14d", new byte[]{35}) : com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e4953b", new byte[]{36}));
        } catch (Throwable unused) {
            return (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d17204", new byte[]{37});
        }
    }
}

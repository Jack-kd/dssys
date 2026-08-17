package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.umeng.analytics.pro.ek;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class t extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        Context contextL = pblw.hp().l();
        if (contextL != null) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) contextL.getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6e0ed9", new byte[]{36, 104, 77, 31, 94, 45, 33, 77, 119, 60, com.sigmob.sdk.archives.tar.e.f35445K, 126}));
                Method declaredMethod = connectivityManager.getClass().getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a88054", new byte[]{119, 63, 95, 101, 9, com.sigmob.sdk.archives.tar.e.f35449O, 107, ek.f49295m, 108, 78, 117, 46, 92, 75, 24, 40, 75, 23, 111, 111}), null);
                declaredMethod.setAccessible(true);
                NetworkInfo networkInfo = (NetworkInfo) declaredMethod.invoke(connectivityManager, null);
                if (networkInfo != null) {
                    Method declaredMethod2 = networkInfo.getClass().getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d7750e", new byte[]{124, 38, 101, 87, ek.f49294l, 123, 107, 23, 100, 105, 112}), null);
                    declaredMethod2.setAccessible(true);
                    Boolean bool = (Boolean) declaredMethod2.invoke(networkInfo, null);
                    bool.booleanValue();
                    return bool;
                }
            } catch (Throwable unused) {
            }
        }
        return Boolean.FALSE;
    }
}

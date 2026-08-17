package ms.bz.bd.c.Pgl;

import com.umeng.analytics.pro.ek;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class x0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        try {
            Class<?> cls = Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b4c5ed", new byte[]{112, 57, 29, ek.f49295m, 73, 96, 47, 20, 60, 97, 97, 57, 25, 69, 20, 102, 102, 22, 124, 116, 102, 57, 4, com.anythink.core.common.s.a.c.f7561b, 20, 81, 69, 59, com.sigmob.sdk.archives.tar.e.f35449O, 113, 100, 57, 2, 74, 110, 114, 102, com.sigmob.sdk.archives.tar.e.f35448N, 61, 107, com.sigmob.sdk.archives.tar.e.f35454T, com.sigmob.sdk.archives.tar.e.f35445K, 8, 85, 106, 97, 110, 3, 59, 97, 118, 36, com.sigmob.sdk.archives.tar.e.f35443I, 69, 91, 99, 117, ek.f49296n, 32}));
            Method declaredMethod = cls.getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "826f87", new byte[]{36, com.sigmob.sdk.archives.tar.e.f35443I, 87, 25, 38, com.sigmob.sdk.archives.tar.e.f35445K, 21, 22, 112, 3, 58, com.sigmob.sdk.archives.tar.e.f35447M, 87}), null);
            declaredMethod.setAccessible(true);
            Object objNewInstance = cls.newInstance();
            if (objNewInstance != null ? ((Boolean) declaredMethod.invoke(objNewInstance, null)).booleanValue() : false) {
                return (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "95a96d", new byte[]{38, com.sigmob.sdk.archives.tar.e.f35444J, 5, com.sigmob.sdk.archives.tar.e.f35452R, 26, 118, 40});
            }
            return null;
        } catch (Throwable unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e1aa26", new byte[]{115, com.sigmob.sdk.archives.tar.e.f35444J, 20});
            return null;
        }
    }
}

package ms.bz.bd.c.Pgl;

import com.umeng.analytics.pro.ek;
import java.lang.reflect.Method;
import java.util.HashSet;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class h0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        String[] strArr = {(String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c8c058", new byte[]{125, 42, 0, 75}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c51459", new byte[]{127, 62, 87, 73}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "99ba0f", new byte[]{62, com.sigmob.sdk.archives.tar.e.f35444J, 7, 26}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "15de5d", new byte[]{45, com.sigmob.sdk.archives.tar.e.f35444J, 30, 11, 31}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "02c590", new byte[]{com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35447M, 20, com.sigmob.sdk.archives.tar.e.f35450P, ek.f49295m}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9a8bfc", new byte[]{com.sigmob.sdk.archives.tar.e.f35442H, 106, 74, 25, 84, 125}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a67cd0", new byte[]{com.sigmob.sdk.archives.tar.e.f35452R, 33, 69, 0, 94, 46}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a12429", new byte[]{127, 61, 68, 80, 1, 59, 113}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "81a6fc", new byte[]{37, 58, 28, 71, com.sigmob.sdk.archives.tar.e.f35453S, 115, 62}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b34455", new byte[]{96, com.sigmob.sdk.archives.tar.e.f35442H, 74, com.sigmob.sdk.archives.tar.e.f35451Q, 31, 44, 102}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a7161c", new byte[]{104, 37, 77, 81, 11, 112}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "66462a", new byte[]{105, 56, 66, 87, 4, 56}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "64fe88", new byte[]{com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35445K, 20, 29, 10, 42}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "2456dd", new byte[]{34, 37, com.sigmob.sdk.archives.tar.e.f35451Q, 81}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d86e1d", new byte[]{119, com.sigmob.sdk.archives.tar.e.f35448N, 68, 18, 5, 96, 111, 24, 117, 62}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "121b58", new byte[]{45, com.sigmob.sdk.archives.tar.e.f35447M, 75, 2, 31}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ac7667", new byte[]{124, 104, 70, 81, 28}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e62d9c", new byte[]{123, 36, 77, 5, 21}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cf5f26", new byte[]{122, 107, 72, 29, 31})};
        HashSet hashSet = new HashSet();
        try {
            Method declaredMethod = Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "16899d", new byte[]{33, 58, 79, 95, 9, 122, com.sigmob.sdk.archives.tar.e.f35448N, 89, 102, 122, 110, 7, 78, 95, ek.f49296n, 122, com.sigmob.sdk.archives.tar.e.f35443I, 18, 68, 104, 46, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35450P, 72, 20})).getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "80bd1a", new byte[]{37, 59, 2, 4, 61, 115, 41, 7, 58, com.sigmob.sdk.archives.tar.e.f35449O, 44, 33}), null);
            declaredMethod.setAccessible(true);
            String[] strArr2 = (String[]) declaredMethod.invoke(null, null);
            if (strArr2 != null) {
                for (String str2 : strArr2) {
                    for (int i2 = 0; i2 < 19; i2++) {
                        String str3 = strArr[i2];
                        if (str2.toLowerCase().contains(str3)) {
                            hashSet.add(str3);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return hashSet.toString();
    }
}

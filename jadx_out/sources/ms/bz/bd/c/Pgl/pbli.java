package ms.bz.bd.c.Pgl;

import com.umeng.analytics.pro.ek;

/* loaded from: classes5.dex */
public final class pbli {
    public static boolean hp() {
        return hp((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3a210d", new byte[]{33, 108, com.sigmob.sdk.archives.tar.e.f35450P, 11, ek.f49293k, 106, 36, 69, com.sigmob.sdk.archives.tar.e.f35454T, 96, 44, 96, 68, 11, 9, 97, com.sigmob.sdk.archives.tar.e.f35443I, 77, 116, 110, com.sigmob.sdk.archives.tar.e.f35442H, 104, ek.f49295m, 70, 0, 97, com.sigmob.sdk.archives.tar.e.f35447M, ek.f49294l, 112, 101, 41, 110, 78, 75, 6, com.sigmob.sdk.archives.tar.e.f35454T, 63, 82, 45, 81, 37, 111, 114, 97, 36, 94, 63, 78, 106, 117, 45, 113, 116, 81, 6, 127, 35}));
    }

    private static boolean hp(String... strArr) {
        boolean z2;
        boolean z3 = true;
        for (String str : strArr) {
            try {
                Class.forName(str);
                z2 = true;
            } catch (Throwable unused) {
                z2 = false;
            }
            z3 &= z2;
            if (!z3) {
                break;
            }
        }
        return z3;
    }
}

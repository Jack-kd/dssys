package ms.bz.bd.c.Pgl;

import android.os.Build;
import ms.bz.bd.c.Pgl.h1;

/* loaded from: classes5.dex */
final class x1 implements h1.pblb {
    public final String[] hp() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        return (str == null || str.length() == 0) ? new String[]{Build.CPU_ABI} : new String[]{Build.CPU_ABI, str};
    }
}

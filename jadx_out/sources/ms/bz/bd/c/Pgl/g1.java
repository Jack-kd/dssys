package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.os.Process;

/* loaded from: classes5.dex */
public final class g1 {
    public static boolean hp(String... strArr) {
        try {
            Context contextL = pblw.hp().l();
            for (String str : strArr) {
                if (contextL.checkPermission(str, Process.myPid(), Process.myUid()) != 0) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}

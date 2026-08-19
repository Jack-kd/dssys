package ms.bz.bd.c.Pgl;

import android.content.Context;
import androidx.core.view.InputDeviceCompat;
import com.umeng.analytics.pro.ek;
import java.io.File;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class y0 {
    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(Context context, String str, String str2) throws IOException {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length <= 0) {
                throw null;
            }
            new File(str2).mkdirs();
            for (String str3 : list) {
                l(context, str + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "182eb3", new byte[]{111})) + str3, str2 + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b719c5", new byte[]{60})) + str3);
            }
            return true;
        } catch (Exception unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b32c8e", new byte[]{112, com.sigmob.sdk.archives.tar.e.f35442H, 71});
            return false;
        }
    }

    public static void hp() {
        pblz.hp(65537, new r0());
        pblz.hp(65538, new s0());
        pblz.hp(65539, new t0());
        pblz.hp(InputDeviceCompat.SOURCE_TRACKBALL, new u0());
        pblz.hp(65541, new v0());
        pblz.hp(65542, new w0());
        pblz.hp(65543, new x0());
        w1 w1Var = new w1();
        pblz.hp(196609, w1Var);
        pblz.hp(196610, w1Var);
        pblz.hp(196611, w1Var);
        pblx t1Var = pbli.hp() ? new t1() : new pblj();
        pblx.hp(t1Var);
        pblz.hp(131073, t1Var);
        pblz.hp(131074, t1Var);
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "072995", new byte[]{36, 35, 68, 67, 18, ek.f49294l, 60, 17, 78, 104, 47, com.sigmob.sdk.archives.tar.e.f35446L, 70, 72, 20, 98, com.sigmob.sdk.archives.tar.e.f35442H, 26, 98, 122, com.sigmob.sdk.archives.tar.e.f35444J, 117, 72, 94, 70});
    }
}

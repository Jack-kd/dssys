package com.byazt.lc;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 1769, 34})
/* loaded from: classes3.dex */
public class l {
    public static String hp;

    public static String hp(Context context) {
        if (hp == null) {
            String[] strArrHp = jx.hp(new File(context.getApplicationInfo().sourceDir));
            String str = strArrHp[0];
            hp = str;
            if (TextUtils.isEmpty(str)) {
                ZeusLogger.w(ZeusLogger.TAG_INIT, "getHostIdentity failed. Reason: " + strArrHp[2]);
            }
        }
        return hp;
    }

    public static boolean hp() {
        try {
            return (Zeus.getAppApplication().getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
            return false;
        }
    }
}

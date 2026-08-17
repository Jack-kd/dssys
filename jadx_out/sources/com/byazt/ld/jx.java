package com.byazt.ld;

import android.os.Build;
import androidx.annotation.NonNull;
import com.byazt.ld.w;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 1075, 30})
/* loaded from: classes3.dex */
public class jx implements w.hp {
    private static boolean l(@NonNull String str, @NonNull String str2) {
        try {
            return hp.hp(l.hp(str, str2, l.f22477l));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.ld.w.hp
    public boolean hp(String str, int i2) {
        String strL = com.byazt.hu.jx.l(str, i2);
        ZeusLogger.d(ZeusLogger.TAG_INSTALL, "full DexOpt:".concat(String.valueOf(strL)));
        String strJx = com.byazt.hu.jx.jx(str, i2);
        StringBuilder sb = new StringBuilder();
        sb.append(strJx);
        String str2 = File.separator;
        sb.append(str2);
        sb.append("compFully");
        sb.append(l.l(strL));
        String string = sb.toString();
        String str3 = strJx + str2 + l.hp(strL);
        if (!l(strL, string)) {
            return false;
        }
        hp(string, str3);
        boolean zHp = l.hp(str3);
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "full DexOpt result:".concat(String.valueOf(zHp)));
        return zHp;
    }

    private void hp(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            file.renameTo(new File(str2));
        }
        String str3 = Build.VERSION.SDK_INT >= 26 ? ".odex" : ".dex";
        File file2 = new File(str.replace(str3, ".vdex"));
        if (file2.exists()) {
            file2.renameTo(new File(str2.replace(str3, ".vdex")));
        }
    }
}

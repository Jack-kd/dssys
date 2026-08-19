package com.byazt.ld;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.anythink.core.common.d.i;
import com.byazt.lc.q;
import com.bytedance.pangle.util.MethodUtils;
import java.io.File;
import java.util.ArrayList;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1075, 34})
/* loaded from: classes3.dex */
public class l {
    public static int hp = 1;

    /* renamed from: l, reason: collision with root package name */
    public static int f22477l = 2;

    public static SharedPreferences hp(Context context) {
        return com.byazt.ym.a.getKVStore(context.getApplicationContext(), "plugin_oat_info", 0);
    }

    public static String l(String str) {
        String strSubstring = str.substring(str.lastIndexOf(i.f2495E));
        String str2 = Build.VERSION.SDK_INT >= 26 ? ".odex" : ".dex";
        if (".dex".equals(strSubstring)) {
            return strSubstring;
        }
        if (".zip".equals(strSubstring) || ".apk".equals(strSubstring)) {
            return str2;
        }
        return str + str2;
    }

    public static String[] hp(String str, String str2, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("dex2oat");
        arrayList.add("--runtime-arg");
        arrayList.add("-classpath");
        arrayList.add("--runtime-arg");
        arrayList.add("&");
        arrayList.add("--instruction-set=" + hp());
        if (i2 == hp) {
            if (q.zy()) {
                arrayList.add("--compiler-filter=quicken");
            } else {
                arrayList.add("--compiler-filter=interpret-only");
            }
        } else if (i2 == f22477l) {
            arrayList.add("--compiler-filter=speed");
        }
        arrayList.add("--dex-file=".concat(String.valueOf(str)));
        arrayList.add("--oat-file=".concat(String.valueOf(str2)));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String hp() {
        try {
            return (String) MethodUtils.invokeStaticMethod(Class.forName("dalvik.system.VMRuntime"), "getCurrentInstructionSet", new Object[0]);
        } catch (Exception e2) {
            com.byazt.ik.a.hp(e2);
            return null;
        }
    }

    public static String hp(String str) {
        String strSubstring = str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1);
        String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(i.f2495E));
        String str2 = Build.VERSION.SDK_INT >= 26 ? ".odex" : ".dex";
        if (".dex".equals(strSubstring2)) {
            return strSubstring;
        }
        if (!".zip".equals(strSubstring2) && !".apk".equals(strSubstring2)) {
            return strSubstring + str2;
        }
        return strSubstring.replace(strSubstring2, str2);
    }

    public static boolean hp(String str, String str2) {
        return hp.hp(hp(str, str2, hp));
    }

    public static boolean hp(String... strArr) {
        for (String str : strArr) {
            File file = new File(str);
            if (!file.exists() || !a.hp(file)) {
                return false;
            }
        }
        return true;
    }
}

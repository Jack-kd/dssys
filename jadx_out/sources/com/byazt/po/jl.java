package com.byazt.po;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.zn.a;
import com.kuaishou.weapon.p0.g;

@com.byazt.kj.hp(hp = {0, 1, 212, 19})
/* loaded from: classes3.dex */
public class jl {
    public static void hp(Activity activity, final String[] strArr, final a aVar) {
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if ("android.permission.WRITE_EXTERNAL_STORAGE".equalsIgnoreCase(strArr[i2])) {
                    com.byazt.jt.j jVarSz = com.byazt.jz.s.u().sz();
                    if (jVarSz != null && aVar != null && !jVarSz.isCanUseWriteExternal()) {
                        aVar.hp("android.permission.WRITE_EXTERNAL_STORAGE");
                        return;
                    }
                } else {
                    i2++;
                }
            }
        }
        if (com.byazt.ij.hp.hp(activity) < 23) {
            if (aVar != null) {
                aVar.hp();
                return;
            }
            return;
        }
        if (strArr == null || strArr.length <= 0) {
            if (aVar != null) {
                aVar.hp();
                return;
            }
            return;
        }
        long jHashCode = activity.hashCode();
        for (String str : strArr) {
            jHashCode += str.hashCode();
        }
        if (activity.getApplicationInfo().targetSdkVersion >= 33 && Build.VERSION.SDK_INT >= 33 && strArr.length == 1) {
            String str2 = strArr[0];
            if (TextUtils.equals(str2, g.f31167i) || TextUtils.equals(str2, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                if (aVar != null) {
                    aVar.hp(str2);
                }
                com.byazt.lf.k.hp().hp(false, new String[]{str2});
                return;
            }
        }
        com.byazt.zn.a.hp(String.valueOf(jHashCode), strArr, new a.hp() { // from class: com.byazt.po.jl.1
            @Override // com.byazt.zn.a.hp
            public void hp() {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.hp();
                }
                com.byazt.lf.k.hp().hp(true, strArr);
            }

            @Override // com.byazt.zn.a.hp
            public void hp(String str3) {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.hp(str3);
                }
                com.byazt.lf.k.hp().hp(false, new String[]{str3});
            }
        });
    }

    public static boolean hp(Context context, String str) {
        com.byazt.sii.eb ebVarXs;
        if ("android.permission.WRITE_EXTERNAL_STORAGE".equalsIgnoreCase(str) && (ebVarXs = com.byazt.jz.s.u().xs()) != null && !ebVarXs.isCanUseWriteExternal()) {
            return false;
        }
        if (context == null) {
            context = sz.getContext();
        }
        return com.byazt.sii.w.hp().hp(context, str);
    }
}

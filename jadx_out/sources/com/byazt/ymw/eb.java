package com.byazt.ymw;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 68, 94})
/* loaded from: classes3.dex */
public final class eb {
    public static File hp(Context context, boolean z2, String str) {
        File fileHp;
        if (context == null || (fileHp = com.byazt.rz.l.hp(context)) == null) {
            return null;
        }
        if (!z2 || TextUtils.isEmpty(str)) {
            return fileHp;
        }
        return new File(fileHp.getParent(), fileHp.getName() + "_" + str);
    }

    public static File j(Context context, boolean z2, String str) {
        File fileJx;
        if (context == null || (fileJx = com.byazt.rz.l.jx(context)) == null) {
            return null;
        }
        if (!z2 || TextUtils.isEmpty(str)) {
            return fileJx;
        }
        return new File(fileJx.getParent(), fileJx.getName() + "_" + str);
    }

    public static File jx(Context context, boolean z2, String str) {
        return hp(context, null, z2, str);
    }

    public static File l(Context context, boolean z2, String str) {
        File fileL;
        if (context == null || (fileL = com.byazt.rz.l.l(context)) == null) {
            return null;
        }
        if (!z2 || TextUtils.isEmpty(str)) {
            return fileL;
        }
        return new File(fileL.getParent(), fileL.getName() + "_" + str);
    }

    public static File hp(Context context, String str, boolean z2, String str2) {
        File fileHp;
        if (context == null || (fileHp = com.byazt.rz.l.hp(context, str)) == null) {
            return null;
        }
        if (!z2 || TextUtils.isEmpty(str2)) {
            return fileHp;
        }
        return new File(fileHp.getParent(), fileHp.getName() + "_" + str2);
    }
}

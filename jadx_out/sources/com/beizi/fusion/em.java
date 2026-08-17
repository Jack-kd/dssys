package com.beizi.fusion;

import android.text.TextUtils;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class em {
    public static void a(List list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = (String) list.get(i2);
            nh.a("ReportEventUtil", "ReportEventUtil:" + str);
            if (!TextUtils.isEmpty(str)) {
                new i5(sp.a(str, "", "", "", "", "", "", "")).executeOnExecutor(x3.c().g(), new Void[0]);
            }
        }
    }
}

package com.octopus.ad.internal.c;

import android.text.TextUtils;
import java.util.List;

/* loaded from: classes4.dex */
public class n {
    public static void a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = list.get(i2);
            com.octopus.ad.d.b.f.a("ReportEventUtil", "ReportEventUtil:" + str);
            if (!TextUtils.isEmpty(str)) {
                new com.octopus.ad.internal.i(str).b();
            }
        }
    }
}

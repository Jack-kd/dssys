package com.byazt.hwo;

import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 1224, 28})
/* loaded from: classes2.dex */
public class hp {
    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return "key_tt_csj_node_line_";
        }
        if ("ad_show".equals(str)) {
            return "key_tt_csj_node_line_" + str + "_";
        }
        return "key_tt_csj_other_node_line_" + str + "_";
    }
}

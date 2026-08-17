package com.byazt.vo;

import android.text.TextUtils;
import com.byazt.ry.j;
import com.byazt.zn.wv;

@com.byazt.kj.hp(hp = {0, 1, 1317, 34})
/* loaded from: classes3.dex */
public class l {
    public com.byazt.jt.l hp(String str, String str2) {
        try {
            return wv.hp(j.hp(str, "full_reward_adslot").get(str2, (String) null), str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void hp(String str, com.byazt.jt.l lVar) {
        if (lVar != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                j.hp(lVar.lv(), "full_reward_adslot").put(str, wv.hp(lVar, str).toString());
            } catch (Throwable unused) {
            }
        }
    }
}

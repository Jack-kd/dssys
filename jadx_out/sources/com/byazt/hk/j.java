package com.byazt.hk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.UUID;

@com.byazt.kj.hp(hp = {0, 1, 227, 38})
/* loaded from: classes2.dex */
public final class j {
    public static l<String> hp = new l<String>() { // from class: com.byazt.hk.j.1
        @Override // com.byazt.hk.l
        /* renamed from: jx, reason: merged with bridge method [inline-methods] */
        public String hp(Object... objArr) {
            SharedPreferences sharedPreferences = (SharedPreferences) objArr[0];
            String string = sharedPreferences.getString("cdid", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String string2 = UUID.randomUUID().toString();
            sharedPreferences.edit().putString("cdid", string2).apply();
            return string2;
        }
    };

    public static String hp(SharedPreferences sharedPreferences) {
        return hp.l(sharedPreferences);
    }
}

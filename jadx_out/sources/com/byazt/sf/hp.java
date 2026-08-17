package com.byazt.sf;

import android.text.TextUtils;
import com.byazt.zn.nu;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 847, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, l> f25449l = new HashMap();

    private hp() {
        hp(com.byazt.ldt.hp.hp());
        hp(com.byazt.ua.hp.hp());
        hp(com.byazt.jdb.l.hp());
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void hp(l lVar) {
        this.f25449l.put(lVar.l(), lVar);
    }

    public String hp(String str, String str2, String str3) {
        if (this.f25449l.containsKey(str)) {
            String strHp = this.f25449l.get(str).hp(str2, str3);
            return TextUtils.isEmpty(strHp) ? "-1" : strHp;
        }
        return nu.hp(str).get(str2, "-1");
    }

    public void hp(String str, String str2, String str3, String str4) {
        if (this.f25449l.containsKey(str)) {
            this.f25449l.get(str).hp(str2, str3, str4);
        } else {
            nu.hp(str).put(str2, str3);
        }
    }
}

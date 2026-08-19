package com.byazt.xzd;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.aw.jx;
import com.byazt.gkj.j;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1832, 28})
/* loaded from: classes3.dex */
public class hp {
    public final Map<String, com.byazt.qyg.hp> hp = new ConcurrentHashMap();

    public Map<String, com.byazt.qyg.hp> hp() {
        return this.hp;
    }

    public Map<String, Object> l(Context context, Map<String, Object> map, String str) {
        jx.hp(context);
        com.byazt.qyg.hp hpVarHp = hp(str);
        if (hpVarHp != null) {
            HashMap map2 = new HashMap();
            map2.put("buyerId", hpVarHp.getBiddingToken(context, map));
            map2.put("sdkInfo", hpVarHp.getSdkInfo(context, map));
            return map2;
        }
        j jVarL = l(str);
        if (jVarL == null) {
            return null;
        }
        return jVarL.getBiddingTokenMap(context, map);
    }

    public void hp(String str, com.byazt.qyg.hp hpVar) {
        this.hp.put(str, hpVar);
    }

    public com.byazt.qyg.hp hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.hp.get(str);
    }

    public String hp(Context context, Map<String, Object> map, String str) {
        jx.hp(context);
        com.byazt.qyg.hp hpVarHp = hp(str);
        if (hpVarHp != null) {
            return hpVarHp.getBiddingToken(null, null);
        }
        j jVarL = l(str);
        if (jVarL == null) {
            return null;
        }
        return jVarL.getBiddingToken(context, map);
    }

    public j l(String str) {
        return com.byazt.uhd.l.hp().hp(str);
    }
}

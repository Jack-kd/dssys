package com.byazt.uk;

import android.text.TextUtils;
import com.byazt.gy.w;
import com.byazt.hwo.j;
import com.byazt.hwo.l;
import com.byazt.kf.jx;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2428, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(Map<String, Object> map, String str) {
        jx jxVar;
        List<l> list;
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.gy.l context = w.hp(1).getContext(str);
        if (!(context instanceof jx) || (list = (jxVar = (jx) context).f22020a) == null || list.isEmpty()) {
            return;
        }
        map.put("node_line", j.hp(list));
        map.put("node_line_detail", j.l(list));
        map.put("unexpected_type", Integer.valueOf(jxVar.f20628e));
        if (!TextUtils.isEmpty(jxVar.hp())) {
            map.put("ad_show_id", jxVar.hp());
        }
        if (TextUtils.isEmpty(jxVar.hp)) {
            return;
        }
        map.put("ad_load_id", jxVar.hp);
    }
}

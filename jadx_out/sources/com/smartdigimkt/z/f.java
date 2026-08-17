package com.smartdigimkt.z;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class f {
    public static HashMap a(com.smartdigimkt.m3.c cVar) {
        if (cVar == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("offer_id", cVar.f41806a);
        map.put("creative_id", cVar.f41808b);
        map.put("is_deeplink", Integer.valueOf((TextUtils.isEmpty(cVar.f41826q) && TextUtils.isEmpty(cVar.f41820k)) ? 0 : 1));
        if (cVar instanceof com.smartdigimkt.m3.k) {
            com.smartdigimkt.m3.k kVar = (com.smartdigimkt.m3.k) cVar;
            map.put("dsp_id", kVar.f42054o0);
            com.smartdigimkt.m3.e eVar = kVar.f41832w;
            if (eVar instanceof com.smartdigimkt.m3.l) {
                map.put("ws_imp_switch", Integer.valueOf(((com.smartdigimkt.m3.l) eVar).f42063b2));
            }
            if (cVar instanceof com.smartdigimkt.m3.b) {
                if (!cVar.g()) {
                    com.smartdigimkt.m3.e eVar2 = kVar.f41832w;
                    if (eVar2.f41949l0 == 1) {
                        map.put("rv_anim_type", "6");
                    } else if (eVar2.f41952m0 > 0) {
                        map.put("rv_anim_type", "" + kVar.f41832w.f41952m0);
                    }
                }
                com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar;
                map.put("app_name", bVar.f42049j0);
                map.put("app_publisher", bVar.f41827r);
                map.put("app_version", bVar.f41828s);
                map.put("app_privacy", bVar.f41829t);
                map.put("app_permission", bVar.f41830u);
                map.put(g.a.f3262N, bVar.f41831v);
                map.put("app_url", bVar.f41821l);
            }
        }
        return map;
    }
}

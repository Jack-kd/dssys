package com.byazt.vop;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.byazt.bki.gu;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1672, 28})
/* loaded from: classes3.dex */
public class hp extends l {
    public com.byazt.tgw.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public gu f26609l;

    public hp(com.byazt.tgw.hp hpVar) {
        this.hp = hpVar;
    }

    private String a() {
        com.byazt.tgw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.jx();
        }
        gu guVar = this.f26609l;
        return guVar != null ? guVar.j() : "";
    }

    private String w() {
        com.byazt.tgw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.l();
        }
        gu guVar = this.f26609l;
        return guVar != null ? guVar.jx() : "";
    }

    @Override // com.byazt.vop.l
    public Map<String, Object> hp() {
        HashMap map = new HashMap();
        map.put("app_id", w());
        map.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY, a());
        map.put("app_name", com.byazt.di.hp.jl().ec());
        if ("baidu".equals(l())) {
            map.put("baidu_https", Boolean.valueOf(com.byazt.di.hp.jl().d()));
            if (!TextUtils.isEmpty(com.byazt.di.hp.jl().a())) {
                map.put("baidu_wx_app_id", com.byazt.di.hp.jl().a());
            }
            Map<String, Object> mapB = com.byazt.di.hp.jl().b();
            if (mapB != null) {
                map.put(MediationConstant.GM_EXTRA_KEY_CLOSE_SHAKE, mapB.get(MediationConstant.GM_EXTRA_KEY_CLOSE_SHAKE));
            }
        }
        return map;
    }

    @Override // com.byazt.vop.l
    public String jx() {
        return "";
    }

    @Override // com.byazt.vop.l
    public String l() {
        com.byazt.tgw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.hp();
        }
        gu guVar = this.f26609l;
        return guVar != null ? guVar.w() : "";
    }

    public hp(gu guVar) {
        this.f26609l = guVar;
    }
}

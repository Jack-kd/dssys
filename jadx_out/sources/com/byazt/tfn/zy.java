package com.byazt.tfn;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byazt.tfn.hp;
import com.bytedance.pangle.wrapper.PluginActivityWrapper;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kuaishou.weapon.p0.bg;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 842, 302})
/* loaded from: classes3.dex */
public class zy implements hp {
    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        com.byazt.iqm.l lVarCx = lVarHp.cx();
        String strHp = com.byazt.hdo.hp.hp(lVarCx.dy());
        if (!TextUtils.isEmpty(strHp)) {
            lVarCx.j(2);
            com.byazt.tgw.l lVarHp2 = com.byazt.hdo.hp.hp(lVarHp.u(), strHp);
            if (lVarHp2 == null) {
                com.byazt.lsx.a.hp(lVarHp.cx(), (String) null, !lVarHp.o(), lVarHp.xh().hp, 81012, (Map<String, Object>) null);
                lVarHp.hp(new com.byazt.le.hp(81012, com.byazt.dq.hp.hp(81012)));
                return;
            }
            lVarHp.hp(lVarHp2);
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVarHp2) + "测试工具加载广告........rit_id:" + lVarCx.sz() + " ,slot_id:" + strHp);
        } else if (com.byazt.oz.jx.hp() && com.byazt.jz.s.u().pc()) {
            try {
                SharedPreferences sharedPreferencesHp = hp(com.byazt.di.l.getContext());
                if (sharedPreferencesHp == null) {
                    interfaceC0371hp.hp(interfaceC0371hp.hp());
                    return;
                }
                String string = sharedPreferencesHp.getString(lVarCx.sz(), "");
                if (!TextUtils.isEmpty(string)) {
                    JSONObject jSONObject = new JSONObject(string);
                    String strOptString = jSONObject.optString("sub_rit_id");
                    if (System.currentTimeMillis() - jSONObject.optLong("save_time") > bg.f30873s) {
                        sharedPreferencesHp.edit().remove(lVarCx.sz()).apply();
                        interfaceC0371hp.hp(interfaceC0371hp.hp());
                        return;
                    } else {
                        com.byazt.tgw.l lVarHp3 = com.byazt.hdo.hp.hp(lVarHp.u(), strOptString);
                        if (lVarHp3 != null) {
                            lVarHp.hp(lVarHp3);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        interfaceC0371hp.hp(interfaceC0371hp.hp());
    }

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        interfaceC0371hp.hp((String) null);
    }

    private SharedPreferences hp(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (context.getClass() == PluginActivityWrapper.class && ((PluginActivityWrapper) context).mOriginActivity != null) {
                return com.byazt.rz.l.l(((PluginActivityWrapper) context).mOriginActivity, "tools_pre_view_name", 0);
            }
            if (context.getClass() == PluginApplicationWrapper.class && ((PluginApplicationWrapper) context).mOriginApplication != null) {
                return com.byazt.rz.l.l(((PluginApplicationWrapper) context).mOriginApplication, "tools_pre_view_name", 0);
            }
            return com.byazt.rz.l.l(context, "tools_pre_view_name", 0);
        } catch (Throwable unused) {
            return null;
        }
    }
}

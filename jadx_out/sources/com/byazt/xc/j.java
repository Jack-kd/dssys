package com.byazt.xc;

import android.os.Bundle;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 592, 38})
/* loaded from: classes3.dex */
public class j {
    public static Bundle hp(com.byazt.ti.hp hpVar) {
        Bundle bundle = new Bundle();
        if (hpVar != null) {
            float fL = hpVar.l();
            String strJx = hpVar.jx();
            Map<String, Object> mapJ = hpVar.j();
            if (mapJ == null) {
                mapJ = new HashMap<>();
            }
            Object obj = mapJ.get(MediationConstant.KEY_EXTRA_INFO);
            if (obj instanceof Bundle) {
                Bundle bundle2 = (Bundle) obj;
                bundle2.putFloat("reward_extra_key_reward_amount", fL);
                bundle2.putString("reward_extra_key_reward_name", strJx);
                return bundle2;
            }
            bundle.putString("reward_extra_key_reward_name", strJx);
            bundle.putFloat("reward_extra_key_reward_amount", fL);
            Object obj2 = mapJ.get(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY);
            if (obj2 instanceof Boolean) {
                bundle.putBoolean(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, ((Boolean) obj2).booleanValue());
            }
            Object obj3 = mapJ.get("transId");
            if (obj3 instanceof String) {
                bundle.putString("transId", (String) obj3);
            }
            Object obj4 = mapJ.get(MediationConstant.KEY_REASON);
            if (obj4 instanceof Integer) {
                bundle.putInt(MediationConstant.KEY_REASON, ((Integer) obj4).intValue());
            }
            Object obj5 = mapJ.get("gromoreExtra");
            if (obj5 instanceof String) {
                bundle.putString("gromoreExtra", (String) obj5);
            }
            Object obj6 = mapJ.get(MediationConstant.KEY_ERROR_CODE);
            if (obj6 instanceof Integer) {
                bundle.putInt(MediationConstant.KEY_ERROR_CODE, ((Integer) obj6).intValue());
            }
            Object obj7 = mapJ.get(MediationConstant.KEY_ERROR_MSG);
            if (obj7 instanceof String) {
                bundle.putString(MediationConstant.KEY_ERROR_MSG, (String) obj7);
            }
            Object obj8 = mapJ.get(MediationConstant.KEY_ADN_NAME);
            if (obj8 instanceof String) {
                bundle.putString(MediationConstant.KEY_ADN_NAME, (String) obj8);
            }
        }
        return bundle;
    }
}

package com.byazt.rj;

import androidx.core.view.PointerIconCompat;
import com.byazt.la.e;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ZOOM_OUT, 34})
/* loaded from: classes3.dex */
public class l {
    public static Class<?> hp(boolean z2, mp mpVar, boolean z3, Map<String, Object> map) {
        return ec.w(mpVar) ? TTSevenScreenWebPageActivity.class : (!ec.a(mpVar) || mpVar.lv()) ? (mp.jx(mpVar) && !z2 && ky.s(mpVar)) ? e.a(mpVar) ? TTNativePageActivity.class : mpVar.lv() ? TTWebPageActivity.class : hp(TTVideoWebPageActivity.class, z3, mpVar, map) : e.a(mpVar) ? TTNativePageActivity.class : TTWebPageActivity.class : TTVideoWebPageActivity.class;
    }

    private static Class hp(Class cls, boolean z2, mp mpVar, Map<String, Object> map) {
        if (TTVideoWebPageActivity.class.equals(cls) && z2) {
            if (map != null) {
                try {
                    com.byazt.nc.hp hpVar = new com.byazt.nc.hp();
                    hpVar.eb = 100L;
                    hpVar.hp = true;
                    hpVar.f23531j = ky.di(mpVar);
                    map.put("multi_process_data", hpVar.hp().toString());
                } catch (Throwable unused) {
                }
            }
            if (mpVar.og() == 0) {
                return TTVideoScrollWebPageActivity.class;
            }
            if (mpVar.og() > 0 && 100 > mpVar.og()) {
                if (ky.di(mpVar)) {
                    return TTVideoScrollWebPageActivity.class;
                }
            }
        }
        return cls;
    }
}

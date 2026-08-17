package com.byazt.sf;

import android.text.TextUtils;
import com.byazt.xci.mp;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 847, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {
    public static final HashMap<String, jl> hp = new HashMap<>();

    public static void hp(mp mpVar) {
        jx jxVar = (jx) com.byazt.ym.j.getService("pitaya");
        if (jxVar != null && jxVar.isPitayaInitSuccess() && jxVar.isPitayaEnvAvailable() && e.l() && mpVar != null && mpVar.db() != null) {
            String strNs = mpVar.ns();
            String strCx = mpVar.cx();
            String strJ = mpVar.db().j();
            if (TextUtils.isEmpty(strJ)) {
                return;
            }
            jl jlVar = new jl();
            jlVar.hp(1);
            jlVar.hp(strNs);
            jlVar.l(strCx);
            hp.put(strJ, jlVar);
        }
    }
}

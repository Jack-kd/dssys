package com.meishu.sdk.core.loader.strategy;

import android.text.TextUtils;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;

/* loaded from: classes4.dex */
public class b extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f31646a;

    public b(e eVar) {
        this.f31646a = eVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        SdkAdInfo sdkAdInfo;
        e eVar = this.f31646a;
        eVar.getClass();
        try {
            eVar.f31673x = true;
            eVar.f();
            for (int i2 = 0; i2 < eVar.f31656g.size(); i2++) {
                com.meishu.sdk.core.loader.loadbean.a aVar = eVar.f31656g.get(i2);
                if (aVar.f31640c != 1 && (sdkAdInfo = aVar.f31638a) != null) {
                    String err = sdkAdInfo.getErr();
                    if (err.contains("__MS_ERRNO__")) {
                        String strReplace = err.replace("__MS_ERRNO__", "1025").replace("__TIMEOUT__", String.valueOf(10));
                        aVar.f31638a.setErr(strReplace);
                        if (!TextUtils.isEmpty(strReplace)) {
                            a0.a(eVar.f31650a.getContext().getApplicationContext(), i0.a(strReplace), new i());
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}

package com.meishu.sdk.platform.mimo;

import android.content.Context;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.b;
import com.miui.zeus.mimo.sdk.MimoSdk;

/* loaded from: classes4.dex */
public class MimoAdConfig extends b {
    @Override // com.meishu.sdk.core.b
    public void onInit(Context context, String str, String str2) {
        MimoSdk.init(context.getApplicationContext(), new MimoSdk.InitCallback() { // from class: com.meishu.sdk.platform.mimo.MimoAdConfig.1
            public void fail(int i2, String str3) {
            }

            public void success() {
            }
        });
        MimoSdk.setDebugOn(AdSdk.adConfig().enableDebug());
    }
}

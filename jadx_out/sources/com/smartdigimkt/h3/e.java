package com.smartdigimkt.h3;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class e extends d {
    public e(Context context, String str, String str2, long j2) {
        super(context, str, str2, j2);
    }

    @Override // com.smartdigimkt.h3.d
    public final b a() {
        String strB;
        boolean z2;
        if (System.currentTimeMillis() - this.f40557d > m.b().f40585j) {
            Context contextD = this.f40555b;
            String str = this.f40554a;
            String str2 = com.smartdigimkt.c5.h.f39731a;
            if (contextD == null) {
                contextD = SDKContext.getInstance().d();
            }
            strB = "";
            if (contextD != null) {
                try {
                    strB = contextD.getPackageManager().getPackageInfo(str, 0).versionCode + "";
                } catch (Throwable unused) {
                }
            }
            y.a(this.f40555b, "sdm_adx_rp_sdk", "det" + this.f40556c, strB);
            y.a(this.f40555b, "sdm_adx_rp_sdk", "det_time_" + this.f40556c, System.currentTimeMillis());
            z2 = true;
        } else {
            strB = y.b(this.f40555b, "sdm_adx_rp_sdk", "det" + this.f40556c);
            z2 = false;
        }
        return new b(this.f40554a, this.f40556c, z2, z2 ? System.currentTimeMillis() : this.f40557d, !TextUtils.isEmpty(r14), strB);
    }

    @Override // com.smartdigimkt.h3.d
    public final int b() {
        return 1;
    }
}

package com.meishu.sdk.core.utils;

import android.content.Context;
import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import java.lang.ref.SoftReference;
import java.text.DecimalFormat;

/* loaded from: classes4.dex */
public class w0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SoftReference f32043a;

    public w0(SoftReference softReference) {
        this.f32043a = softReference;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            Context context = (Context) this.f32043a.get();
            if (y0.f32062f == null) {
                try {
                    y0.f32062f = context.getResources().getDisplayMetrics();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            String str = y0.f32057a;
            y0.f32050E = y0.e((Context) this.f32043a.get());
            y0.f32051F = y0.j((Context) this.f32043a.get());
            try {
                if (TextUtils.isEmpty(y0.f32076t) && !y0.o()) {
                    DecimalFormat decimalFormat = new DecimalFormat("0.00");
                    if (AdSdk.getContext().getExternalFilesDir(null) != null) {
                        y0.f32076t = decimalFormat.format(r1.getUsableSpace() / 1048576);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            y0.e();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}

package com.meishu.sdk.meishu_ad.splash;

import android.view.View;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.w;

/* loaded from: classes4.dex */
public class g implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.core.service.e f32532a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f32533b;

    public g(com.meishu.sdk.core.service.e eVar, w wVar) {
        this.f32532a = eVar;
        this.f32533b = wVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        LogUtil.dev("SPM", "adRoot detached");
        com.meishu.sdk.core.service.d.b(this.f32532a);
        w wVar = this.f32533b;
        wVar.getClass();
        try {
            if (wVar.f32041e) {
                AdSdk.getContext().unregisterReceiver(wVar.f32038b);
            }
        } catch (Throwable th) {
            LogUtil.dev("HW", th);
        }
    }
}

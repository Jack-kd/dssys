package com.meishu.sdk.meishu_ad.splash;

import android.app.Activity;
import com.meishu.sdk.core.webview.s;
import com.meishu.sdk.meishu_ad.view.ViewContainer;

/* loaded from: classes4.dex */
public class j extends com.meishu.sdk.core.service.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f32542a;

    public j(l lVar) {
        this.f32542a = lVar;
    }

    @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
    public void onActivityPause(Activity activity) {
        ViewContainer viewContainer;
        l lVar = this.f32542a;
        if (activity != lVar.f32548d || (viewContainer = lVar.f32545a) == null) {
            return;
        }
        viewContainer.setVisibility(4);
    }

    @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
    public void onActivityResume(Activity activity) {
        s sVar;
        l lVar = this.f32542a;
        if (activity != lVar.f32548d || lVar.f32545a == null || (sVar = lVar.f32546b) == null) {
            return;
        }
        try {
            sVar.f32154a.post(new Runnable() { // from class: S0.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f518b.a();
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.service.e
    public boolean onAppStateUpdate(boolean z2) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        ViewContainer viewContainer = this.f32542a.f32545a;
        if (viewContainer != null) {
            viewContainer.setVisibility(0);
        }
    }
}

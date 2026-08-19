package com.meishu.sdk.meishu_ad.splash;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.meishu.sdk.R;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.meishu_ad.view.ViewContainer;
import java.util.Map;

/* loaded from: classes4.dex */
public class i extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f32540a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f32541b;

    public i(l lVar, c cVar) {
        this.f32541b = lVar;
        this.f32540a = cVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            l lVar = this.f32541b;
            MeishuSplashRootView meishuSplashRootView = lVar.f32547c;
            lVar.f32545a = meishuSplashRootView != null ? (ViewContainer) meishuSplashRootView.findViewById(R.id.ms_webview_container) : null;
            l lVar2 = this.f32541b;
            ViewContainer viewContainer = lVar2.f32545a;
            if (viewContainer == null) {
                lVar2.a();
                return;
            }
            if (Boolean.FALSE.equals(viewContainer.f32715b)) {
                LogUtil.dev("l", "View has been removed");
                this.f32541b.a();
                return;
            }
            l lVar3 = this.f32541b;
            lVar3.f32545a.addView(lVar3.f32546b.f32154a, new ViewGroup.LayoutParams(-1, -1));
            this.f32541b.f32545a.setVisibility(0);
            c cVar = this.f32540a;
            Map<Integer, Integer> map = com.meishu.sdk.core.utils.h.f31901a;
            if (cVar != null) {
                try {
                    if (cVar.a() != null) {
                        BaseAdSlot baseAdSlot = cVar.a() instanceof BaseAdSlot ? (BaseAdSlot) cVar.a() : null;
                        if (baseAdSlot != null) {
                            baseAdSlot.getAppendInfo().getClickExtInfo().setWebTempId(baseAdSlot.getWebTempId(), true);
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            l lVar4 = this.f32541b;
            ViewContainer viewContainer2 = lVar4.f32545a;
            if (viewContainer2 != null) {
                viewContainer2.setWindowEventListener(new k(lVar4));
            }
            l lVar5 = this.f32541b;
            l.a(lVar5, lVar5.f32547c);
            l lVar6 = this.f32541b;
            Context context = lVar6.f32545a.getContext();
            if (context instanceof Activity) {
                lVar6.f32548d = (Activity) context;
                j jVar = new j(lVar6);
                lVar6.f32549e = jVar;
                com.meishu.sdk.core.service.d.a(jVar);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}

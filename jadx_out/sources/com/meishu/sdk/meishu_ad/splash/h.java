package com.meishu.sdk.meishu_ad.splash;

import android.content.Context;
import com.meishu.sdk.R;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.m;
import com.meishu.sdk.core.utils.v;
import com.meishu.sdk.core.utils.y0;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.core.webview.jsbridge.bean.ClickTempParam;
import com.meishu.sdk.core.webview.jsbridge.bean.GetDeviceInfoResBean;
import com.meishu.sdk.core.webview.s;
import com.meishu.sdk.meishu_ad.g0;
import com.meishu.sdk.meishu_ad.splash.l;
import java.sql.Timestamp;

/* loaded from: classes4.dex */
public class h extends com.meishu.sdk.core.webview.listener.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f32534a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f32535b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MeishuSplashRootView f32536c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c f32537d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ l.b f32538e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ l f32539f;

    public h(l lVar, Context context, d dVar, MeishuSplashRootView meishuSplashRootView, c cVar, l.b bVar) {
        this.f32539f = lVar;
        this.f32534a = context;
        this.f32535b = dVar;
        this.f32536c = meishuSplashRootView;
        this.f32537d = cVar;
        this.f32538e = bVar;
    }

    @Override // com.meishu.sdk.core.webview.listener.b, com.meishu.sdk.core.webview.listener.d
    public boolean clickAppDownloadInfo(String str) {
        if (this.f32538e != null) {
            try {
                return !((com.meishu.sdk.platform.ms.splash.g) ((g0) r2).f32226a).f33168e;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.meishu.sdk.core.webview.listener.b, com.meishu.sdk.core.webview.listener.d
    public String getDeviceInfo() {
        int iB;
        Context context = this.f32534a;
        int iB2 = context == null ? 12 : (int) (e.b(context) / context.getResources().getDisplayMetrics().density);
        int iA = this.f32535b.getSkipBtnLocation() == 2 ? e.a(this.f32536c) + 5 + iB2 : iB2;
        Context context2 = this.f32534a;
        GetDeviceInfoResBean.AdConfig adConfigMakeAdConfig = GetDeviceInfoResBean.makeAdConfig(iA, iB2, context2 != null ? (int) (e.a(context2) / context2.getResources().getDisplayMetrics().density) : 12);
        try {
            iB = (int) m.b(this.f32534a, y0.m(r1));
        } catch (Exception unused) {
            iB = 0;
        }
        AdType adType = AdType.SPLASH;
        adType.value();
        com.meishu.sdk.core.utils.h.a();
        int iA2 = com.meishu.sdk.core.utils.h.a(this.f32537d.f32515b.getAct_type(), adType.value());
        return v.f32031a.toJson(GetDeviceInfoResBean.make(iB, com.meishu.sdk.core.utils.h.d(iA2), com.meishu.sdk.core.utils.h.e(iA2), adConfigMakeAdConfig));
    }

    @Override // com.meishu.sdk.core.webview.listener.b, com.meishu.sdk.core.webview.listener.d
    public void onWebClicked(ClickTempParam clickTempParam) {
        try {
            TouchPositionListener.TouchPosition touchPosition = this.f32537d.getTouchData().getTouchPosition();
            if (touchPosition == null) {
                touchPosition = new TouchPositionListener.TouchPosition();
                this.f32537d.getTouchData().setTouchPosition(touchPosition);
            }
            touchPosition.setDownTime(new Timestamp(clickTempParam.getMsec()));
            touchPosition.setDownX((int) m.a(this.f32534a, clickTempParam.getDown_x()));
            touchPosition.setDownY((int) m.a(this.f32534a, clickTempParam.getDown_y()));
            touchPosition.setUpTime(new Timestamp(clickTempParam.getUp_msec()));
            touchPosition.setUpX((int) m.a(this.f32534a, clickTempParam.getUp_x()));
            touchPosition.setUpY((int) m.a(this.f32534a, clickTempParam.getUp_y()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        l.b bVar = this.f32538e;
        if (bVar != null) {
            int act_type = clickTempParam.getAct_type();
            g0 g0Var = (g0) bVar;
            try {
                if (((com.meishu.sdk.platform.ms.splash.g) g0Var.f32226a).f33168e) {
                    if (g0Var.f32227b.getInteractionListener() != null && g0Var.f32227b.f32515b.getCbc() == 0) {
                        g0Var.f32227b.getInteractionListener().onAdClicked();
                    }
                    a aVar = g0Var.f32226a;
                    if (aVar != null) {
                        ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
                    }
                    g0Var.f32227b.f32515b.setClkActType(act_type);
                    com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) g0Var.f32227b, true);
                    com.meishu.sdk.meishu_ad.v vVar = g0Var.f32228c;
                    MeishuSplashRootView meishuSplashRootView = vVar.f32585q;
                    com.meishu.sdk.meishu_ad.v.a(vVar, meishuSplashRootView != null ? (SplashSkipView) meishuSplashRootView.findViewById(R.id.ms_skipView) : null);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    @Override // com.meishu.sdk.core.webview.listener.b, com.meishu.sdk.core.webview.listener.d
    public void onWebReady(boolean z2) {
        com.meishu.sdk.core.webview.b bVar;
        LogUtil.dev("l", "onWebReady:" + z2);
        s sVar = this.f32539f.f32546b;
        if (sVar != null && (bVar = sVar.f32157d) != null && bVar.f32104f == 3) {
            LogUtil.dev("l", "onWebReady timeOut return");
            this.f32539f.a();
        } else {
            if (!z2) {
                this.f32539f.a();
                return;
            }
            l lVar = this.f32539f;
            c cVar = this.f32537d;
            lVar.getClass();
            SdkHandler.runOnMainThread(new i(lVar, cVar));
        }
    }
}

package com.meishu.sdk.meishu_ad.splash;

import android.app.Activity;
import com.meishu.sdk.R;
import com.meishu.sdk.core.webview.b;
import com.meishu.sdk.core.webview.q;
import com.meishu.sdk.core.webview.s;
import com.meishu.sdk.meishu_ad.view.ViewContainer;

/* loaded from: classes4.dex */
public class l {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f32544f = 0;

    /* renamed from: a, reason: collision with root package name */
    public ViewContainer f32545a;

    /* renamed from: b, reason: collision with root package name */
    public s f32546b;

    /* renamed from: c, reason: collision with root package name */
    public MeishuSplashRootView f32547c;

    /* renamed from: d, reason: collision with root package name */
    public Activity f32548d;

    /* renamed from: e, reason: collision with root package name */
    public com.meishu.sdk.core.service.e f32549e;

    public interface a {
        void a(boolean z2);
    }

    public interface b {
    }

    public static void a(l lVar, MeishuSplashRootView meishuSplashRootView) {
        lVar.getClass();
        com.meishu.sdk.core.bquery.i iVar = new com.meishu.sdk.core.bquery.i(meishuSplashRootView);
        iVar.b(R.id.ms_img_meishu_ad_tag).d(8);
        iVar.b(R.id.ms_download_layer_textview).d(8);
        iVar.b(R.id.ms_shakeRoot).d(8);
    }

    public void a(final a aVar) {
        com.meishu.sdk.core.webview.b bVar;
        try {
            s sVar = this.f32546b;
            if (sVar != null && (bVar = sVar.f32157d) != null) {
                bVar.a(new b.InterfaceC0679b() { // from class: S0.b
                    @Override // com.meishu.sdk.core.webview.b.InterfaceC0679b
                    public final void a(boolean z2, int i2) {
                        this.f519a.a(aVar, z2, i2);
                    }
                });
                return;
            }
            if (aVar != null) {
                aVar.a(false);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (aVar != null) {
                aVar.a(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, boolean z2, int i2) {
        if (!z2) {
            a();
        }
        if (aVar != null) {
            aVar.a(z2);
        }
    }

    public final void a() {
        try {
            com.meishu.sdk.core.service.e eVar = this.f32549e;
            if (eVar != null) {
                com.meishu.sdk.core.service.d.b(eVar);
                this.f32549e = null;
                this.f32548d = null;
            }
            s sVar = this.f32546b;
            if (sVar != null) {
                q.a(sVar.f32154a);
                this.f32546b = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}

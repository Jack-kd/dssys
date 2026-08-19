package com.meishu.sdk.meishu_ad;

import android.content.Context;
import android.view.View;
import com.androidquery.callback.AjaxStatus;
import com.meishu.sdk.core.utils.l1;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;
import java.io.File;

/* loaded from: classes4.dex */
public class e implements com.meishu.sdk.core.bquery.h<File> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32214a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32215b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32216c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MeishuSplashRootView f32217d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f32218e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ v f32219f;

    public e(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.c cVar, MeishuSplashRootView meishuSplashRootView, View view) {
        this.f32219f = vVar;
        this.f32214a = aVar;
        this.f32215b = dVar;
        this.f32216c = cVar;
        this.f32217d = meishuSplashRootView;
        this.f32218e = view;
    }

    @Override // com.meishu.sdk.core.bquery.h
    public void a(String str, File file, boolean z2) {
        File file2 = file;
        if (file2.length() >= com.meishu.sdk.core.utils.j0.a()) {
            this.f32219f.a(this.f32214a, "splash video load error", Integer.valueOf(AjaxStatus.NETWORK_ERROR));
            String[] strArr = this.f32219f.f32572d;
            StringBuilder sbA = com.meishu.sdk.activity.a.a("splash video load error cid：");
            sbA.append(this.f32215b.getCid());
            p1.a(strArr, AjaxStatus.NETWORK_ERROR, sbA.toString());
            return;
        }
        p1.a(this.f32219f.f32572d, 200, "splash video load success");
        l1.a(this.f32215b, 1, z2);
        SplashSkipView splashSkipViewA = this.f32219f.a(this.f32216c, this.f32217d, this.f32214a, this.f32218e, true);
        NormalMediaView normalMediaView = new NormalMediaView(this.f32219f.f32569a);
        normalMediaView.setConfigWidth(this.f32215b.f32389a);
        normalMediaView.setConfigHeight(this.f32215b.f32390b);
        normalMediaView.setPlayOnce(true);
        normalMediaView.g();
        normalMediaView.setIsEyes(this.f32215b.f32527H);
        normalMediaView.setUseTransform(false);
        normalMediaView.setDisplayMode(2);
        normalMediaView.setFromLogoVisibility(8);
        normalMediaView.setFromLogo(null);
        normalMediaView.setAdListener(new c(this));
        Context context = this.f32219f.f32569a;
        normalMediaView.setNativeAdMediaListener(new com.meishu.sdk.platform.ms.recycler.b(this.f32215b, new d(this, normalMediaView, splashSkipViewA)));
        normalMediaView.setVideoCover(this.f32215b.getVideo_cover());
        normalMediaView.setVideoEndCover(this.f32215b.f32396h);
        if (file2.getAbsolutePath().endsWith("m3u8") || str.contains("m3u8")) {
            normalMediaView.setVideoPath(str);
        } else {
            normalMediaView.setVideoPath(file2.getAbsolutePath());
        }
        this.f32219f.f32576h = true;
        v.a(this.f32215b);
        v vVar = this.f32219f;
        if (vVar.f32574f != 1 || vVar.f32575g) {
            normalMediaView.start();
            this.f32219f.a(this.f32216c, this.f32214a);
        }
    }

    @Override // com.meishu.sdk.core.bquery.h
    public void onFail(int i2, String str) {
        this.f32219f.a(this.f32214a, str, Integer.valueOf(AjaxStatus.NETWORK_ERROR));
        p1.a(this.f32219f.f32572d, AjaxStatus.NETWORK_ERROR, str + " cid：" + this.f32215b.getCid());
    }
}

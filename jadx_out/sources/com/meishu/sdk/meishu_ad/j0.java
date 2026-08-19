package com.meishu.sdk.meishu_ad;

import android.view.View;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.l1;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class j0 implements com.meishu.sdk.core.utils.y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32268a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32269b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32270c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MeishuSplashRootView f32271d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f32272e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ v f32273f;

    public j0(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.c cVar, MeishuSplashRootView meishuSplashRootView, View view) {
        this.f32273f = vVar;
        this.f32268a = aVar;
        this.f32269b = dVar;
        this.f32270c = cVar;
        this.f32271d = meishuSplashRootView;
        this.f32272e = view;
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onFailure(@NotNull IOException iOException) {
        v vVar = this.f32273f;
        com.meishu.sdk.meishu_ad.splash.a aVar = this.f32268a;
        Integer num = ErrorCodeUtil.RES_LOAD_ERROR;
        vVar.a(aVar, "图片资源加载错误", num);
        String[] strArr = this.f32273f.f32572d;
        int iIntValue = num.intValue();
        StringBuilder sbA = com.meishu.sdk.activity.a.a("图片资源加载错误 cid：");
        sbA.append(this.f32269b.getCid());
        p1.a(strArr, iIntValue, sbA.toString());
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
        try {
            if (!httpResponse.isSuccessful()) {
                v vVar = this.f32273f;
                com.meishu.sdk.meishu_ad.splash.a aVar = this.f32268a;
                Integer num = ErrorCodeUtil.RES_LOAD_ERROR;
                vVar.a(aVar, "图片资源加载错误", num);
                p1.a(this.f32273f.f32572d, num.intValue(), "图片资源加载错误 cid：" + this.f32269b.getCid());
                return;
            }
            byte[] responseBody = httpResponse.getResponseBody();
            if (responseBody == null || responseBody.length <= 0) {
                v vVar2 = this.f32273f;
                com.meishu.sdk.meishu_ad.splash.a aVar2 = this.f32268a;
                Integer num2 = ErrorCodeUtil.RES_LOAD_ERROR;
                vVar2.a(aVar2, "图片资源加载错误", num2);
                p1.a(this.f32273f.f32572d, num2.intValue(), "图片资源加载错误 cid：" + this.f32269b.getCid());
                return;
            }
            if (responseBody.length >= com.meishu.sdk.core.utils.j0.a()) {
                v vVar3 = this.f32273f;
                com.meishu.sdk.meishu_ad.splash.a aVar3 = this.f32268a;
                Integer num3 = ErrorCodeUtil.RES_LOAD_ERROR;
                vVar3.a(aVar3, "图片资源加载错误", num3);
                p1.c(this.f32273f.f32572d, num3.intValue(), "图片资源加载错误 cid:" + this.f32269b.getCid());
                return;
            }
            if (com.meishu.sdk.core.utils.f0.a(responseBody)) {
                p1.a(this.f32273f.f32572d, 200, "splash gif load success");
                l1.a(this.f32269b, 1, false);
                this.f32273f.a(this.f32270c, this.f32271d, this.f32268a, this.f32272e, true);
                v.a(this.f32273f, responseBody, this.f32271d, true, (BaseAdSlot) this.f32269b, this.f32270c, this.f32268a, (NormalMediaView) null);
            } else {
                p1.a(this.f32273f.f32572d, 200, "splash image load success");
                l1.a(this.f32269b, 1, false);
                this.f32273f.a(this.f32270c, this.f32271d, this.f32268a, this.f32272e, true);
                v.a(this.f32273f, responseBody, this.f32271d, false, (BaseAdSlot) this.f32269b, this.f32270c, this.f32268a, (NormalMediaView) null);
            }
            v.a(this.f32269b);
            v vVar4 = this.f32273f;
            com.meishu.sdk.meishu_ad.splash.c cVar = this.f32270c;
            com.meishu.sdk.meishu_ad.splash.a aVar4 = this.f32268a;
            vVar4.f32576h = true;
            if (vVar4.f32574f == 1 && !vVar4.f32575g) {
                return;
            }
            vVar4.a(cVar, aVar4);
        } catch (Throwable th) {
            v vVar5 = this.f32273f;
            com.meishu.sdk.meishu_ad.splash.a aVar5 = this.f32268a;
            Integer num4 = ErrorCodeUtil.RES_LOAD_ERROR;
            vVar5.a(aVar5, "图片资源加载错误", num4);
            String[] strArr = this.f32273f.f32572d;
            int iIntValue = num4.intValue();
            StringBuilder sbA = com.meishu.sdk.activity.a.a("图片资源加载错误 cid：");
            sbA.append(this.f32269b.getCid());
            p1.a(strArr, iIntValue, sbA.toString());
            th.printStackTrace();
        }
    }
}

package com.meishu.sdk.meishu_ad;

import android.view.View;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.p1;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class d0 implements com.meishu.sdk.core.utils.y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32205a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32206b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32207c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f32208d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f32209e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ View f32210f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ v f32211g;

    public d0(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.a aVar, int i2, int i3, View view) {
        this.f32211g = vVar;
        this.f32205a = cVar;
        this.f32206b = dVar;
        this.f32207c = aVar;
        this.f32208d = i2;
        this.f32209e = i3;
        this.f32210f = view;
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onFailure(@NotNull IOException iOException) {
        this.f32211g.f32590v = 2;
        String[] eventUrl = this.f32205a.f32515b.getEventUrl();
        StringBuilder sbA = com.meishu.sdk.activity.a.a("video cover load error cid:");
        sbA.append(this.f32206b.getCid());
        p1.c(eventUrl, ErrorCodeUtil.RENDER_AD_RESULT, sbA.toString());
        if (this.f32211g.f32589u == 2 && this.f32211g.f32591w == 2) {
            this.f32211g.a(this.f32207c, "video load error,def isnull", ErrorCodeUtil.RES_LOAD_ERROR);
        } else if (this.f32211g.f32589u == 2) {
            v.a(this.f32211g, this.f32205a, this.f32206b, this.f32208d, this.f32209e, this.f32207c, this.f32210f);
        }
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
        try {
            if (httpResponse.isSuccessful()) {
                p1.c(this.f32205a.f32515b.getEventUrl(), 200, "video cover 加载成功");
                this.f32211g.f32588t = httpResponse.getResponseBody();
                this.f32211g.f32590v = 1;
                if (this.f32211g.f32589u == 2) {
                    v.a(this.f32211g, this.f32205a, this.f32206b, this.f32208d, this.f32209e, this.f32207c, this.f32210f);
                    return;
                }
                return;
            }
            this.f32211g.f32590v = 2;
            p1.c(this.f32205a.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "video cover load error cid:" + this.f32206b.getCid());
            if (this.f32211g.f32589u == 2 && this.f32211g.f32591w == 2) {
                this.f32211g.a(this.f32207c, "video load error,def isnull", ErrorCodeUtil.RES_LOAD_ERROR);
            } else if (this.f32211g.f32589u == 2) {
                v.a(this.f32211g, this.f32205a, this.f32206b, this.f32208d, this.f32209e, this.f32207c, this.f32210f);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}

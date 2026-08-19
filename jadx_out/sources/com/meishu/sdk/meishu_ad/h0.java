package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.p1;

/* loaded from: classes4.dex */
public class h0 extends com.meishu.sdk.core.safe.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32233a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32234b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v f32235c;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                if (((com.meishu.sdk.platform.ms.splash.g) h0.this.f32233a).f33168e) {
                    return;
                }
                h0 h0Var = h0.this;
                if (h0Var.f32235c.f32587s) {
                    return;
                }
                p1.b(h0Var.f32234b.getEventUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "load res error timeout no exposure,cid=" + h0.this.f32234b.getCid());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public h0(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.d dVar) {
        this.f32235c = vVar;
        this.f32233a = aVar;
        this.f32234b = dVar;
    }

    @Override // com.meishu.sdk.core.safe.n
    public void a() {
        cancel();
        SdkHandler.getInstance().runOnUiThread(new a());
    }
}

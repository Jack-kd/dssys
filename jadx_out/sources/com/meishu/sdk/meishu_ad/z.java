package com.meishu.sdk.meishu_ad;

import android.text.TextUtils;
import android.view.View;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.p1;

/* loaded from: classes4.dex */
public class z extends com.meishu.sdk.core.safe.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32822a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32823b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32824c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f32825d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f32826e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ View f32827f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ v f32828g;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (z.this.f32828g.f32589u == 1) {
                return;
            }
            if (TextUtils.isEmpty(z.this.f32822a.getVideo_cover()) && TextUtils.isEmpty(z.this.f32822a.getDefImage())) {
                z zVar = z.this;
                zVar.f32828g.a(zVar.f32823b, "video load error", ErrorCodeUtil.RES_LOAD_ERROR);
                try {
                    p1.c(z.this.f32824c.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "video 加载超时 cid:" + z.this.f32822a.getCid());
                    return;
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    return;
                }
            }
            if (z.this.f32828g.f32590v != 1 && z.this.f32828g.f32591w != 1) {
                z zVar2 = z.this;
                zVar2.f32828g.a(zVar2.f32823b, "video load error", ErrorCodeUtil.RES_LOAD_ERROR);
                try {
                    p1.c(z.this.f32824c.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "video 加载超时 cid:" + z.this.f32822a.getCid());
                    return;
                } catch (Throwable th3) {
                    th3.printStackTrace();
                    return;
                }
            }
            try {
                p1.c(z.this.f32824c.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "video 加载超时 cid:" + z.this.f32822a.getCid());
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            if (z.this.f32828g.f32589u != 1) {
                z zVar3 = z.this;
                v.a(zVar3.f32828g, zVar3.f32824c, zVar3.f32822a, zVar3.f32825d, zVar3.f32826e, zVar3.f32823b, zVar3.f32827f);
                return;
            }
            return;
            th.printStackTrace();
        }
    }

    public z(v vVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.c cVar, int i2, int i3, View view) {
        this.f32828g = vVar;
        this.f32822a = dVar;
        this.f32823b = aVar;
        this.f32824c = cVar;
        this.f32825d = i2;
        this.f32826e = i3;
        this.f32827f = view;
    }

    @Override // com.meishu.sdk.core.safe.n
    public void a() {
        this.f32828g.f32579k = true;
        cancel();
        SdkHandler.getInstance().runOnUiThread(new a());
    }
}

package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class c0 implements com.meishu.sdk.core.utils.y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32200a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v f32201b;

    public c0(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar) {
        this.f32201b = vVar;
        this.f32200a = aVar;
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onFailure(@NotNull IOException iOException) {
        this.f32201b.f32591w = 2;
        if (this.f32201b.f32589u == 2 && this.f32201b.f32590v == 2) {
            this.f32201b.a(this.f32200a, "def isnull", ErrorCodeUtil.RES_LOAD_ERROR);
        }
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
        if (httpResponse == null || !httpResponse.isSuccessful()) {
            this.f32201b.f32591w = 2;
            if (this.f32201b.f32589u == 2 && this.f32201b.f32590v == 2) {
                this.f32201b.a(this.f32200a, "def isnull", ErrorCodeUtil.RES_LOAD_ERROR);
                return;
            }
            return;
        }
        byte[] responseBody = httpResponse.getResponseBody();
        if (responseBody != null) {
            this.f32201b.f32591w = 1;
            this.f32201b.f32592x = responseBody;
        }
    }
}

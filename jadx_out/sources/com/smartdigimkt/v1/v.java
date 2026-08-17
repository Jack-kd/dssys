package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseATView;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.HashMap;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes5.dex */
public final class v extends com.smartdigimkt.x.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f44629b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseATView f44630c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(BaseATView baseATView, com.smartdigimkt.m3.c cVar, com.smartdigimkt.m3.c cVar2) {
        super(cVar);
        this.f44630c = baseATView;
        this.f44629b = cVar2;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd.DataFetchListener
    public final void onStatusChanged(int i2, String str) {
        View view = this.f44630c.f43228n;
        if (view != null && (view instanceof CTAButtonLayout)) {
            ((CTAButtonLayout) view).setMajorCTAText(str);
        }
        if (this.f44630c.f43230p != null) {
            HashMap map = new HashMap();
            map.put("cta_text", str);
            this.f44630c.f43230p.a(map);
        }
        this.f44630c.a(UMErrorCode.E_UM_BE_EMPTY_URL_PATH);
        if (i2 == 2) {
            String str2 = this.f44630c.f43215a;
            com.smartdigimkt.m3.c cVar = this.f44629b;
            String str3 = cVar.f41822m;
            int i3 = cVar.f41824o;
            this.f44630c.a(128);
            return;
        }
        if (i2 == 4) {
            this.f44630c.a(WebSocketProtocol.PAYLOAD_SHORT);
        } else {
            if (i2 != 5) {
                return;
            }
            this.f44630c.a(127);
        }
    }
}

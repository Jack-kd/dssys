package com.anythink.core.e;

import android.util.Log;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.h.bo;
import com.anythink.core.e.o;
import org.json.JSONException;

/* loaded from: classes2.dex */
public class n implements com.anythink.core.common.m.s {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8951a = "n";

    /* renamed from: b, reason: collision with root package name */
    private final o f8952b;

    /* renamed from: c, reason: collision with root package name */
    private final bo f8953c;

    /* renamed from: d, reason: collision with root package name */
    private final o.b f8954d;

    /* renamed from: e, reason: collision with root package name */
    private final m f8955e;

    /* renamed from: f, reason: collision with root package name */
    private com.anythink.core.common.t.a f8956f;

    /* renamed from: g, reason: collision with root package name */
    private boolean[] f8957g;

    /* renamed from: h, reason: collision with root package name */
    private com.anythink.core.common.v.b.d f8958h;

    public n(o oVar, bo boVar, o.b bVar, m mVar) {
        this.f8952b = oVar;
        this.f8953c = boVar;
        this.f8954d = bVar;
        this.f8955e = mVar;
    }

    private void a() {
        com.anythink.core.common.v.b.d dVar;
        com.anythink.core.common.t.a aVar = this.f8956f;
        if (aVar == null || (dVar = this.f8958h) == null) {
            return;
        }
        aVar.a(dVar);
    }

    @Override // com.anythink.core.common.m.s
    public void onLoadCanceled(int i2) {
        a();
        o.b bVar = this.f8954d;
        if (bVar == null) {
            return;
        }
        m mVar = this.f8955e;
        if (mVar == null) {
            bVar.a(ErrorCode.getErrorCode("9999", "", "by canceled"));
        } else {
            bVar.a(mVar);
        }
    }

    @Override // com.anythink.core.common.m.s
    public void onLoadError(int i2, String str, AdError adError) {
        o.b bVar;
        a();
        if (this.f8953c != null) {
            if (ErrorCode.statuError.equals(adError.getCode()) && (ErrorCode.placementIdError.equals(adError.getPlatformCode()) || ErrorCode.appIdError.equals(adError.getPlatformCode()) || "10001".equals(adError.getPlatformCode()))) {
                this.f8953c.b();
                this.f8953c.d();
                this.f8953c.c();
                if (com.anythink.core.common.d.s.b().G()) {
                    Log.e("anythink", "Please check these params in your code (AppId: " + this.f8953c.b() + ", AppKey: " + this.f8953c.c() + ", PlacementId: " + this.f8953c.d() + ")");
                }
            }
            if ("699".equals(adError.getPlatformCode())) {
                this.f8952b.a(this.f8953c.b(), this.f8953c.d(), this.f8955e);
                o.b bVar2 = this.f8954d;
                if (bVar2 != null) {
                    bVar2.a(adError);
                    return;
                }
                return;
            }
        }
        m mVar = this.f8955e;
        if (mVar == null && (bVar = this.f8954d) != null) {
            bVar.a(adError);
            return;
        }
        o.b bVar3 = this.f8954d;
        if (bVar3 != null) {
            bVar3.a(mVar);
        }
    }

    @Override // com.anythink.core.common.m.s
    public void onLoadFinish(int i2, Object obj) throws JSONException {
        a();
        o.b bVar = this.f8954d;
        if (bVar != null) {
            bVar.b();
        }
        o oVar = this.f8952b;
        if (oVar != null) {
            oVar.a(i2, obj, this.f8953c, this.f8954d, this.f8957g, this.f8955e);
        }
    }

    @Override // com.anythink.core.common.m.s
    public void onLoadStart(int i2) {
        o.b bVar = this.f8954d;
        if (bVar != null) {
            bVar.a();
        }
    }

    public n(o oVar, bo boVar, o.b bVar, m mVar, com.anythink.core.common.t.a aVar, com.anythink.core.common.v.b.d dVar, boolean[] zArr) {
        this.f8952b = oVar;
        this.f8953c = boVar;
        this.f8954d = bVar;
        this.f8956f = aVar;
        this.f8957g = zArr;
        this.f8958h = dVar;
        this.f8955e = mVar;
    }
}

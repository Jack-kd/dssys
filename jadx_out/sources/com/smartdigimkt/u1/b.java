package com.smartdigimkt.u1;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.x.l;
import com.smartdigimkt.y3.h;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f44379a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f44380b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f44381c;

    public b(c cVar, View view, int i2) {
        this.f44381c = cVar;
        this.f44379a = view;
        this.f44380b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        String str2;
        View view;
        if (this.f44381c.f44389h) {
            return;
        }
        Context contextD = SDKContext.getInstance().d();
        if (contextD == null) {
            l.a().getClass();
            contextD = SDKContext.getInstance().d();
        }
        if (contextD == null && (view = this.f44379a) != null && (contextD = view.getContext()) != null) {
            contextD = contextD.getApplicationContext();
        }
        c cVar = this.f44381c;
        String str3 = cVar.f44382a;
        int i2 = this.f44380b;
        try {
            switch (i2) {
                case 112:
                case 113:
                    break;
                case 114:
                    if (!cVar.f44386e) {
                        cVar.f44386e = true;
                        if (!cVar.a()) {
                            boolean zIsEmpty = TextUtils.isEmpty(this.f44381c.f44383b.f41818i);
                            this.f44381c.getClass();
                            this.f44381c.getClass();
                            c cVar2 = this.f44381c;
                            com.smartdigimkt.l3.a aVar = cVar2.f44384c;
                            String str4 = aVar != null ? aVar.f41632f : "";
                            com.smartdigimkt.m3.c cVar3 = cVar2.f44383b;
                            int iD = cVar3 != null ? cVar3.d() : 0;
                            String str5 = this.f44381c.f44382a;
                            h.a("Omsdk Exception", "create omsdkAdEvent fail:is empty,requestId:" + str4 + ",offerResourceType:" + iD, SDKContext.getInstance().f(), "");
                            if (!zIsEmpty) {
                                this.f44381c.getClass();
                                break;
                            }
                        }
                    } else {
                        break;
                    }
                    break;
                default:
                    if (i2 == 201) {
                        if (this.f44379a != null) {
                            if (!cVar.a()) {
                                boolean z2 = !TextUtils.isEmpty(this.f44381c.f44383b.f41818i);
                                c cVar4 = this.f44381c;
                                d dVarA = d.a();
                                c cVar5 = this.f44381c;
                                com.smartdigimkt.m3.c cVar6 = cVar5.f44383b;
                                com.smartdigimkt.l3.a aVar2 = cVar5.f44384c;
                                if (dVarA.b()) {
                                    dVarA.f44391a.createNativeAdSession(contextD, z2, cVar6, aVar2);
                                }
                                cVar4.getClass();
                            } else if (!(this.f44379a instanceof WebView) || contextD == null) {
                                c cVar7 = this.f44381c;
                                if (cVar7.a()) {
                                    str = "1";
                                } else {
                                    str = TextUtils.isEmpty(cVar7.f44383b.f41818i) ? "2" : "3";
                                }
                                com.smartdigimkt.l3.a aVar3 = cVar7.f44384c;
                                com.smartdigimkt.m3.c cVar8 = cVar7.f44383b;
                                d dVarA2 = d.a();
                                h.a(aVar3, cVar8, dVarA2.b() ? dVarA2.f44391a.getOmsdkVersion() : "", str, "2", "omsdkMeasureView is not webview");
                            } else if (!TextUtils.isEmpty(this.f44381c.f44383b.f41780A)) {
                                c cVar9 = this.f44381c;
                                d dVarA3 = d.a();
                                WebView webView = (WebView) this.f44379a;
                                c cVar10 = this.f44381c;
                                com.smartdigimkt.m3.c cVar11 = cVar10.f44383b;
                                com.smartdigimkt.l3.a aVar4 = cVar10.f44384c;
                                if (dVarA3.b()) {
                                    dVarA3.f44391a.createWebViewAdSession(contextD, webView, cVar11, aVar4);
                                }
                                cVar9.getClass();
                            }
                            this.f44381c.getClass();
                            this.f44381c.f44389h = true;
                            break;
                        } else {
                            if (cVar.a()) {
                                str2 = "1";
                            } else {
                                str2 = TextUtils.isEmpty(cVar.f44383b.f41818i) ? "2" : "3";
                            }
                            com.smartdigimkt.l3.a aVar5 = cVar.f44384c;
                            com.smartdigimkt.m3.c cVar12 = cVar.f44383b;
                            d dVarA4 = d.a();
                            h.a(aVar5, cVar12, dVarA4.b() ? dVarA4.f44391a.getOmsdkVersion() : "", str2, "2", "omsdkMeasureView is empty");
                            this.f44381c.f44389h = true;
                            break;
                        }
                    }
                    break;
            }
        } catch (Throwable th) {
            if (SDKContext.getInstance().j()) {
                th.printStackTrace();
            }
            String str6 = this.f44381c.f44382a;
            th.getMessage();
            StringBuilder sb = new StringBuilder("handle:");
            sb.append(this.f44380b);
            sb.append(" with throwable:");
            sb.append(th.getMessage() + ", " + k.a(th.getStackTrace()));
            h.a("Omsdk Exception", sb.toString(), SDKContext.getInstance().f(), "");
        }
    }
}

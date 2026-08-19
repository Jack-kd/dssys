package com.smartdigimkt.y1;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.DownloadListener;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.sdk.basead.ui.animplayerview.WebLandpagePlayerView;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class r implements DownloadListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f45187a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WebLandpagePlayerView f45188b;

    public r(WebLandpagePlayerView webLandpagePlayerView, Context context) {
        this.f45188b = webLandpagePlayerView;
        this.f45187a = context;
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        SDKContext.getInstance().getClass();
        WebLandpagePlayerView webLandpagePlayerView = this.f45188b;
        com.smartdigimkt.m3.c cVar = webLandpagePlayerView.f43705p;
        if (cVar == null || webLandpagePlayerView.f43706q == null || TextUtils.isEmpty(cVar.f41822m)) {
            this.f45188b.f43721G = 11;
            com.smartdigimkt.d5.e.a(str);
        } else {
            WebLandpagePlayerView webLandpagePlayerView2 = this.f45188b;
            IOfferClickHandler iOfferClickHandler = webLandpagePlayerView2.f43723I;
            if (iOfferClickHandler == null || !iOfferClickHandler.startDataFetchApp(this.f45187a, webLandpagePlayerView2.f43705p, webLandpagePlayerView2.f43706q, str)) {
                this.f45188b.f43722H = 2;
                com.smartdigimkt.d5.e.a(str);
                this.f45188b.f43721G = 7;
            } else {
                WebLandpagePlayerView webLandpagePlayerView3 = this.f45188b;
                webLandpagePlayerView3.f43721G = 6;
                webLandpagePlayerView3.f43722H = 1;
            }
        }
        this.f45188b.f43730P = 2;
    }
}

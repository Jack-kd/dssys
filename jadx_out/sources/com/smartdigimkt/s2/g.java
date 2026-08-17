package com.smartdigimkt.s2;

import android.webkit.DownloadListener;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;

/* loaded from: classes5.dex */
public final class g implements DownloadListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43122a;

    public g(WebLandPageActivity webLandPageActivity) {
        this.f43122a = webLandPageActivity;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    @Override // android.webkit.DownloadListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDownloadStart(java.lang.String r3, java.lang.String r4, java.lang.String r5, java.lang.String r6, long r7) {
        /*
            r2 = this;
            com.smartdigimkt.sdk.core.SDKContext r4 = com.smartdigimkt.sdk.core.SDKContext.getInstance()
            r4.getClass()
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r4 = r2.f43122a
            com.smartdigimkt.m3.c r5 = r4.f44053s
            r6 = 2
            r7 = 2500(0x9c4, double:1.235E-320)
            if (r5 == 0) goto L63
            com.smartdigimkt.l3.a r4 = r4.f44054t
            if (r4 == 0) goto L63
            java.lang.String r4 = r5.f41822m
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L63
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r4 = r2.f43122a
            com.smartdigimkt.sdk.api.IOfferClickHandler r5 = r4.f44056v
            if (r5 == 0) goto L3c
            android.content.Context r4 = r4.getApplicationContext()
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r0 = r2.f43122a
            com.smartdigimkt.m3.c r1 = r0.f44053s
            com.smartdigimkt.l3.a r0 = r0.f44054t
            boolean r4 = r5.startDataFetchApp(r4, r1, r0, r3)
            if (r4 != 0) goto L33
            goto L3c
        L33:
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r3 = r2.f43122a
            r4 = 6
            r3.f44040f = r4
            r4 = 1
            r3.f44033C = r4
            goto L8b
        L3c:
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r4 = r2.f43122a
            r4.getClass()
            long r0 = java.lang.System.currentTimeMillis()
            long r4 = r4.f44034D
            long r0 = r0 - r4
            int r4 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            r5 = 7
            if (r4 <= 0) goto L53
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r4 = r2.f43122a
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity.a(r5, r4, r3)
            return
        L53:
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r4 = r2.f43122a
            r4.f44033C = r6
            boolean r7 = android.text.TextUtils.isEmpty(r3)
            if (r7 != 0) goto L8b
            com.smartdigimkt.d5.e.a(r3)
            r4.f44040f = r5
            goto L8b
        L63:
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r4 = r2.f43122a
            r4.getClass()
            long r0 = java.lang.System.currentTimeMillis()
            long r4 = r4.f44034D
            long r0 = r0 - r4
            int r4 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            r5 = 11
            if (r4 <= 0) goto L7b
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r4 = r2.f43122a
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity.a(r5, r4, r3)
            return
        L7b:
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r4 = r2.f43122a
            r4.getClass()
            boolean r7 = android.text.TextUtils.isEmpty(r3)
            if (r7 != 0) goto L8b
            com.smartdigimkt.d5.e.a(r3)
            r4.f44040f = r5
        L8b:
            com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity r3 = r2.f43122a
            r3.f44047m = r6
            r3.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.s2.g.onDownloadStart(java.lang.String, java.lang.String, java.lang.String, java.lang.String, long):void");
    }
}

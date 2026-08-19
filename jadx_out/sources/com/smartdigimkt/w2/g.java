package com.smartdigimkt.w2;

import android.content.Context;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public Pattern f44884a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f44885b;

    /* renamed from: c, reason: collision with root package name */
    public final WTWebView f44886c;

    public g(WTWebView wTWebView) {
        this.f44885b = wTWebView != null ? wTWebView.getContext().getApplicationContext() : SDKContext.getInstance().d();
        this.f44886c = wTWebView;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r6) throws com.smartdigimkt.b3.a {
        /*
            r5 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L8
            goto L9e
        L8:
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r1 = 0
            if (r0 == 0) goto L10
            goto L4a
        L10:
            java.util.regex.Pattern r0 = r5.f44884a
            java.util.regex.Matcher r6 = r0.matcher(r6)
            boolean r0 = r6.matches()
            if (r0 == 0) goto L4a
            com.smartdigimkt.w2.d r0 = new com.smartdigimkt.w2.d
            r0.<init>()
            int r2 = r6.groupCount()
            r3 = 5
            if (r2 < r3) goto L2e
            java.lang.String r3 = r6.group(r3)
            r0.f44879f = r3
        L2e:
            r3 = 3
            if (r2 < r3) goto L4a
            r2 = 1
            java.lang.String r2 = r6.group(r2)
            r0.f44877d = r2
            r2 = 2
            java.lang.String r2 = r6.group(r2)
            r0.f44880g = r2
            java.lang.String r6 = r6.group(r3)
            r0.f44878e = r6
            com.smartdigimkt.sdk.basead.webtemplet.WTWebView r6 = r5.f44886c
            r0.f44874a = r6
            goto L4b
        L4a:
            r0 = r1
        L4b:
            if (r0 != 0) goto L4e
            goto L9e
        L4e:
            java.lang.String r6 = r0.f44879f
            com.smartdigimkt.c5.d.a(r6)
            com.smartdigimkt.sdk.basead.webtemplet.WTWebView r6 = r0.f44874a
            if (r6 != 0) goto L58
            goto L5e
        L58:
            java.lang.String r1 = r0.f44877d
            java.lang.Object r1 = r6.getJsObject(r1)
        L5e:
            if (r1 != 0) goto L61
            goto L9e
        L61:
            android.content.Context r6 = r5.f44885b     // Catch: java.lang.Throwable -> L9e
            java.lang.ClassLoader r6 = r6.getClassLoader()     // Catch: java.lang.Throwable -> L9e
            java.lang.Class r2 = r1.getClass()     // Catch: java.lang.Throwable -> L9e
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L9e
            java.lang.Class r6 = r6.loadClass(r2)     // Catch: java.lang.Exception -> L97
            java.lang.String r2 = r0.f44878e
            java.lang.Class<java.lang.Object> r3 = java.lang.Object.class
            java.lang.Class<java.lang.String> r4 = java.lang.String.class
            java.lang.Class[] r3 = new java.lang.Class[]{r3, r4}
            com.smartdigimkt.b3.b r4 = new com.smartdigimkt.b3.b
            r4.<init>(r6, r2, r3)
            boolean r6 = r1 instanceof com.smartdigimkt.sdk.basead.webtemplet.adformat.WTCommonJSBridgePlugin
            if (r6 == 0) goto L9e
            r0.f44876c = r4
            r0.f44875b = r1
            com.smartdigimkt.b4.e r6 = com.smartdigimkt.b4.e.a()
            com.smartdigimkt.w2.f r1 = new com.smartdigimkt.w2.f
            r1.<init>(r0)
            r6.a(r1)
            return
        L97:
            r6 = move-exception
            com.smartdigimkt.b3.a r0 = new com.smartdigimkt.b3.a
            r0.<init>(r6)
            throw r0
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w2.g.a(java.lang.String):void");
    }
}

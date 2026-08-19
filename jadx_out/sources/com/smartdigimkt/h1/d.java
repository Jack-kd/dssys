package com.smartdigimkt.h1;

import android.webkit.WebChromeClient;

/* loaded from: classes5.dex */
public final class d extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40427a;

    public d(i iVar) {
        this.f40427a = iVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onConsoleMessage(android.webkit.ConsoleMessage r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 != 0) goto L4
            return r0
        L4:
            com.smartdigimkt.h1.i r1 = r7.f40427a
            java.lang.String r1 = r1.f40432a
            android.webkit.ConsoleMessage$MessageLevel r1 = r8.messageLevel()
            java.util.Objects.toString(r1)
            r8.message()
            android.webkit.ConsoleMessage$MessageLevel r1 = r8.messageLevel()
            android.webkit.ConsoleMessage$MessageLevel r2 = android.webkit.ConsoleMessage.MessageLevel.LOG
            if (r1 == r2) goto L1f
            boolean r8 = super.onConsoleMessage(r8)
            return r8
        L1f:
            java.lang.String r8 = r8.message()
            com.smartdigimkt.h1.i r1 = r7.f40427a
            r1.getClass()
            boolean r2 = android.text.TextUtils.isEmpty(r8)
            if (r2 != 0) goto Laf
            java.lang.String r2 = "HybridInteractCall"
            boolean r2 = r8.startsWith(r2)
            if (r2 == 0) goto Laf
            java.lang.String r2 = "_"
            java.lang.String[] r2 = r8.split(r2)
            int r3 = r2.length
            r4 = 2
            if (r3 < r4) goto Laf
            r3 = 1
            r2 = r2[r3]
            boolean r5 = android.text.TextUtils.isEmpty(r2)
            if (r5 == 0) goto L4b
            goto Laf
        L4b:
            r2.getClass()
            int r5 = r2.hashCode()
            r6 = -1
            switch(r5) {
                case -1108117118: goto L6c;
                case 94756344: goto L61;
                case 150940456: goto L58;
                default: goto L56;
            }
        L56:
            r4 = r6
            goto L76
        L58:
            java.lang.String r3 = "browser"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L76
            goto L56
        L61:
            java.lang.String r4 = "close"
            boolean r2 = r2.equals(r4)
            if (r2 != 0) goto L6a
            goto L56
        L6a:
            r4 = r3
            goto L76
        L6c:
            java.lang.String r3 = "showfeedback"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L75
            goto L56
        L75:
            r4 = r0
        L76:
            switch(r4) {
                case 0: goto La3;
                case 1: goto L94;
                case 2: goto L7a;
                default: goto L79;
            }
        L79:
            goto Laf
        L7a:
            r1 = 27
            java.lang.String r8 = r8.substring(r1)     // Catch: java.lang.Throwable -> Laf
            boolean r1 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> Laf
            if (r1 != 0) goto L8a
            java.lang.String r8 = java.net.URLDecoder.decode(r8)     // Catch: java.lang.Throwable -> Laf
        L8a:
            boolean r1 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> Laf
            if (r1 != 0) goto Laf
            com.smartdigimkt.d5.e.a(r8)     // Catch: java.lang.Throwable -> Laf
            goto Laf
        L94:
            com.smartdigimkt.b4.e r8 = com.smartdigimkt.b4.e.a()
            com.smartdigimkt.h1.h r2 = new com.smartdigimkt.h1.h
            r2.<init>(r1)
            r3 = 30
            r8.a(r3, r2)
            goto Laf
        La3:
            android.widget.RelativeLayout r8 = r1.f40436e
            r8.setVisibility(r0)
            android.widget.FrameLayout r8 = r1.f40451t
            r1 = 8
            r8.setVisibility(r1)
        Laf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.h1.d.onConsoleMessage(android.webkit.ConsoleMessage):boolean");
    }
}

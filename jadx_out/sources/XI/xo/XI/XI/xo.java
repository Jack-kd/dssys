package XI.xo.XI.XI;

import android.content.BroadcastReceiver;

/* loaded from: classes.dex */
public class xo extends BroadcastReceiver {
    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r5, android.content.Intent r6) {
        /*
            r4 = this;
            if (r5 == 0) goto L7c
            if (r6 != 0) goto L6
            goto L7c
        L6:
            java.lang.String r0 = "openIdNotifyFlag"
            r1 = 0
            int r0 = r6.getIntExtra(r0, r1)
            r2 = 1
            if (r0 != r2) goto L21
            java.lang.String r0 = "openIdPackage"
            java.lang.String r0 = r6.getStringExtra(r0)
            java.lang.String r5 = r5.getPackageName()
            boolean r5 = android.text.TextUtils.equals(r0, r5)
            if (r5 == 0) goto L38
            goto L37
        L21:
            r3 = 2
            if (r0 != r3) goto L35
            java.lang.String r0 = "openIdPackageList"
            java.util.ArrayList r0 = r6.getStringArrayListExtra(r0)
            if (r0 == 0) goto L38
            java.lang.String r5 = r5.getPackageName()
            boolean r1 = r0.contains(r5)
            goto L38
        L35:
            if (r0 != 0) goto L38
        L37:
            r1 = r2
        L38:
            if (r1 != 0) goto L3b
            goto L7c
        L3b:
            java.lang.String r5 = "openIdType"
            java.lang.String r5 = r6.getStringExtra(r5)
            XI.xo.XI.XI.CA r6 = XI.xo.XI.XI.CA.XI()
            r6.getClass()
            java.lang.String r0 = "oaid"
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L53
            XI.xo.XI.XI.XI r5 = r6.f713K0
            goto L75
        L53:
            java.lang.String r0 = "vaid"
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L5e
            XI.xo.XI.XI.XI r5 = r6.xo
            goto L75
        L5e:
            java.lang.String r0 = "aaid"
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L69
            XI.xo.XI.XI.XI r5 = r6.kM
            goto L75
        L69:
            java.lang.String r0 = "udid"
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L74
            XI.xo.XI.XI.XI r5 = r6.f714XI
            goto L75
        L74:
            r5 = 0
        L75:
            if (r5 != 0) goto L78
            goto L7c
        L78:
            r0 = 0
            r5.f718XI = r0
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: XI.xo.XI.XI.xo.onReceive(android.content.Context, android.content.Intent):void");
    }
}

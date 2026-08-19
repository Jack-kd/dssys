package com.kwad.components.ad;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.SystemClock;
import com.kwad.sdk.api.KsExitInstallListener;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.components.e;
import com.kwad.sdk.core.network.d;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.o;

/* loaded from: classes4.dex */
public final class a extends e implements com.kwad.components.ad.b.b {
    @Override // com.kwad.components.ad.b.b
    public final String getBidRequestToken(KsScene ksScene) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z2 = d.hadCreateInstance;
        com.kwad.components.ad.adbit.c.a(true, z2);
        String strA = com.kwad.components.ad.adbit.e.a(SceneImpl.covert(ksScene));
        com.kwad.components.ad.adbit.c.a(jElapsedRealtime, true, z2);
        return strA;
    }

    @Override // com.kwad.components.ad.b.b
    public final String getBidRequestTokenV2(KsScene ksScene) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z2 = d.hadCreateInstance;
        com.kwad.components.ad.adbit.c.a(false, z2);
        String bidRequestTokenV2 = com.kwad.components.ad.adbit.e.getBidRequestTokenV2(ksScene);
        com.kwad.components.ad.adbit.c.a(jElapsedRealtime, false, z2);
        return bidRequestTokenV2;
    }

    @Override // com.kwad.sdk.components.b
    public final Class getComponentsType() {
        return com.kwad.components.ad.b.b.class;
    }

    @Override // com.kwad.sdk.components.b
    public final void init(Context context) {
        com.kwad.components.ad.j.d.om().init();
    }

    @Override // com.kwad.sdk.components.e, com.kwad.sdk.components.b
    public final int priority() {
        return -100;
    }

    @Override // com.kwad.components.ad.b.b
    public final boolean showInstallDialog(Activity activity, final KsExitInstallListener ksExitInstallListener) {
        if (o.Gs().Fx()) {
            return com.kwad.sdk.a.a.a.a(activity, new DialogInterface.OnDismissListener() { // from class: com.kwad.components.ad.a.1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    KsExitInstallListener ksExitInstallListener2 = ksExitInstallListener;
                    if (ksExitInstallListener2 != null) {
                        ksExitInstallListener2.onDialogClose();
                    }
                }
            }, new DialogInterface.OnClickListener() { // from class: com.kwad.components.ad.a.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    KsExitInstallListener ksExitInstallListener2 = ksExitInstallListener;
                    if (ksExitInstallListener2 == null || i2 != -1) {
                        return;
                    }
                    ksExitInstallListener2.onInstallClick();
                }
            });
        }
        return false;
    }
}

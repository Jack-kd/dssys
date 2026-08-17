package com.kwad.components.ad.reward.k.a;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.kwad.components.ad.reward.g;
import com.kwad.components.core.webview.tachikoma.d.e;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public final class b extends com.kwad.components.core.webview.tachikoma.d.e {
    private static WeakReference<b> Ck;
    private g Ch;
    private long Cj;

    public static b a(g gVar, e.b bVar) {
        b bVar2 = new b();
        bVar2.Ch = gVar;
        bVar2.mAdResultData = bVar.iH();
        bVar2.Cd = bVar.getTemplateId();
        bVar2.auG = bVar.lJ();
        bVar2.auP = bVar.zz();
        Bundle bundle = new Bundle();
        bundle.putString("templateId", bVar.getTemplateId());
        bVar2.setArguments(bundle);
        return bVar2;
    }

    private static boolean kP() {
        WeakReference<b> weakReference = Ck;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    private void t(long j2) {
        this.Cj = j2;
        com.kwad.components.core.webview.tachikoma.d.b bVar = this.auC;
        if (bVar != null) {
            bVar.Cj = j2;
        }
    }

    @Override // com.kwad.components.core.webview.tachikoma.d.e
    public final com.kwad.components.core.webview.tachikoma.d.b kQ() {
        return new a(this.Ch);
    }

    @Override // com.kwad.components.core.webview.tachikoma.d.e
    public final com.kwad.components.core.webview.tachikoma.d.c kR() {
        return new c();
    }

    @Override // com.kwad.components.core.webview.tachikoma.d.e
    public final void kS() {
        super.kS();
        this.auC.Cj = this.Cj;
    }

    @Override // com.kwad.components.core.webview.tachikoma.d.e, android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.Ch = null;
        Ck = null;
    }

    @Nullable
    public static b a(b bVar, Activity activity, long j2, com.kwad.components.core.webview.tachikoma.f.c cVar, e.a aVar) {
        if (activity == null || activity.isFinishing() || kP()) {
            return null;
        }
        bVar.akL = cVar;
        bVar.auH = aVar;
        bVar.show(activity.getFragmentManager(), "tkCloseDialog");
        if (j2 > 0) {
            bVar.t(j2);
        }
        Ck = new WeakReference<>(bVar);
        return bVar;
    }

    @Nullable
    public static b a(g gVar, Activity activity, long j2, DialogInterface.OnDismissListener onDismissListener, com.kwad.components.core.webview.tachikoma.f.c cVar) {
        if (activity == null || activity.isFinishing() || kP()) {
            return null;
        }
        e.b bVar = new e.b();
        bVar.a(gVar.mAdResultData);
        bVar.bP(com.kwad.sdk.core.response.helper.b.er(gVar.mAdTemplate));
        b bVarA = a(gVar, bVar);
        bVarA.akL = cVar;
        bVarA.d(onDismissListener);
        bVarA.t(j2);
        bVarA.show(activity.getFragmentManager(), "tkExtraReward");
        Ck = new WeakReference<>(bVarA);
        return bVarA;
    }
}

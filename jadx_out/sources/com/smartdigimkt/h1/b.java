package com.smartdigimkt.h1;

import android.content.DialogInterface;
import com.smartdigimkt.sdk.basead.ui.web.BaseWebView;
import com.smartdigimkt.x.m;

/* loaded from: classes5.dex */
public final class b implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40425a;

    public b(i iVar) {
        this.f40425a = iVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        i iVar = this.f40425a;
        m mVar = iVar.f40435d;
        if (mVar != null) {
            mVar.a();
        }
        iVar.f40435d = null;
        iVar.f40433b = null;
        iVar.f40434c = null;
        BaseWebView baseWebView = iVar.f40452u;
        if (baseWebView != null) {
            baseWebView.destroy();
            iVar.f40452u = null;
        }
    }
}

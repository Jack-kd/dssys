package com.smartdigimkt.s2;

import android.content.DialogInterface;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;

/* loaded from: classes5.dex */
public final class h implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f43123a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43124b;

    public h(WebLandPageActivity webLandPageActivity, String str) {
        this.f43124b = webLandPageActivity;
        this.f43123a = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        WebLandPageActivity webLandPageActivity = this.f43124b;
        com.smartdigimkt.y3.h.a(3, 2, webLandPageActivity.f44054t, webLandPageActivity.f44053s, this.f43123a, webLandPageActivity.f44034D > 0);
    }
}

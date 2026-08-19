package com.smartdigimkt.s2;

import android.content.DialogInterface;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;

/* loaded from: classes5.dex */
public final class i implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f43125a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f43126b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43127c;

    public i(int i2, WebLandPageActivity webLandPageActivity, String str) {
        this.f43127c = webLandPageActivity;
        this.f43125a = i2;
        this.f43126b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = this.f43125a;
        if (i3 == 7) {
            this.f43127c.f44033C = 2;
        }
        WebLandPageActivity webLandPageActivity = this.f43127c;
        String str = this.f43126b;
        int i4 = WebLandPageActivity.f44030E;
        webLandPageActivity.getClass();
        if (!TextUtils.isEmpty(str)) {
            com.smartdigimkt.d5.e.a(str);
            webLandPageActivity.f44040f = i3;
        }
        WebLandPageActivity webLandPageActivity2 = this.f43127c;
        webLandPageActivity2.f44047m = 2;
        com.smartdigimkt.y3.h.a(3, 1, webLandPageActivity2.f44054t, webLandPageActivity2.f44053s, this.f43126b, webLandPageActivity2.f44034D > 0);
        this.f43127c.a();
    }
}

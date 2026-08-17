package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.MediaATView;

/* loaded from: classes5.dex */
public final class k3 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaATView f44521a;

    public k3(MediaATView mediaATView) {
        this.f44521a = mediaATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(this.f44521a.f43250a.f41814e, str)) {
            this.f44521a.f43469o.setImageBitmap(bitmap);
        }
    }
}

package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import com.smartdigimkt.sdk.basead.ui.MediaATView;

/* loaded from: classes5.dex */
public final class n3 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaATView f44556a;

    public n3(MediaATView mediaATView) {
        this.f44556a = mediaATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(this.f44556a.f43250a.f41815f, str)) {
            this.f44556a.f43468n.setVisibility(0);
            this.f44556a.f43468n.setImageBitmap(bitmap);
            this.f44556a.post(new l3(this, bitmap));
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f44556a.getContext(), bitmap, new m3(this)));
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        Log.e(MediaATView.TAG, "load: image load fail:" + str);
    }
}

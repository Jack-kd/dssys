package com.smartdigimkt.e2;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RedPacketPage;

/* loaded from: classes5.dex */
public final class d implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RedPacketPage f40051a;

    public d(RedPacketPage redPacketPage) {
        this.f40051a = redPacketPage;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f40051a.f43818k;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}

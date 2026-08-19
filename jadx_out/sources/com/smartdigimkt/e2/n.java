package com.smartdigimkt.e2;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RedPacketPage;

/* loaded from: classes5.dex */
public final class n implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40062a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RedPacketPage f40063b;

    public n(RedPacketPage redPacketPage, String str) {
        this.f40063b = redPacketPage;
        this.f40062a = str;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f40062a)) {
            RoundImageView roundImageView = this.f40063b.f43810c;
            if (roundImageView != null) {
                roundImageView.setImageBitmap(bitmap);
            }
            RoundImageView roundImageView2 = this.f40063b.f43811d;
            if (roundImageView2 != null) {
                roundImageView2.setImageBitmap(bitmap);
            }
        }
    }
}

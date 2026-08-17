package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.FullScreenHeaderPanelView;

/* loaded from: classes5.dex */
public final class u2 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44623a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FullScreenHeaderPanelView f44624b;

    public u2(FullScreenHeaderPanelView fullScreenHeaderPanelView, String str) {
        this.f44624b = fullScreenHeaderPanelView;
        this.f44623a = str;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44623a)) {
            this.f44624b.f43419e.setImageBitmap(bitmap);
        }
    }
}

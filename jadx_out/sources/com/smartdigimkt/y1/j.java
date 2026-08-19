package com.smartdigimkt.y1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BaseMainAnimPlayerView;

/* loaded from: classes5.dex */
public final class j implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WrapRoundImageView f45178a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseMainAnimPlayerView f45179b;

    public j(BaseMainAnimPlayerView baseMainAnimPlayerView, WrapRoundImageView wrapRoundImageView) {
        this.f45179b = baseMainAnimPlayerView;
        this.f45178a = wrapRoundImageView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f45179b.f43686w)) {
            WrapRoundImageView wrapRoundImageView = this.f45178a;
            if (wrapRoundImageView != null) {
                wrapRoundImageView.post(new h(this, bitmap));
            }
            BaseMainAnimPlayerView baseMainAnimPlayerView = this.f45179b;
            if (baseMainAnimPlayerView.f43687x == null || bitmap == null) {
                return;
            }
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(baseMainAnimPlayerView.getContext(), bitmap, new i(this)));
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        this.f45179b.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4595l, com.anythink.core.common.inner.b.b.f4577T));
    }
}

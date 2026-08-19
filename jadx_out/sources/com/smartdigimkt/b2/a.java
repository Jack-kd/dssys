package com.smartdigimkt.b2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.viewpager.VpMainImgAnimatorView;

/* loaded from: classes5.dex */
public final class a extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ VpMainImgAnimatorView f39570a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(VpMainImgAnimatorView vpMainImgAnimatorView, Looper looper) {
        super(looper);
        this.f39570a = vpMainImgAnimatorView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        VpMainImgAnimatorView vpMainImgAnimatorView;
        WrapRoundImageView wrapRoundImageView;
        if (message.what != 100 || (wrapRoundImageView = (vpMainImgAnimatorView = this.f39570a).f43790a) == null || vpMainImgAnimatorView.f43791b == null) {
            return;
        }
        if (vpMainImgAnimatorView.f43794e == 0) {
            wrapRoundImageView.post(new b(vpMainImgAnimatorView));
        } else {
            vpMainImgAnimatorView.a();
        }
    }
}

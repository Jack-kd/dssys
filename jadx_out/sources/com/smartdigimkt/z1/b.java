package com.smartdigimkt.z1;

import com.smartdigimkt.sdk.basead.ui.animplayerview.redpacket.RedPacketAnimatorView;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RedPacketAnimatorView f45431a;

    public b(RedPacketAnimatorView redPacketAnimatorView) {
        this.f45431a = redPacketAnimatorView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RedPacketAnimatorView redPacketAnimatorView = this.f45431a;
        int i2 = RedPacketAnimatorView.f43733h;
        redPacketAnimatorView.a();
    }
}

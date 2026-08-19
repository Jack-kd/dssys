package com.smartdigimkt.l2;

import com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropAnimView;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BubbleDropAnimView f41625a;

    public e(BubbleDropAnimView bubbleDropAnimView) {
        this.f41625a = bubbleDropAnimView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BubbleDropAnimView bubbleDropAnimView = this.f41625a;
        bubbleDropAnimView.f43975e = bubbleDropAnimView.f43972b.getMeasuredHeight();
        this.f41625a.a();
    }
}

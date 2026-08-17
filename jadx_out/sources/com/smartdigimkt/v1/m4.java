package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.PlayerView;

/* loaded from: classes5.dex */
public final class m4 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PlayerView f44543a;

    public m4(PlayerView playerView) {
        this.f44543a = playerView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PlayerView playerView = this.f44543a;
        String str = PlayerView.TAG;
        com.smartdigimkt.y1.k kVar = playerView.f43704o;
        if (kVar != null) {
            kVar.g();
        }
    }
}

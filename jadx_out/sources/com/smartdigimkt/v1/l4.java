package com.smartdigimkt.v1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.smartdigimkt.sdk.basead.ui.PlayerView;

/* loaded from: classes5.dex */
public final class l4 extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PlayerView f44534a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l4(PlayerView playerView, Looper looper) {
        super(looper);
        this.f44534a = playerView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        com.smartdigimkt.y1.k kVar;
        PlayerView playerView = this.f44534a;
        String str = PlayerView.TAG;
        com.smartdigimkt.y1.k kVar2 = playerView.f43704o;
        if (kVar2 == null) {
            return;
        }
        playerView.f43560y = message.what;
        if (!playerView.f43535H && !playerView.f43701l) {
            playerView.f43535H = true;
            kVar2.f();
            this.f44534a.a(202);
        }
        com.smartdigimkt.y1.k kVar3 = this.f44534a.f43704o;
        if (kVar3 != null) {
            kVar3.b(r6.f43560y);
        }
        PlayerView playerView2 = this.f44534a;
        if (!playerView2.f43531D && playerView2.f43560y >= playerView2.f43528A) {
            playerView2.f43531D = true;
            com.smartdigimkt.y1.k kVar4 = playerView2.f43704o;
            if (kVar4 != null) {
                kVar4.a(25);
            }
            this.f44534a.a(203);
        } else if (!playerView2.f43532E && playerView2.f43560y >= playerView2.f43529B) {
            playerView2.f43532E = true;
            com.smartdigimkt.y1.k kVar5 = playerView2.f43704o;
            if (kVar5 != null) {
                kVar5.a(50);
            }
            this.f44534a.a(204);
        } else if (!playerView2.f43533F && playerView2.f43560y >= playerView2.f43530C) {
            playerView2.f43533F = true;
            com.smartdigimkt.y1.k kVar6 = playerView2.f43704o;
            if (kVar6 != null) {
                kVar6.a(75);
            }
            this.f44534a.a(205);
        }
        PlayerView playerView3 = this.f44534a;
        if (playerView3.f43552b0 || !playerView3.f43542O || playerView3.f43560y < playerView3.f43543P || (kVar = playerView3.f43704o) == null) {
            return;
        }
        playerView3.f43542O = false;
        kVar.e();
    }
}

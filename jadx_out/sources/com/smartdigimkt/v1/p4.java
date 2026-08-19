package com.smartdigimkt.v1;

import android.text.TextUtils;
import android.view.View;
import com.smartdigimkt.sdk.basead.ui.PlayerView;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class p4 extends com.smartdigimkt.j0.b0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PlayerView f44575a;

    public p4(PlayerView playerView) {
        this.f44575a = playerView;
    }

    @Override // com.smartdigimkt.j0.c0
    public final void a(com.smartdigimkt.j0.g gVar) {
        boolean z2;
        long jF;
        String str;
        String str2 = "Play error and ExoPlayer have not message.";
        if (gVar != null) {
            int i2 = gVar.f40881a;
            z2 = true;
            if (i2 != 0) {
                if (i2 == 1) {
                    str2 = "Play error, because have a RendererException.";
                } else if (i2 == 2) {
                    str2 = "Play error, because have a UnexpectedException.";
                }
                z2 = false;
            } else {
                str2 = "Play error, because have a SourceException.";
            }
            if (gVar.getCause() != null && !TextUtils.isEmpty(gVar.getCause().getMessage())) {
                str2 = str2 + ",eception:" + gVar.getCause().getMessage();
            }
        } else {
            z2 = false;
        }
        PlayerView playerView = this.f44575a;
        if (playerView.f43549V && z2) {
            playerView.f43550W = str2;
            String str3 = PlayerView.TAG;
            playerView.f43549V = false;
            com.smartdigimkt.y1.k kVar = playerView.f43704o;
            if (kVar != null) {
                kVar.e();
            }
            playerView.f43555t.a(playerView.f43556u);
            return;
        }
        String str4 = PlayerView.TAG;
        playerView.a();
        PlayerView playerView2 = this.f44575a;
        if (playerView2.f43704o != null) {
            try {
                jF = playerView2.f43555t.f40899b.f();
            } catch (Throwable unused) {
                jF = 0;
            }
            String str5 = jF <= 0 ? com.anythink.core.common.inner.b.b.f4599p : com.anythink.core.common.inner.b.b.f4594k;
            String str6 = "videoUrl:" + this.f44575a.f43559x + ",readyRate:" + this.f44575a.f43545R + ",cdRate:" + this.f44575a.f43544Q + ",play process:" + jF;
            if (TextUtils.isEmpty(this.f44575a.f43550W)) {
                str = str6 + ",localFileErrorMsg:" + str2;
            } else {
                str = str6 + ",localFileErrorMsg:" + this.f44575a.f43550W + ",errorMsg:" + str2;
            }
            PlayerView playerView3 = this.f44575a;
            if (playerView3.f43536I) {
                playerView3.a(new com.smartdigimkt.i0.f(str5, com.anythink.core.common.inner.b.b.f4566I + str));
            } else {
                playerView3.a(new com.smartdigimkt.i0.f(str5, com.anythink.core.common.inner.b.b.f4574Q + str));
            }
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void a(int i2) {
        String str = PlayerView.TAG;
        if (i2 == 2) {
            PlayerView playerView = this.f44575a;
            if (!playerView.f43537J) {
                playerView.f43537J = true;
                View view = playerView.f43546S;
                if (view != null) {
                    view.setVisibility(0);
                }
            }
            PlayerView playerView2 = this.f44575a;
            PlayerView.a(playerView2, playerView2.f43555t.h());
            return;
        }
        if (i2 != 3) {
            if (i2 != 4) {
                return;
            }
            this.f44575a.a();
            PlayerView playerView3 = this.f44575a;
            if (playerView3.f43701l) {
                return;
            }
            playerView3.f43701l = true;
            playerView3.f43560y = playerView3.f43561z;
            com.smartdigimkt.y1.k kVar = playerView3.f43704o;
            if (kVar != null) {
                kVar.a();
            }
            this.f44575a.a(206);
            this.f44575a.f43704o = null;
            return;
        }
        PlayerView playerView4 = this.f44575a;
        if (!playerView4.f43536I) {
            playerView4.f43537J = false;
            playerView4.f43561z = (int) playerView4.f43555t.h();
            PlayerView playerView5 = this.f44575a;
            int i3 = playerView5.f43561z;
            synchronized (playerView5.f43554d0) {
            }
            com.smartdigimkt.y1.k kVar2 = this.f44575a.f43704o;
            if (kVar2 != null) {
                kVar2.a(r6.f43561z);
            }
            this.f44575a.f43528A = Math.round(r6.f43561z * 0.25f);
            this.f44575a.f43529B = Math.round(r6.f43561z * 0.5f);
            this.f44575a.f43530C = Math.round(r6.f43561z * 0.75f);
            PlayerView.a(this.f44575a, r6.f43561z);
            this.f44575a.f43536I = true;
        }
        PlayerView playerView6 = this.f44575a;
        int i4 = playerView6.f43560y;
        if (i4 > 0 && Math.abs(i4 - playerView6.f43555t.f40899b.f()) > 500) {
            PlayerView playerView7 = this.f44575a;
            com.smartdigimkt.j0.j0 j0Var = playerView7.f43555t;
            long j2 = playerView7.f43560y;
            com.smartdigimkt.k0.c cVar = j0Var.f40906i;
            if (!cVar.f41252d.f41246f) {
                cVar.f();
                cVar.f41252d.f41246f = true;
                Iterator it = cVar.f41249a.iterator();
                if (it.hasNext()) {
                    throw com.smartdigimkt.j0.h0.a(it);
                }
            }
            j0Var.f40899b.a(j2);
        }
        if (this.f44575a.isPlaying()) {
            PlayerView playerView8 = this.f44575a;
            if (playerView8.f43540M != null) {
                return;
            }
            playerView8.f43534G = true;
            playerView8.f43551a0 = 0L;
            Thread thread = new Thread(new o4(playerView8));
            playerView8.f43540M = thread;
            thread.setName("sdm_type_player_progress");
            playerView8.f43540M.start();
        }
    }
}

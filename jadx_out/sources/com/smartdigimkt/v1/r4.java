package com.smartdigimkt.v1;

import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.PlayerView;

/* loaded from: classes5.dex */
public final class r4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f44594a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f44595b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f44596c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ PlayerView f44597d;

    public r4(PlayerView playerView, int i2, long j2, long j3) {
        this.f44597d = playerView;
        this.f44594a = i2;
        this.f44595b = j2;
        this.f44596c = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j2;
        long j3;
        PlayerView playerView = this.f44597d;
        String str = PlayerView.TAG;
        if (playerView.f43706q == null || playerView.f43705p == null) {
            return;
        }
        com.smartdigimkt.f3.a0 a0VarA = com.smartdigimkt.f3.a0.a();
        String str2 = this.f44597d.f43705p.f41818i;
        a0VarA.getClass();
        com.smartdigimkt.f3.w wVarA = TextUtils.isEmpty(str2) ? null : a0VarA.f40205b.a(str2);
        if (wVarA != null) {
            j2 = wVarA.f40262e;
            j3 = wVarA.f40261d;
        } else {
            j2 = 0;
            j3 = 0;
        }
        PlayerView playerView2 = this.f44597d;
        com.smartdigimkt.l3.a aVar = playerView2.f43706q;
        com.smartdigimkt.m3.c cVar = playerView2.f43705p;
        int i2 = this.f44594a;
        long j4 = this.f44595b;
        long j5 = this.f44596c;
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004708";
        cVar2.a(aVar);
        cVar2.f42828l = String.valueOf(aVar.f41636j);
        cVar2.f42829m = aVar.f41631e;
        cVar2.f42830n = String.valueOf(aVar.f41628b);
        if (cVar instanceof com.smartdigimkt.m3.b) {
            com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar;
            cVar2.f42831o = bVar.f42054o0;
            cVar2.f42832p = bVar.f41806a;
        }
        cVar2.f42833q = String.valueOf(i2);
        cVar2.f42834r = String.valueOf(j4);
        cVar2.f42835s = String.format("%.2f", Double.valueOf((j2 / 1024.0d) / 1024.0d));
        cVar2.f42836t = String.valueOf(j5);
        cVar2.f42837u = String.format("%.2f", Double.valueOf((j3 / 1024.0d) / 1024.0d));
        com.smartdigimkt.m3.e eVar = aVar.f41644r;
        if (eVar != null) {
            long j6 = eVar.f41929e1;
            if (j6 > 0) {
                cVar2.f42838v = String.valueOf(j6);
            }
        }
        com.smartdigimkt.y3.h.a(cVar2);
    }
}

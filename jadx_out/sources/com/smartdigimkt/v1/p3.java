package com.smartdigimkt.v1;

import android.os.SystemClock;
import com.smartdigimkt.sdk.basead.ui.MraidContainerView;

/* loaded from: classes5.dex */
public final class p3 extends com.smartdigimkt.q1.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidContainerView f44574a;

    public p3(MraidContainerView mraidContainerView) {
        this.f44574a = mraidContainerView;
    }

    @Override // com.smartdigimkt.d1.b
    public final void a(String str) {
        com.smartdigimkt.m3.e eVar;
        MraidContainerView mraidContainerView = this.f44574a;
        if (mraidContainerView.f43483g != null) {
            synchronized (mraidContainerView) {
                com.smartdigimkt.m3.c cVar = mraidContainerView.f43477a;
                int i2 = (cVar == null || (eVar = cVar.f41832w) == null) ? 1 : eVar.f41922c0;
                if (i2 != 0) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j2 = mraidContainerView.f43493q;
                    if (j2 <= 0 || jElapsedRealtime - j2 >= 500) {
                        com.smartdigimkt.d0.c cVarA = mraidContainerView.f43492p.a(i2, mraidContainerView.b());
                        if (!cVarA.f39870a) {
                            String str2 = "";
                            String str3 = "";
                            String str4 = "";
                            String str5 = "";
                            com.smartdigimkt.m3.c cVar2 = mraidContainerView.f43477a;
                            if (cVar2 instanceof com.smartdigimkt.m3.b) {
                                com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar2;
                                str4 = bVar.f42054o0;
                                str3 = bVar.f41808b;
                                str2 = bVar.f41806a;
                                str5 = bVar.f41780A;
                            }
                            int i3 = cVarA.f39873d ? 1 : 2;
                            int i4 = cVarA.f39872c ? 1 : 2;
                            com.smartdigimkt.l3.a aVar = mraidContainerView.f43478b;
                            int i5 = cVarA.f39871b;
                            int i6 = i4;
                            long j3 = cVarA.f39874e;
                            com.smartdigimkt.q3.c cVar3 = new com.smartdigimkt.q3.c(null, String.valueOf(66));
                            cVar3.f42817a = "3000018";
                            cVar3.a(aVar);
                            cVar3.f42828l = str2 != null ? str2 : "";
                            cVar3.f42829m = str3 != null ? str3 : "";
                            cVar3.f42830n = str4 != null ? str4 : "";
                            if (str5 == null) {
                                str5 = "";
                            }
                            cVar3.f42831o = str5;
                            cVar3.f42832p = String.valueOf(i5);
                            cVar3.f42833q = String.valueOf(i2);
                            cVar3.f42834r = String.valueOf(i3);
                            cVar3.f42835s = String.valueOf(i6);
                            cVar3.f42836t = String.valueOf(j3);
                            com.smartdigimkt.y3.h.a(cVar3);
                            int i7 = cVarA.f39871b == 1 ? 2 : 1;
                            com.smartdigimkt.l3.a aVar2 = mraidContainerView.f43478b;
                            com.smartdigimkt.q3.c cVar4 = new com.smartdigimkt.q3.c(null, String.valueOf(66));
                            cVar4.f42817a = "1004735";
                            cVar4.a(aVar2);
                            cVar4.f42828l = str2;
                            cVar4.f42829m = str3;
                            cVar4.f42830n = str4;
                            cVar4.f42831o = str;
                            cVar4.f42832p = String.valueOf(i7);
                            com.smartdigimkt.y3.h.a(cVar4);
                            return;
                        }
                        mraidContainerView.f43493q = SystemClock.elapsedRealtime();
                    }
                }
                this.f44574a.f43483g.a(str);
            }
        }
    }

    @Override // com.smartdigimkt.d1.b
    public final void close() {
    }
}

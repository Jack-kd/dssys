package com.kwad.sdk.core.webview;

import com.kwad.sdk.core.adlog.a;
import com.kwad.sdk.core.track.AdTrackLog;
import com.kwad.sdk.core.webview.a.c;

/* loaded from: classes4.dex */
public final class d {
    private long bch;
    private long bci;
    private boolean bcj;
    private boolean bck;

    public static void d(c.a aVar) {
        if (aVar != null) {
            com.kwad.sdk.core.adlog.c.b(aVar.getAdTemplate(), aVar.qa());
        }
    }

    public final void a(c.a aVar) {
        if (aVar != null) {
            com.kwad.sdk.core.adlog.c.a aVarQa = aVar.qa();
            a.C0601a c0601a = new a.C0601a();
            c0601a.a(aVar.getAdTemplate(), null, null, null);
            AdTrackLog adTrackLog = c0601a.aLF;
            if (adTrackLog != null) {
                adTrackLog.setKsUaPattern(aVar.PF());
                c0601a.aLF.setUnionMark(aVar.PG());
            }
            aVarQa.a(c0601a);
            com.kwad.sdk.core.adlog.c.a(aVar.getAdTemplate(), aVarQa);
        }
        if (aVar != null) {
            this.bch = System.currentTimeMillis();
            this.bci = System.currentTimeMillis();
        }
    }

    public final void b(c.a aVar) {
        if (aVar != null) {
            com.kwad.sdk.core.adlog.c.l(aVar.getAdTemplate(), System.currentTimeMillis() - this.bch);
        }
    }

    public final void c(c.a aVar) {
        if (aVar == null || this.bcj) {
            return;
        }
        this.bcj = true;
        long jCurrentTimeMillis = 0;
        if (this.bch > 0) {
            jCurrentTimeMillis = System.currentTimeMillis() - this.bch;
            this.bch = -1L;
        }
        com.kwad.sdk.core.adlog.c.a(aVar.getAdTemplate(), aVar.qa(), jCurrentTimeMillis);
    }

    public final void e(c.a aVar) {
        if (aVar == null || this.bck) {
            return;
        }
        this.bck = true;
        long jCurrentTimeMillis = 0;
        if (this.bci > 0) {
            jCurrentTimeMillis = System.currentTimeMillis() - this.bci;
            this.bci = -1L;
        }
        com.kwad.sdk.core.adlog.c.b(aVar.getAdTemplate(), aVar.qa(), jCurrentTimeMillis);
    }
}

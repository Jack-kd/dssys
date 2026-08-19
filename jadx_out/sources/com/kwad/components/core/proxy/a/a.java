package com.kwad.components.core.proxy.a;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.kwad.components.core.proxy.PageCreateStage;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;

/* loaded from: classes4.dex */
public final class a {
    private String ajo;
    private long ajp;
    private long ajq;
    private long ajr;
    private boolean ajs;

    @Nullable
    private c ajt;

    public a(@Nullable c cVar) {
        this.ajt = cVar;
    }

    public final void R(long j2) {
        this.ajp = j2;
        this.ajq = SystemClock.uptimeMillis();
    }

    public final void bg(String str) {
        this.ajo = str;
    }

    public final void report() {
        b bVar = new b();
        bVar.ajo = this.ajo;
        long j2 = this.ajp;
        bVar.ajw = j2 != 0 ? this.ajq - j2 : 0L;
        long j3 = this.ajq;
        bVar.ajx = j3 != 0 ? this.ajr - j3 : 0L;
        bVar.ajv = j2 != 0 ? this.ajr - j2 : 0L;
        com.kwad.components.core.p.a.vL().a(bVar);
        com.kwad.sdk.core.d.c.d("PageMonitor", bVar.toString());
    }

    public final void vK() {
        if (this.ajs) {
            return;
        }
        this.ajs = true;
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.proxy.a.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                a.this.ajr = SystemClock.uptimeMillis();
                a.this.report();
            }
        });
    }

    public final void a(PageCreateStage pageCreateStage) {
        c cVar = this.ajt;
        if (cVar != null) {
            cVar.onCreateStageChange(pageCreateStage);
        }
    }
}

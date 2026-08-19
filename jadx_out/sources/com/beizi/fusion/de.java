package com.beizi.fusion;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public abstract class de extends eb {
    public de(Runnable runnable) {
        super(runnable);
    }

    @Override // com.beizi.fusion.eb
    public ScheduledExecutorService b() {
        hb hbVar = (hb) fn.a().b(null);
        if (hbVar instanceof en) {
            return ((en) hbVar).c();
        }
        return null;
    }
}

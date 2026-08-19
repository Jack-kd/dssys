package com.kwad.framework.filedownloader;

import android.content.Context;
import android.content.Intent;
import com.kwad.framework.filedownloader.event.DownloadServiceConnectChangedEvent;
import com.kwad.framework.filedownloader.services.e;
import com.kwad.sdk.api.proxy.app.FileDownloadService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
final class o implements e.a, u {
    private static Class<?> aAa;
    private final ArrayList<Runnable> aAb = new ArrayList<>();
    private com.kwad.framework.filedownloader.services.e aAc;

    private static Class<?> BB() {
        if (aAa == null) {
            aAa = FileDownloadService.SharedMainProcessService.class;
        }
        return aAa;
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean a(String str, String str2, boolean z2, int i2, int i3, int i4, boolean z3, com.kwad.framework.filedownloader.d.b bVar, boolean z4) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.h(str, str2, z2);
        }
        this.aAc.b(str, str2, z2, i2, i3, i4, z3, bVar, z4);
        return true;
    }

    @Override // com.kwad.framework.filedownloader.u
    public final void aW(Context context) {
        a(context, null);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cv(int i2) {
        return !isConnected() ? com.kwad.framework.filedownloader.f.a.cv(i2) : this.aAc.cv(i2);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final byte cw(int i2) {
        return !isConnected() ? com.kwad.framework.filedownloader.f.a.cw(i2) : this.aAc.cw(i2);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cx(int i2) {
        return !isConnected() ? com.kwad.framework.filedownloader.f.a.cx(i2) : this.aAc.cx(i2);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean isConnected() {
        return this.aAc != null;
    }

    @Override // com.kwad.framework.filedownloader.services.e.a
    public final void onDisconnected() {
        this.aAc = null;
        f.Bl().c(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.ConnectStatus.disconnected, BB()));
    }

    private void a(Context context, Runnable runnable) {
        context.startService(new Intent(context, BB()));
    }

    @Override // com.kwad.framework.filedownloader.services.e.a
    public final void a(com.kwad.framework.filedownloader.services.e eVar) {
        this.aAc = eVar;
        List list = (List) this.aAb.clone();
        this.aAb.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        f.Bl().c(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.ConnectStatus.connected, BB()));
    }
}

package com.kwad.framework.filedownloader.services;

import android.app.Notification;
import android.os.IBinder;
import com.kwad.framework.filedownloader.c.b;
import com.kwad.framework.filedownloader.n;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public final class e extends b.a implements i {
    private final g aDe;
    private final WeakReference<FileDownloadServiceProxy> aDf;

    public interface a {
        void a(e eVar);

        void onDisconnected();
    }

    public e(WeakReference<FileDownloadServiceProxy> weakReference, g gVar) {
        this.aDf = weakReference;
        this.aDe = gVar;
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void CH() {
        this.aDe.CH();
    }

    @Override // com.kwad.framework.filedownloader.services.i
    public final void Dn() {
        n.Bz().a(this);
    }

    @Override // com.kwad.framework.filedownloader.services.i
    public final IBinder Do() {
        return null;
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void a(com.kwad.framework.filedownloader.c.a aVar) {
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void b(com.kwad.framework.filedownloader.c.a aVar) {
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean cP(int i2) {
        return this.aDe.cP(i2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final long cQ(int i2) {
        return this.aDe.db(i2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final long cR(int i2) {
        return this.aDe.cR(i2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean cv(int i2) {
        return this.aDe.cv(i2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final byte cw(int i2) {
        return this.aDe.cw(i2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean cx(int i2) {
        return this.aDe.cx(i2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean isIdle() {
        return this.aDe.isIdle();
    }

    @Override // com.kwad.framework.filedownloader.services.i
    public final void onDestroy() {
        n.Bz().onDisconnected();
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void pauseAllTasks() {
        this.aDe.Dq();
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void startForeground(int i2, Notification notification) {
        WeakReference<FileDownloadServiceProxy> weakReference = this.aDf;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.aDf.get().context.startForeground(i2, notification);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void stopForeground(boolean z2) {
        WeakReference<FileDownloadServiceProxy> weakReference = this.aDf;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.aDf.get().context.stopForeground(z2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean z(String str, String str2) {
        return this.aDe.B(str, str2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void b(String str, String str2, boolean z2, int i2, int i3, int i4, boolean z3, com.kwad.framework.filedownloader.d.b bVar, boolean z4) {
        this.aDe.b(str, str2, z2, i2, i3, i4, z3, bVar, z4);
    }
}

package com.kwad.framework.filedownloader;

import android.content.Context;
import com.kwad.framework.filedownloader.services.e;
import com.kwad.sdk.api.proxy.app.FileDownloadService;

/* loaded from: classes4.dex */
public final class n implements u {
    private final u azY;

    public static final class a {
        private static final n azZ = new n(0);
    }

    public /* synthetic */ n(byte b3) {
        this();
    }

    public static n By() {
        return a.azZ;
    }

    public static e.a Bz() {
        if (By().azY instanceof o) {
            return (e.a) By().azY;
        }
        return null;
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean a(String str, String str2, boolean z2, int i2, int i3, int i4, boolean z3, com.kwad.framework.filedownloader.d.b bVar, boolean z4) {
        return this.azY.a(str, str2, z2, i2, i3, i4, z3, bVar, z4);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final void aW(Context context) {
        this.azY.aW(context);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cv(int i2) {
        return this.azY.cv(i2);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final byte cw(int i2) {
        return this.azY.cw(i2);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cx(int i2) {
        return this.azY.cx(i2);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean isConnected() {
        return this.azY.isConnected();
    }

    private n() {
        this.azY = com.kwad.framework.filedownloader.f.e.Dz().aDv ? new o() : new p(FileDownloadService.SeparateProcessService.class);
    }
}

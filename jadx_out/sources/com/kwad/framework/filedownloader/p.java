package com.kwad.framework.filedownloader;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.kwad.framework.filedownloader.c.a;
import com.kwad.framework.filedownloader.c.b;
import com.kwad.framework.filedownloader.message.MessageSnapshot;

/* loaded from: classes4.dex */
final class p extends com.kwad.framework.filedownloader.services.a<a, com.kwad.framework.filedownloader.c.b> {

    public static class a extends a.AbstractBinderC0583a {
        @Override // com.kwad.framework.filedownloader.c.a
        public final void q(MessageSnapshot messageSnapshot) {
            com.kwad.framework.filedownloader.message.e.CR().s(messageSnapshot);
        }
    }

    public p(Class<?> cls) {
        super(cls);
    }

    private static a BC() {
        return new a();
    }

    @Override // com.kwad.framework.filedownloader.services.a
    public final /* synthetic */ Binder BD() {
        return BC();
    }

    @Override // com.kwad.framework.filedownloader.services.a
    public final /* bridge */ /* synthetic */ void a(IInterface iInterface, Binder binder) {
        a((com.kwad.framework.filedownloader.c.b) iInterface, (a) binder);
    }

    @Override // com.kwad.framework.filedownloader.services.a
    public final /* synthetic */ IInterface b(IBinder iBinder) {
        return a(iBinder);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cv(int i2) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.cv(i2);
        }
        try {
            return Dc().cv(i2);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.kwad.framework.filedownloader.u
    public final byte cw(int i2) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.cw(i2);
        }
        try {
            return Dc().cw(i2);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return (byte) 0;
        }
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cx(int i2) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.cx(i2);
        }
        try {
            return Dc().cx(i2);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static com.kwad.framework.filedownloader.c.b a(IBinder iBinder) {
        return b.a.a(iBinder);
    }

    private static void a(com.kwad.framework.filedownloader.c.b bVar, a aVar) {
        bVar.a(aVar);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean a(String str, String str2, boolean z2, int i2, int i3, int i4, boolean z3, com.kwad.framework.filedownloader.d.b bVar, boolean z4) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.h(str, str2, z2);
        }
        try {
            Dc().b(str, str2, z2, i2, i3, i4, z3, bVar, z4);
            return true;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}

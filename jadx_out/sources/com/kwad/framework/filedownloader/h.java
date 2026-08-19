package com.kwad.framework.filedownloader;

import com.kwad.framework.filedownloader.a;
import com.kwad.framework.filedownloader.message.MessageSnapshot;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class h {
    private final ArrayList<a.InterfaceC0580a> azI;

    public static final class a {
        private static final h azJ = new h(0);
    }

    public /* synthetic */ h(byte b3) {
        this();
    }

    public static h Bn() {
        return a.azJ;
    }

    public final boolean a(a.InterfaceC0580a interfaceC0580a) {
        return this.azI.isEmpty() || !this.azI.contains(interfaceC0580a);
    }

    public final void b(a.InterfaceC0580a interfaceC0580a) {
        if (!interfaceC0580a.AP().Ay()) {
            interfaceC0580a.AS();
        }
        if (interfaceC0580a.AQ().Bf().Bs()) {
            c(interfaceC0580a);
        }
    }

    public final void c(a.InterfaceC0580a interfaceC0580a) {
        if (interfaceC0580a.AT()) {
            return;
        }
        synchronized (this.azI) {
            try {
                if (this.azI.contains(interfaceC0580a)) {
                    com.kwad.framework.filedownloader.f.d.d(this, "already has %s", interfaceC0580a);
                } else {
                    interfaceC0580a.AU();
                    this.azI.add(interfaceC0580a);
                    if (com.kwad.framework.filedownloader.f.d.aDr) {
                        com.kwad.framework.filedownloader.f.d.e(this, "add list in all %s %d %d", interfaceC0580a, Byte.valueOf(interfaceC0580a.AP().AH()), Integer.valueOf(this.azI.size()));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int cr(int i2) {
        int i3;
        synchronized (this.azI) {
            try {
                ArrayList<a.InterfaceC0580a> arrayList = this.azI;
                int size = arrayList.size();
                i3 = 0;
                int i4 = 0;
                while (i4 < size) {
                    a.InterfaceC0580a interfaceC0580a = arrayList.get(i4);
                    i4++;
                    if (interfaceC0580a.cq(i2)) {
                        i3++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i3;
    }

    public final List<a.InterfaceC0580a> cs(int i2) {
        byte bAH;
        ArrayList arrayList = new ArrayList();
        synchronized (this.azI) {
            try {
                ArrayList<a.InterfaceC0580a> arrayList2 = this.azI;
                int size = arrayList2.size();
                int i3 = 0;
                while (i3 < size) {
                    a.InterfaceC0580a interfaceC0580a = arrayList2.get(i3);
                    i3++;
                    a.InterfaceC0580a interfaceC0580a2 = interfaceC0580a;
                    if (interfaceC0580a2.cq(i2) && !interfaceC0580a2.isOver() && (bAH = interfaceC0580a2.AP().AH()) != 0 && bAH != 10) {
                        arrayList.add(interfaceC0580a2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public final List<a.InterfaceC0580a> ct(int i2) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.azI) {
            try {
                ArrayList<a.InterfaceC0580a> arrayList2 = this.azI;
                int size = arrayList2.size();
                int i3 = 0;
                while (i3 < size) {
                    a.InterfaceC0580a interfaceC0580a = arrayList2.get(i3);
                    i3++;
                    a.InterfaceC0580a interfaceC0580a2 = interfaceC0580a;
                    if (interfaceC0580a2.cq(i2) && !interfaceC0580a2.isOver()) {
                        arrayList.add(interfaceC0580a2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public final int size() {
        return this.azI.size();
    }

    public final void v(List<a.InterfaceC0580a> list) {
        synchronized (this.azI) {
            try {
                ArrayList<a.InterfaceC0580a> arrayList = this.azI;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    a.InterfaceC0580a interfaceC0580a = arrayList.get(i2);
                    i2++;
                    a.InterfaceC0580a interfaceC0580a2 = interfaceC0580a;
                    if (!list.contains(interfaceC0580a2)) {
                        list.add(interfaceC0580a2);
                    }
                }
                this.azI.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private h() {
        this.azI = new ArrayList<>();
    }

    public final boolean a(a.InterfaceC0580a interfaceC0580a, MessageSnapshot messageSnapshot) {
        boolean zRemove;
        byte bAH = messageSnapshot.AH();
        synchronized (this.azI) {
            zRemove = this.azI.remove(interfaceC0580a);
        }
        if (com.kwad.framework.filedownloader.f.d.aDr && this.azI.size() == 0) {
            com.kwad.framework.filedownloader.f.d.e(this, "remove %s left %d %d", interfaceC0580a, Byte.valueOf(bAH), Integer.valueOf(this.azI.size()));
        }
        if (!zRemove) {
            com.kwad.framework.filedownloader.f.d.a(this, "remove error, not exist: %s %d", interfaceC0580a, Byte.valueOf(bAH));
            return zRemove;
        }
        t tVarBf = interfaceC0580a.AQ().Bf();
        if (bAH == -4) {
            tVarBf.l(messageSnapshot);
            return zRemove;
        }
        if (bAH == -3) {
            tVarBf.j(com.kwad.framework.filedownloader.message.f.t(messageSnapshot));
            return zRemove;
        }
        if (bAH == -2) {
            tVarBf.n(messageSnapshot);
            return zRemove;
        }
        if (bAH != -1) {
            return zRemove;
        }
        tVarBf.m(messageSnapshot);
        return zRemove;
    }
}

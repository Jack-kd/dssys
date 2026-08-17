package com.anythink.core.common.n.b.a.b;

import com.anythink.core.common.n.b.C1115a;
import com.anythink.core.common.n.b.ah;
import com.anythink.core.common.n.b.r;
import com.anythink.core.common.n.b.v;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class i {

    /* renamed from: a, reason: collision with root package name */
    private final C1115a f6187a;

    /* renamed from: b, reason: collision with root package name */
    private final g f6188b;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.n.b.e f6189c;

    /* renamed from: d, reason: collision with root package name */
    private final r f6190d;

    /* renamed from: e, reason: collision with root package name */
    private List<Proxy> f6191e;

    /* renamed from: f, reason: collision with root package name */
    private int f6192f;

    /* renamed from: g, reason: collision with root package name */
    private List<InetSocketAddress> f6193g;

    /* renamed from: h, reason: collision with root package name */
    private final List<ah> f6194h;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final List<ah> f6195a;

        /* renamed from: b, reason: collision with root package name */
        private int f6196b = 0;

        public a(List<ah> list) {
            this.f6195a = list;
        }

        public final boolean a() {
            return this.f6196b < this.f6195a.size();
        }

        public final ah b() {
            if (!a()) {
                throw new NoSuchElementException();
            }
            List<ah> list = this.f6195a;
            int i2 = this.f6196b;
            this.f6196b = i2 + 1;
            return list.get(i2);
        }

        public final List<ah> c() {
            return new ArrayList(this.f6195a);
        }
    }

    public i(C1115a c1115a, g gVar, com.anythink.core.common.n.b.e eVar, r rVar) {
        List<Proxy> listA;
        List list = Collections.EMPTY_LIST;
        this.f6191e = list;
        this.f6193g = list;
        this.f6194h = new ArrayList();
        this.f6187a = c1115a;
        this.f6188b = gVar;
        this.f6189c = eVar;
        this.f6190d = rVar;
        v vVarA = c1115a.a();
        Proxy proxyH = c1115a.h();
        if (proxyH != null) {
            listA = Collections.singletonList(proxyH);
        } else {
            List<Proxy> listSelect = c1115a.g().select(vVarA.a());
            listA = (listSelect == null || listSelect.isEmpty()) ? com.anythink.core.common.n.b.a.c.a(Proxy.NO_PROXY) : com.anythink.core.common.n.b.a.c.a(listSelect);
        }
        this.f6191e = listA;
        this.f6192f = 0;
    }

    private boolean c() {
        return this.f6192f < this.f6191e.size();
    }

    private Proxy d() throws SocketException, UnknownHostException {
        if (!c()) {
            throw new SocketException("No route to " + this.f6187a.a().f() + "; exhausted proxy configurations: " + this.f6191e);
        }
        List<Proxy> list = this.f6191e;
        int i2 = this.f6192f;
        this.f6192f = i2 + 1;
        Proxy proxy = list.get(i2);
        a(proxy);
        return proxy;
    }

    public final boolean a() {
        return c() || !this.f6194h.isEmpty();
    }

    public final a b() throws SocketException, UnknownHostException {
        if (!a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (c()) {
            if (!c()) {
                throw new SocketException("No route to " + this.f6187a.a().f() + "; exhausted proxy configurations: " + this.f6191e);
            }
            List<Proxy> list = this.f6191e;
            int i2 = this.f6192f;
            this.f6192f = i2 + 1;
            Proxy proxy = list.get(i2);
            a(proxy);
            int size = this.f6193g.size();
            for (int i3 = 0; i3 < size; i3++) {
                ah ahVar = new ah(this.f6187a, proxy, this.f6193g.get(i3));
                if (this.f6188b.c(ahVar)) {
                    this.f6194h.add(ahVar);
                } else {
                    arrayList.add(ahVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f6194h);
            this.f6194h.clear();
        }
        return new a(arrayList);
    }

    private void a(v vVar, Proxy proxy) {
        List<Proxy> listA;
        if (proxy != null) {
            listA = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = this.f6187a.g().select(vVar.a());
            listA = (listSelect == null || listSelect.isEmpty()) ? com.anythink.core.common.n.b.a.c.a(Proxy.NO_PROXY) : com.anythink.core.common.n.b.a.c.a(listSelect);
        }
        this.f6191e = listA;
        this.f6192f = 0;
    }

    private void a(Proxy proxy) throws SocketException, UnknownHostException {
        String strF;
        int iG;
        this.f6193g = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress socketAddressAddress = proxy.address();
            if (socketAddressAddress instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                InetAddress address = inetSocketAddress.getAddress();
                if (address == null) {
                    strF = inetSocketAddress.getHostName();
                } else {
                    strF = address.getHostAddress();
                }
                iG = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
        } else {
            strF = this.f6187a.a().f();
            iG = this.f6187a.a().g();
        }
        if (iG > 0 && iG <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.f6193g.add(InetSocketAddress.createUnresolved(strF, iG));
                return;
            }
            List<InetAddress> listA = this.f6187a.b().a(strF);
            if (!listA.isEmpty()) {
                int size = listA.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f6193g.add(new InetSocketAddress(listA.get(i2), iG));
                }
                return;
            }
            throw new UnknownHostException(this.f6187a.b() + " returned no addresses for " + strF);
        }
        throw new SocketException("No route to " + strF + ":" + iG + "; port is out of range");
    }

    private static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}

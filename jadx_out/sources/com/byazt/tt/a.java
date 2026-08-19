package com.byazt.tt;

import com.byazt.hq.ec;
import com.byazt.hq.nu;
import com.byazt.hq.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

@com.byazt.kj.hp(hp = {0, 1, 1478, 54})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public int f25972a;
    public List<InetSocketAddress> eb;
    public final com.byazt.hq.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public final u f25973j;
    public final com.byazt.hq.w jx;

    /* renamed from: l, reason: collision with root package name */
    public final j f25974l;

    /* renamed from: s, reason: collision with root package name */
    public final List<nu> f25975s;

    /* renamed from: w, reason: collision with root package name */
    public List<Proxy> f25976w;

    @com.byazt.kj.hp(hp = {0, 1, 1478, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static final class hp {
        public final List<nu> hp;

        /* renamed from: l, reason: collision with root package name */
        public int f25977l = 0;

        public hp(List<nu> list) {
            this.hp = list;
        }

        public boolean hp() {
            return this.f25977l < this.hp.size();
        }

        public List<nu> jx() {
            return new ArrayList(this.hp);
        }

        public nu l() {
            if (!hp()) {
                throw new NoSuchElementException();
            }
            List<nu> list = this.hp;
            int i2 = this.f25977l;
            this.f25977l = i2 + 1;
            return list.get(i2);
        }
    }

    public a(com.byazt.hq.hp hpVar, j jVar, com.byazt.hq.w wVar, u uVar) throws IOException {
        List list = Collections.EMPTY_LIST;
        this.f25976w = list;
        this.eb = list;
        this.f25975s = new ArrayList();
        this.hp = hpVar;
        this.f25974l = jVar;
        this.jx = wVar;
        this.f25973j = uVar;
        hp(hpVar.hp(), hpVar.s());
    }

    private Proxy j() throws IOException {
        if (!jx()) {
            throw new SocketException("No route to " + this.hp.hp().eb() + "; exhausted proxy configurations: " + this.f25976w);
        }
        List<Proxy> list = this.f25976w;
        int i2 = this.f25972a;
        this.f25972a = i2 + 1;
        Proxy proxy = list.get(i2);
        hp(proxy);
        return proxy;
    }

    private boolean jx() {
        return this.f25972a < this.f25976w.size();
    }

    public boolean hp() {
        return jx() || !this.f25975s.isEmpty();
    }

    public hp l() throws IOException {
        if (!hp()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (jx()) {
            Proxy proxyJ = j();
            int size = this.eb.size();
            for (int i2 = 0; i2 < size; i2++) {
                nu nuVar = new nu(this.hp, proxyJ, this.eb.get(i2));
                if (this.f25974l.jx(nuVar)) {
                    this.f25975s.add(nuVar);
                } else {
                    arrayList.add(nuVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f25975s);
            this.f25975s.clear();
        }
        return new hp(arrayList);
    }

    public void hp(nu nuVar, IOException iOException) {
        if (nuVar.l().type() != Proxy.Type.DIRECT && this.hp.eb() != null) {
            this.hp.eb().connectFailed(this.hp.hp().l(), nuVar.l().address(), iOException);
        }
        this.f25974l.hp(nuVar);
    }

    private void hp(ec ecVar, Proxy proxy) throws IOException {
        List<Proxy> listHp;
        if (proxy != null) {
            this.f25976w = Collections.singletonList(proxy);
        } else {
            try {
                List<Proxy> listSelect = this.hp.eb().select(ecVar.l());
                if (listSelect != null && !listSelect.isEmpty()) {
                    listHp = com.byazt.ru.jx.hp(listSelect);
                } else {
                    listHp = com.byazt.ru.jx.hp(Proxy.NO_PROXY);
                }
                this.f25976w = listHp;
            } catch (IllegalArgumentException unused) {
                throw new IOException();
            }
        }
        this.f25972a = 0;
    }

    private void hp(Proxy proxy) throws IOException {
        String strEb;
        int iS;
        this.eb = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress socketAddressAddress = proxy.address();
            if (socketAddressAddress instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                strEb = hp(inetSocketAddress);
                iS = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
        } else {
            strEb = this.hp.hp().eb();
            iS = this.hp.hp().s();
        }
        if (iS > 0 && iS <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.eb.add(InetSocketAddress.createUnresolved(strEb, iS));
                return;
            }
            List<InetAddress> listHp = this.hp.l().hp(strEb);
            if (listHp.isEmpty()) {
                return;
            }
            int size = listHp.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.eb.add(new InetSocketAddress(listHp.get(i2), iS));
            }
            return;
        }
        throw new SocketException("No route to " + strEb + ":" + iS + "; port is out of range");
    }

    public static String hp(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}

package com.byazt.efq;

import com.byazt.hq.b;
import com.byazt.hq.u;
import com.byazt.uhg.k;
import com.byazt.uhg.zy;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;

@com.byazt.kj.hp(hp = {0, 1, 1388, 30})
/* loaded from: classes2.dex */
public class jx extends u {

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.efq.hp f19404l;

    @com.byazt.kj.hp(hp = {0, 1, 1388, 219})
    public static class hp implements com.byazt.uhg.l {
        public com.byazt.hq.w hp;

        public hp(com.byazt.hq.w wVar) {
            this.hp = wVar;
        }

        @Override // com.byazt.uhg.l
        public void hp(com.byazt.uhg.jx jxVar) {
        }

        @Override // com.byazt.uhg.l
        public boolean j() {
            return this.hp.j();
        }

        @Override // com.byazt.uhg.l
        public void jx() {
            this.hp.jx();
        }

        @Override // com.byazt.uhg.l
        public com.byazt.uhg.u l() throws IOException {
            return null;
        }

        /* renamed from: w, reason: merged with bridge method [inline-methods] */
        public com.byazt.uhg.l clone() {
            return null;
        }

        @Override // com.byazt.uhg.l
        public k hp() {
            return new s(this.hp.hp());
        }
    }

    public jx(com.byazt.efq.hp hpVar) {
        this.f19404l = hpVar;
    }

    @Override // com.byazt.hq.u
    public void hp(com.byazt.hq.w wVar, InetSocketAddress inetSocketAddress, Proxy proxy, b bVar, IOException iOException) {
        super.hp(wVar, inetSocketAddress, proxy, bVar, iOException);
        com.byazt.efq.hp hpVar = this.f19404l;
        if (hpVar != null) {
            hpVar.hp(new hp(wVar), inetSocketAddress, proxy, hp(bVar), iOException);
        }
    }

    @Override // com.byazt.hq.u
    public void hp(com.byazt.hq.w wVar, IOException iOException) {
        super.hp(wVar, iOException);
        com.byazt.efq.hp hpVar = this.f19404l;
        if (hpVar != null) {
            hpVar.hp(new hp(wVar), iOException);
        }
    }

    private zy hp(b bVar) {
        if (bVar != null) {
            try {
                return zy.hp(bVar.toString());
            } catch (IOException unused) {
            }
        }
        return null;
    }
}

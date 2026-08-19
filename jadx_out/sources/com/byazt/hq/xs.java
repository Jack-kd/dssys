package com.byazt.hq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

@com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes2.dex */
public final class xs {
    public final dy hp;

    /* renamed from: j, reason: collision with root package name */
    public final List<Certificate> f20946j;
    public final List<Certificate> jx;

    /* renamed from: l, reason: collision with root package name */
    public final s f20947l;

    private xs(dy dyVar, s sVar, List<Certificate> list, List<Certificate> list2) {
        this.hp = dyVar;
        this.f20947l = sVar;
        this.jx = list;
        this.f20946j = list2;
    }

    public static xs hp(SSLSession sSLSession) throws SSLPeerUnverifiedException {
        String cipherSuite;
        Certificate[] peerCertificates = null;
        try {
            cipherSuite = sSLSession.getCipherSuite();
        } catch (Exception unused) {
            cipherSuite = null;
        }
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        s sVarHp = s.hp(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        dy dyVarHp = dy.hp(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused2) {
        }
        List listHp = peerCertificates != null ? com.byazt.ru.jx.hp(peerCertificates) : Collections.EMPTY_LIST;
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new xs(dyVarHp, sVarHp, listHp, localCertificates != null ? com.byazt.ru.jx.hp(localCertificates) : Collections.EMPTY_LIST);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof xs)) {
            return false;
        }
        xs xsVar = (xs) obj;
        return this.hp.equals(xsVar.hp) && this.f20947l.equals(xsVar.f20947l) && this.jx.equals(xsVar.jx) && this.f20946j.equals(xsVar.f20946j);
    }

    public int hashCode() {
        return ((((((this.hp.hashCode() + 527) * 31) + this.f20947l.hashCode()) * 31) + this.jx.hashCode()) * 31) + this.f20946j.hashCode();
    }

    public List<Certificate> j() {
        return this.f20946j;
    }

    public List<Certificate> jx() {
        return this.jx;
    }

    public s l() {
        return this.f20947l;
    }

    public dy hp() {
        return this.hp;
    }
}

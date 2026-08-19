package com.byazt.gc;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 524, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes2.dex */
public class u extends vv {
    public final byte[] hp;

    /* renamed from: l, reason: collision with root package name */
    public int f20381l;

    public u(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f20381l = -1;
        this.hp = bArr;
    }

    @Override // java.security.cert.Certificate
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        try {
            return Arrays.equals(getEncoded(), ((u) obj).getEncoded());
        } catch (CertificateEncodingException unused) {
            return false;
        }
    }

    @Override // com.byazt.gc.vv, java.security.cert.Certificate
    public byte[] getEncoded() throws CertificateEncodingException {
        return this.hp;
    }

    @Override // java.security.cert.Certificate
    public int hashCode() {
        if (this.f20381l == -1) {
            try {
                this.f20381l = Arrays.hashCode(getEncoded());
            } catch (CertificateEncodingException unused) {
                this.f20381l = 0;
            }
        }
        return this.f20381l;
    }
}

package com.byazt.hq;

import androidx.browser.trusted.sharing.ShareTarget;
import com.anythink.core.common.m.AbstractC1114b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.downloader.core.c;
import com.umeng.analytics.pro.ek;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@com.byazt.kj.hp(hp = {0, 1, 158, 166})
/* loaded from: classes2.dex */
public final class ns extends d {

    /* renamed from: e, reason: collision with root package name */
    public final n f20918e;
    public final n gu;
    public final List<l> jl;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.raq.a f20919q;
    public long zy = -1;
    public static final n hp = n.hp("multipart/mixed");

    /* renamed from: l, reason: collision with root package name */
    public static final n f20915l = n.hp("multipart/alternative");
    public static final n jx = n.hp("multipart/digest");

    /* renamed from: j, reason: collision with root package name */
    public static final n f20914j = n.hp("multipart/parallel");

    /* renamed from: w, reason: collision with root package name */
    public static final n f20917w = n.hp(ShareTarget.ENCODING_TYPE_MULTIPART);

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f20913a = {58, 32};
    public static final byte[] eb = {ek.f49293k, 10};

    /* renamed from: s, reason: collision with root package name */
    public static final byte[] f20916s = {45, 45};

    @com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_FALLBACK_THRESHLOD})
    public static final class hp {
        public final com.byazt.raq.a hp;
        public final List<l> jx;

        /* renamed from: l, reason: collision with root package name */
        public n f20920l;

        public hp() {
            this(UUID.randomUUID().toString());
        }

        public hp hp(n nVar) {
            if (nVar == null) {
                throw new NullPointerException("type == null");
            }
            if (!nVar.hp().equals("multipart")) {
                throw new IllegalArgumentException("multipart != ".concat(String.valueOf(nVar)));
            }
            this.f20920l = nVar;
            return this;
        }

        public hp(String str) {
            this.f20920l = ns.hp;
            this.jx = new ArrayList();
            this.hp = com.byazt.raq.a.hp(str);
        }

        public hp hp(String str, String str2, d dVar) {
            return hp(l.hp(str, str2, dVar));
        }

        public hp hp(l lVar) {
            if (lVar != null) {
                this.jx.add(lVar);
                return this;
            }
            throw new NullPointerException("part == null");
        }

        public ns hp() {
            if (!this.jx.isEmpty()) {
                return new ns(this.hp, this.f20920l, this.jx);
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
    }

    public ns(com.byazt.raq.a aVar, n nVar, List<l> list) {
        this.f20919q = aVar;
        this.f20918e = nVar;
        this.gu = n.hp(nVar + "; boundary=" + aVar.hp());
        this.jl = com.byazt.ru.jx.hp(list);
    }

    @Override // com.byazt.hq.d
    public n hp() {
        return this.gu;
    }

    @Override // com.byazt.hq.d
    public long l() throws IOException {
        long j2 = this.zy;
        if (j2 != -1) {
            return j2;
        }
        long jHp = hp((com.byazt.raq.j) null, true);
        this.zy = jHp;
        return jHp;
    }

    @Override // com.byazt.hq.d
    public void hp(com.byazt.raq.j jVar) throws IOException {
        hp(jVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long hp(com.byazt.raq.j jVar, boolean z2) throws IOException {
        com.byazt.raq.jx jxVar;
        if (z2) {
            jVar = new com.byazt.raq.jx();
            jxVar = jVar;
        } else {
            jxVar = 0;
        }
        int size = this.jl.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            l lVar = this.jl.get(i2);
            vv vvVar = lVar.hp;
            d dVar = lVar.f20921l;
            jVar.jx(f20916s);
            jVar.l(this.f20919q);
            jVar.jx(eb);
            if (vvVar != null) {
                int iHp = vvVar.hp();
                for (int i3 = 0; i3 < iHp; i3++) {
                    jVar.l(vvVar.hp(i3)).jx(f20913a).l(vvVar.l(i3)).jx(eb);
                }
            }
            n nVarHp = dVar.hp();
            if (nVarHp != null) {
                jVar.l("Content-Type: ").l(nVarHp.toString()).jx(eb);
            }
            long jL = dVar.l();
            if (jL != -1) {
                jVar.l("Content-Length: ").jl(jL).jx(eb);
            } else if (z2) {
                jxVar.vv();
                return -1L;
            }
            byte[] bArr = eb;
            jVar.jx(bArr);
            if (z2) {
                j2 += jL;
            } else {
                dVar.hp(jVar);
            }
            jVar.jx(bArr);
        }
        byte[] bArr2 = f20916s;
        jVar.jx(bArr2);
        jVar.l(this.f20919q);
        jVar.jx(bArr2);
        jVar.jx(eb);
        if (!z2) {
            return j2;
        }
        long jL2 = j2 + jxVar.l();
        jxVar.vv();
        return jL2;
    }

    @com.byazt.kj.hp(hp = {0, 1, 158, 1885})
    public static final class l {
        public final vv hp;

        /* renamed from: l, reason: collision with root package name */
        public final d f20921l;

        private l(vv vvVar, d dVar) {
            this.hp = vvVar;
            this.f20921l = dVar;
        }

        public static l hp(vv vvVar, d dVar) {
            if (dVar == null) {
                throw new NullPointerException("body == null");
            }
            if (vvVar != null && vvVar.hp(AbstractC1114b.f5589g) != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (vvVar == null || vvVar.hp(c.f37366e) == null) {
                return new l(vvVar, dVar);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }

        public static l hp(String str, String str2, d dVar) {
            if (str != null) {
                StringBuilder sb = new StringBuilder("form-data; name=");
                ns.hp(sb, str);
                if (str2 != null) {
                    sb.append("; filename=");
                    ns.hp(sb, str2);
                }
                return hp(vv.hp(c.f37371j, sb.toString()), dVar);
            }
            throw new NullPointerException("name == null");
        }
    }

    public static StringBuilder hp(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\n') {
                sb.append("%0A");
            } else if (cCharAt == '\r') {
                sb.append("%0D");
            } else if (cCharAt != '\"') {
                sb.append(cCharAt);
            } else {
                sb.append("%22");
            }
        }
        sb.append('\"');
        return sb;
    }
}

package com.byazt.cd;

import com.anythink.core.api.ATCustomRuleKeys;
import com.anythink.core.common.s.a.c;
import com.baidu.mobads.sdk.internal.cm;
import com.byazt.raq.ec;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 38})
/* loaded from: classes2.dex */
public final class j {
    public static final jx[] hp;

    /* renamed from: l, reason: collision with root package name */
    public static final Map<com.byazt.raq.a, Integer> f18780l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public final com.byazt.raq.w f18781a;
        public final int eb;
        public jx[] hp;

        /* renamed from: j, reason: collision with root package name */
        public int f18782j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f18783l;

        /* renamed from: s, reason: collision with root package name */
        public int f18784s;

        /* renamed from: w, reason: collision with root package name */
        public final List<jx> f18785w;

        public hp(int i2, ec ecVar) {
            this(i2, i2, ecVar);
        }

        private void a() throws IOException {
            this.f18785w.add(new jx(j.hp(jx()), jx()));
        }

        private void eb() throws IOException {
            hp(-1, new jx(j.hp(jx()), jx()));
        }

        private int hp(int i2) {
            int i3;
            int i4 = 0;
            if (i2 > 0) {
                int length = this.hp.length;
                while (true) {
                    length--;
                    i3 = this.f18783l;
                    if (length < i3 || i2 <= 0) {
                        break;
                    }
                    int i5 = this.hp[length].f18798q;
                    i2 -= i5;
                    this.f18782j -= i5;
                    this.jx--;
                    i4++;
                }
                jx[] jxVarArr = this.hp;
                System.arraycopy(jxVarArr, i3 + 1, jxVarArr, i3 + 1 + i4, this.jx);
                this.f18783l += i4;
            }
            return i4;
        }

        private void j() {
            int i2 = this.f18784s;
            int i3 = this.f18782j;
            if (i2 < i3) {
                if (i2 == 0) {
                    w();
                } else {
                    hp(i3 - i2);
                }
            }
        }

        private int jx(int i2) {
            return this.f18783l + 1 + i2;
        }

        private int s() throws IOException {
            return this.f18781a.s() & 255;
        }

        private void w() {
            Arrays.fill(this.hp, (Object) null);
            this.f18783l = this.hp.length - 1;
            this.jx = 0;
            this.f18782j = 0;
        }

        public List<jx> l() {
            ArrayList arrayList = new ArrayList(this.f18785w);
            this.f18785w.clear();
            return arrayList;
        }

        public hp(int i2, int i3, ec ecVar) {
            this.f18785w = new ArrayList();
            this.hp = new jx[8];
            this.f18783l = r0.length - 1;
            this.jx = 0;
            this.f18782j = 0;
            this.eb = i2;
            this.f18784s = i3;
            this.f18781a = com.byazt.raq.jl.hp(ecVar);
        }

        public com.byazt.raq.a jx() throws IOException {
            int iS = s();
            boolean z2 = (iS & 128) == 128;
            int iHp = hp(iS, 127);
            return z2 ? com.byazt.raq.a.hp(gu.hp().hp(this.f18781a.eb(iHp))) : this.f18781a.jx(iHp);
        }

        private void l(int i2) throws IOException {
            if (eb(i2)) {
                this.f18785w.add(j.hp[i2]);
                return;
            }
            int iJx = jx(i2 - j.hp.length);
            if (iJx >= 0) {
                jx[] jxVarArr = this.hp;
                if (iJx <= jxVarArr.length - 1) {
                    this.f18785w.add(jxVarArr[iJx]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        private com.byazt.raq.a a(int i2) {
            if (eb(i2)) {
                return j.hp[i2].eb;
            }
            return this.hp[jx(i2 - j.hp.length)].eb;
        }

        private boolean eb(int i2) {
            return i2 >= 0 && i2 <= j.hp.length - 1;
        }

        private void j(int i2) throws IOException {
            this.f18785w.add(new jx(a(i2), jx()));
        }

        private void w(int i2) throws IOException {
            hp(-1, new jx(a(i2), jx()));
        }

        public void hp() throws IOException {
            while (!this.f18781a.w()) {
                byte bS = this.f18781a.s();
                int i2 = bS & 255;
                if (i2 == 128) {
                    throw new IOException("index == 0");
                }
                if ((bS & c.f7560a) == 128) {
                    l(hp(i2, 127) - 1);
                } else if (i2 == 64) {
                    eb();
                } else if ((bS & c.f7561b) == 64) {
                    w(hp(i2, 63) - 1);
                } else if ((bS & 32) == 32) {
                    int iHp = hp(i2, 31);
                    this.f18784s = iHp;
                    if (iHp >= 0 && iHp <= this.eb) {
                        j();
                    } else {
                        throw new IOException("Invalid dynamic table size update " + this.f18784s);
                    }
                } else if (i2 != 16 && i2 != 0) {
                    j(hp(i2, 15) - 1);
                } else {
                    a();
                }
            }
        }

        private void hp(int i2, jx jxVar) {
            this.f18785w.add(jxVar);
            int i3 = jxVar.f18798q;
            if (i2 != -1) {
                i3 -= this.hp[jx(i2)].f18798q;
            }
            int i4 = this.f18784s;
            if (i3 > i4) {
                w();
                return;
            }
            int iHp = hp((this.f18782j + i3) - i4);
            if (i2 == -1) {
                int i5 = this.jx + 1;
                jx[] jxVarArr = this.hp;
                if (i5 > jxVarArr.length) {
                    jx[] jxVarArr2 = new jx[jxVarArr.length * 2];
                    System.arraycopy(jxVarArr, 0, jxVarArr2, jxVarArr.length, jxVarArr.length);
                    this.f18783l = this.hp.length - 1;
                    this.hp = jxVarArr2;
                }
                int i6 = this.f18783l;
                this.f18783l = i6 - 1;
                this.hp[i6] = jxVar;
                this.jx++;
            } else {
                this.hp[i2 + jx(i2) + iHp] = jxVar;
            }
            this.f18782j += i3;
        }

        public int hp(int i2, int i3) throws IOException {
            int i4 = i2 & i3;
            if (i4 < i3) {
                return i4;
            }
            int i5 = 0;
            while (true) {
                int iS = s();
                if ((iS & 128) == 0) {
                    return i3 + (iS << i5);
                }
                i3 += (iS & 127) << i5;
                i5 += 7;
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static final class l {

        /* renamed from: a, reason: collision with root package name */
        public int f18786a;

        /* renamed from: e, reason: collision with root package name */
        public boolean f18787e;
        public final com.byazt.raq.jx eb;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f18788j;
        public jx[] jx;

        /* renamed from: l, reason: collision with root package name */
        public int f18789l;

        /* renamed from: q, reason: collision with root package name */
        public int f18790q;

        /* renamed from: s, reason: collision with root package name */
        public final boolean f18791s;

        /* renamed from: w, reason: collision with root package name */
        public int f18792w;

        public l(com.byazt.raq.jx jxVar) {
            this(4096, true, jxVar);
        }

        private void hp() {
            Arrays.fill(this.jx, (Object) null);
            this.f18788j = this.jx.length - 1;
            this.f18792w = 0;
            this.f18786a = 0;
        }

        private int l(int i2) {
            int i3;
            int i4 = 0;
            if (i2 > 0) {
                int length = this.jx.length;
                while (true) {
                    length--;
                    i3 = this.f18788j;
                    if (length < i3 || i2 <= 0) {
                        break;
                    }
                    int i5 = this.jx[length].f18798q;
                    i2 -= i5;
                    this.f18786a -= i5;
                    this.f18792w--;
                    i4++;
                }
                jx[] jxVarArr = this.jx;
                System.arraycopy(jxVarArr, i3 + 1, jxVarArr, i3 + 1 + i4, this.f18792w);
                jx[] jxVarArr2 = this.jx;
                int i6 = this.f18788j;
                Arrays.fill(jxVarArr2, i6 + 1, i6 + 1 + i4, (Object) null);
                this.f18788j += i4;
            }
            return i4;
        }

        public l(int i2, boolean z2, com.byazt.raq.jx jxVar) {
            this.f18790q = Integer.MAX_VALUE;
            this.jx = new jx[8];
            this.f18788j = r0.length - 1;
            this.f18792w = 0;
            this.f18786a = 0;
            this.hp = i2;
            this.f18789l = i2;
            this.f18791s = z2;
            this.eb = jxVar;
        }

        private void hp(jx jxVar) {
            int i2 = jxVar.f18798q;
            int i3 = this.f18789l;
            if (i2 > i3) {
                hp();
                return;
            }
            l((this.f18786a + i2) - i3);
            int i4 = this.f18792w + 1;
            jx[] jxVarArr = this.jx;
            if (i4 > jxVarArr.length) {
                jx[] jxVarArr2 = new jx[jxVarArr.length * 2];
                System.arraycopy(jxVarArr, 0, jxVarArr2, jxVarArr.length, jxVarArr.length);
                this.f18788j = this.jx.length - 1;
                this.jx = jxVarArr2;
            }
            int i5 = this.f18788j;
            this.f18788j = i5 - 1;
            this.jx[i5] = jxVar;
            this.f18792w++;
            this.f18786a += i2;
        }

        private void l() {
            int i2 = this.f18789l;
            int i3 = this.f18786a;
            if (i2 < i3) {
                if (i2 == 0) {
                    hp();
                } else {
                    l(i3 - i2);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void hp(java.util.List<com.byazt.cd.jx> r14) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 236
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.cd.j.l.hp(java.util.List):void");
        }

        public void hp(int i2, int i3, int i4) {
            if (i2 < i3) {
                this.eb.q(i2 | i4);
                return;
            }
            this.eb.q(i4 | i3);
            int i5 = i2 - i3;
            while (i5 >= 128) {
                this.eb.q(128 | (i5 & 127));
                i5 >>>= 7;
            }
            this.eb.q(i5);
        }

        public void hp(com.byazt.raq.a aVar) throws IOException {
            if (this.f18791s && gu.hp().hp(aVar) < aVar.eb()) {
                com.byazt.raq.jx jxVar = new com.byazt.raq.jx();
                gu.hp().hp(aVar, jxVar);
                com.byazt.raq.a aVarK = jxVar.k();
                hp(aVarK.eb(), 127, 128);
                this.eb.l(aVarK);
                return;
            }
            hp(aVar.eb(), 127, 0);
            this.eb.l(aVar);
        }

        public void hp(int i2) {
            this.hp = i2;
            int iMin = Math.min(i2, 16384);
            int i3 = this.f18789l;
            if (i3 == iMin) {
                return;
            }
            if (iMin < i3) {
                this.f18790q = Math.min(this.f18790q, iMin);
            }
            this.f18787e = true;
            this.f18789l = iMin;
            l();
        }
    }

    static {
        jx jxVar = new jx(jx.f18794a, "");
        com.byazt.raq.a aVar = jx.jx;
        jx jxVar2 = new jx(aVar, "GET");
        jx jxVar3 = new jx(aVar, "POST");
        com.byazt.raq.a aVar2 = jx.f18795j;
        jx jxVar4 = new jx(aVar2, ServiceReference.DELIMITER);
        jx jxVar5 = new jx(aVar2, "/index.html");
        com.byazt.raq.a aVar3 = jx.f18797w;
        jx jxVar6 = new jx(aVar3, "http");
        jx jxVar7 = new jx(aVar3, "https");
        com.byazt.raq.a aVar4 = jx.f18796l;
        hp = new jx[]{jxVar, jxVar2, jxVar3, jxVar4, jxVar5, jxVar6, jxVar7, new jx(aVar4, "200"), new jx(aVar4, "204"), new jx(aVar4, "206"), new jx(aVar4, "304"), new jx(aVar4, "400"), new jx(aVar4, cm.f11333b), new jx(aVar4, "500"), new jx("accept-charset", ""), new jx("accept-encoding", "gzip, deflate"), new jx("accept-language", ""), new jx("accept-ranges", ""), new jx("accept", ""), new jx("access-control-allow-origin", ""), new jx(ATCustomRuleKeys.AGE, ""), new jx("allow", ""), new jx("authorization", ""), new jx("cache-control", ""), new jx("content-disposition", ""), new jx("content-encoding", ""), new jx("content-language", ""), new jx("content-length", ""), new jx("content-location", ""), new jx("content-range", ""), new jx("content-type", ""), new jx("cookie", ""), new jx("date", ""), new jx(f.f37325c, ""), new jx("expect", ""), new jx("expires", ""), new jx("from", ""), new jx(com.anythink.core.common.m.f.bU, ""), new jx("if-match", ""), new jx("if-modified-since", ""), new jx("if-none-match", ""), new jx("if-range", ""), new jx("if-unmodified-since", ""), new jx("last-modified", ""), new jx("link", ""), new jx("location", ""), new jx("max-forwards", ""), new jx("proxy-authenticate", ""), new jx("proxy-authorization", ""), new jx("range", ""), new jx("referer", ""), new jx("refresh", ""), new jx("retry-after", ""), new jx("server", ""), new jx("set-cookie", ""), new jx("strict-transport-security", ""), new jx("transfer-encoding", ""), new jx("user-agent", ""), new jx("vary", ""), new jx("via", ""), new jx("www-authenticate", "")};
        f18780l = hp();
    }

    private static Map<com.byazt.raq.a, Integer> hp() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(hp.length);
        int i2 = 0;
        while (true) {
            jx[] jxVarArr = hp;
            if (i2 >= jxVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(jxVarArr[i2].eb)) {
                linkedHashMap.put(jxVarArr[i2].eb, Integer.valueOf(i2));
            }
            i2++;
        }
    }

    public static com.byazt.raq.a hp(com.byazt.raq.a aVar) throws IOException {
        int iEb = aVar.eb();
        for (int i2 = 0; i2 < iEb; i2++) {
            byte bHp = aVar.hp(i2);
            if (bHp >= 65 && bHp <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + aVar.hp());
            }
        }
        return aVar;
    }
}

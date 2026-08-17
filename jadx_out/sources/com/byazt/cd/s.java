package com.byazt.cd;

import com.byazt.cd.j;
import com.byazt.raq.ec;
import com.byazt.raq.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public final class s implements Closeable {
    public static final Logger hp = Logger.getLogger(w.class.getName());

    /* renamed from: j, reason: collision with root package name */
    public final hp f18821j;
    public final com.byazt.raq.w jx;

    /* renamed from: l, reason: collision with root package name */
    public final j.hp f18822l;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f18823w;

    public interface l {
        void hp(int i2, int i3, List<jx> list) throws IOException;

        void hp(int i2, long j2);

        void hp(int i2, com.byazt.cd.l lVar);

        void hp(int i2, com.byazt.cd.l lVar, com.byazt.raq.a aVar);

        void hp(boolean z2, int i2, int i3);

        void hp(boolean z2, int i2, int i3, List<jx> list);

        void hp(boolean z2, int i2, com.byazt.raq.w wVar, int i3) throws IOException;

        void hp(boolean z2, k kVar);
    }

    public s(com.byazt.raq.w wVar, boolean z2) {
        this.jx = wVar;
        this.f18823w = z2;
        hp hpVar = new hp(wVar);
        this.f18821j = hpVar;
        this.f18822l = new j.hp(4096, hpVar);
    }

    private void a(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i3 == 0) {
            throw w.l("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short s2 = (b3 & 8) != 0 ? (short) (this.jx.s() & 255) : (short) 0;
        lVar.hp(i3, this.jx.e() & Integer.MAX_VALUE, hp(hp(i2 - 4, b3, s2), s2, b3, i3));
    }

    private void eb(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i2 != 8) {
            throw w.l("TYPE_PING length != 8: %s", Integer.valueOf(i2));
        }
        if (i3 != 0) {
            throw w.l("TYPE_PING streamId != 0", new Object[0]);
        }
        lVar.hp((b3 & 1) != 0, this.jx.e(), this.jx.e());
    }

    private void j(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i2 != 4) {
            throw w.l("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i2));
        }
        if (i3 == 0) {
            throw w.l("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int iE = this.jx.e();
        com.byazt.cd.l lVarHp = com.byazt.cd.l.hp(iE);
        if (lVarHp == null) {
            throw w.l("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(iE));
        }
        lVar.hp(i3, lVarHp);
    }

    private void jx(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i2 != 5) {
            throw w.l("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i2));
        }
        if (i3 == 0) {
            throw w.l("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        hp(lVar, i3);
    }

    private void l(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i3 == 0) {
            throw w.l("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z2 = (b3 & 1) != 0;
        if ((b3 & 32) != 0) {
            throw w.l("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short s2 = (b3 & 8) != 0 ? (short) (this.jx.s() & 255) : (short) 0;
        lVar.hp(z2, i3, this.jx, hp(i2, b3, s2));
        this.jx.s(s2);
    }

    private void q(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i2 != 4) {
            throw w.l("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i2));
        }
        long jE = this.jx.e() & 2147483647L;
        if (jE == 0) {
            throw w.l("windowSizeIncrement was 0", Long.valueOf(jE));
        }
        lVar.hp(i3, jE);
    }

    private void s(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i2 < 8) {
            throw w.l("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i2));
        }
        if (i3 != 0) {
            throw w.l("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int iE = this.jx.e();
        int iE2 = this.jx.e();
        int i4 = i2 - 8;
        com.byazt.cd.l lVarHp = com.byazt.cd.l.hp(iE2);
        if (lVarHp == null) {
            throw w.l("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(iE2));
        }
        com.byazt.raq.a aVarJx = com.byazt.raq.a.f25093l;
        if (i4 > 0) {
            aVarJx = this.jx.jx(i4);
        }
        lVar.hp(iE, lVarHp, aVarJx);
    }

    private void w(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i3 != 0) {
            throw w.l("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b3 & 1) != 0) {
            if (i2 != 0) {
                throw w.l("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            return;
        }
        if (i2 % 6 != 0) {
            throw w.l("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i2));
        }
        k kVar = new k();
        for (int i4 = 0; i4 < i2; i4 += 6) {
            short sQ = this.jx.q();
            int iE = this.jx.e();
            if (sQ == 2) {
                if (iE != 0 && iE != 1) {
                    throw w.l("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                }
            } else if (sQ == 3) {
                sQ = 4;
            } else if (sQ != 4) {
                if (sQ == 5 && (iE < 16384 || iE > 16777215)) {
                    throw w.l("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(iE));
                }
            } else {
                if (iE < 0) {
                    throw w.l("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                }
                sQ = 7;
            }
            kVar.hp(sQ, iE);
        }
        lVar.hp(false, kVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.jx.close();
    }

    public void hp(l lVar) throws IOException {
        if (this.f18823w) {
            if (!hp(true, lVar)) {
                throw w.l("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        com.byazt.raq.w wVar = this.jx;
        com.byazt.raq.a aVar = w.hp;
        com.byazt.raq.a aVarJx = wVar.jx(aVar.eb());
        Logger logger = hp;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(com.byazt.ru.jx.hp("<< CONNECTION %s", aVarJx.w()));
        }
        if (!aVar.equals(aVarJx)) {
            throw w.l("Expected a connection header but was %s", aVarJx.hp());
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static final class hp implements ec {

        /* renamed from: a, reason: collision with root package name */
        public final com.byazt.raq.w f18824a;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f18825j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public byte f18826l;

        /* renamed from: w, reason: collision with root package name */
        public short f18827w;

        public hp(com.byazt.raq.w wVar) {
            this.f18824a = wVar;
        }

        private void l() throws IOException {
            int i2 = this.jx;
            int iHp = s.hp(this.f18824a);
            this.f18825j = iHp;
            this.hp = iHp;
            byte bS = (byte) (this.f18824a.s() & 255);
            this.f18826l = (byte) (this.f18824a.s() & 255);
            Logger logger = s.hp;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(w.hp(true, this.jx, this.hp, bS, this.f18826l));
            }
            int iE = this.f18824a.e() & Integer.MAX_VALUE;
            this.jx = iE;
            if (bS != 9) {
                throw w.l("%s != TYPE_CONTINUATION", Byte.valueOf(bS));
            }
            if (iE != i2) {
                throw w.l("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // com.byazt.raq.ec
        public long hp(com.byazt.raq.jx jxVar, long j2) throws IOException {
            while (true) {
                int i2 = this.f18825j;
                if (i2 != 0) {
                    long jHp = this.f18824a.hp(jxVar, Math.min(j2, i2));
                    if (jHp == -1) {
                        return -1L;
                    }
                    this.f18825j = (int) (this.f18825j - jHp);
                    return jHp;
                }
                this.f18824a.s(this.f18827w);
                this.f18827w = (short) 0;
                if ((this.f18826l & 4) != 0) {
                    return -1L;
                }
                l();
            }
        }

        @Override // com.byazt.raq.ec
        public sz hp() {
            return this.f18824a.hp();
        }
    }

    public boolean hp(boolean z2, l lVar) throws IOException {
        try {
            this.jx.hp(9L);
            int iHp = hp(this.jx);
            if (iHp >= 0 && iHp <= 16384) {
                byte bS = (byte) (this.jx.s() & 255);
                if (z2 && bS != 4) {
                    throw w.l("Expected a SETTINGS frame but was %s", Byte.valueOf(bS));
                }
                byte bS2 = (byte) (this.jx.s() & 255);
                int iE = this.jx.e() & Integer.MAX_VALUE;
                Logger logger = hp;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(w.hp(true, iE, iHp, bS, bS2));
                }
                switch (bS) {
                    case 0:
                        l(lVar, iHp, bS2, iE);
                        return true;
                    case 1:
                        hp(lVar, iHp, bS2, iE);
                        return true;
                    case 2:
                        jx(lVar, iHp, bS2, iE);
                        return true;
                    case 3:
                        j(lVar, iHp, bS2, iE);
                        return true;
                    case 4:
                        w(lVar, iHp, bS2, iE);
                        return true;
                    case 5:
                        a(lVar, iHp, bS2, iE);
                        return true;
                    case 6:
                        eb(lVar, iHp, bS2, iE);
                        return true;
                    case 7:
                        s(lVar, iHp, bS2, iE);
                        return true;
                    case 8:
                        q(lVar, iHp, bS2, iE);
                        return true;
                    default:
                        this.jx.s(iHp);
                        return true;
                }
            }
            throw w.l("FRAME_SIZE_ERROR: %s", Integer.valueOf(iHp));
        } catch (IOException unused) {
            return false;
        }
    }

    private void hp(l lVar, int i2, byte b3, int i3) throws IOException {
        if (i3 != 0) {
            boolean z2 = (b3 & 1) != 0;
            short s2 = (b3 & 8) != 0 ? (short) (this.jx.s() & 255) : (short) 0;
            if ((b3 & 32) != 0) {
                hp(lVar, i3);
                i2 -= 5;
            }
            lVar.hp(z2, i3, -1, hp(hp(i2, b3, s2), s2, b3, i3));
            return;
        }
        throw w.l("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    private List<jx> hp(int i2, short s2, byte b3, int i3) throws IOException {
        hp hpVar = this.f18821j;
        hpVar.f18825j = i2;
        hpVar.hp = i2;
        hpVar.f18827w = s2;
        hpVar.f18826l = b3;
        hpVar.jx = i3;
        this.f18822l.hp();
        return this.f18822l.l();
    }

    private void hp(l lVar, int i2) throws IOException {
        this.jx.e();
        this.jx.s();
    }

    public static int hp(com.byazt.raq.w wVar) throws IOException {
        return (wVar.s() & 255) | ((wVar.s() & 255) << 16) | ((wVar.s() & 255) << 8);
    }

    public static int hp(int i2, byte b3, short s2) throws IOException {
        if ((b3 & 8) != 0) {
            i2--;
        }
        if (s2 <= i2) {
            return (short) (i2 - s2);
        }
        throw w.l("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s2), Integer.valueOf(i2));
    }
}

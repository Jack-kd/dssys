package com.byazt.ld;

import com.byazt.lc.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1075, 54})
/* loaded from: classes3.dex */
public class a implements Closeable {
    public final FileInputStream hp;

    /* renamed from: j, reason: collision with root package name */
    public jx[] f22453j;
    public l[] jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f22454l;

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, jx> f22455w = new HashMap();

    @com.byazt.kj.hp(hp = {0, 1, 1075, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public final long f22456a;

        /* renamed from: e, reason: collision with root package name */
        public final short f22457e;
        public final long eb;
        public final short gu;
        public final byte[] hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f22458j;
        public final short jl;
        public final short jx;

        /* renamed from: k, reason: collision with root package name */
        public final short f22459k;

        /* renamed from: l, reason: collision with root package name */
        public final short f22460l;

        /* renamed from: q, reason: collision with root package name */
        public final short f22461q;

        /* renamed from: s, reason: collision with root package name */
        public final int f22462s;

        /* renamed from: w, reason: collision with root package name */
        public final long f22463w;
        public final short zy;

        private hp(FileChannel fileChannel) throws IOException {
            byte[] bArr = new byte[16];
            this.hp = bArr;
            fileChannel.position(0L);
            fileChannel.read(ByteBuffer.wrap(bArr));
            if (bArr[0] != 127 || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70) {
                throw new IOException(String.format("bad elf magic: %x %x %x %x.", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3])));
            }
            a.l(bArr[4], 1, 2, "bad elf class: " + ((int) bArr[4]));
            a.l(bArr[5], 1, 2, "bad elf data encoding: " + ((int) bArr[5]));
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr[4] == 1 ? 36 : 48);
            byteBufferAllocate.order(bArr[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
            a.l(fileChannel, byteBufferAllocate, "failed to read rest part of ehdr.");
            this.f22460l = byteBufferAllocate.getShort();
            this.jx = byteBufferAllocate.getShort();
            int i2 = byteBufferAllocate.getInt();
            this.f22458j = i2;
            a.l(i2, 1, 1, "bad elf version: " + i2);
            byte b3 = bArr[4];
            if (b3 == 1) {
                this.f22463w = byteBufferAllocate.getInt();
                this.f22456a = byteBufferAllocate.getInt();
                this.eb = byteBufferAllocate.getInt();
            } else {
                if (b3 != 2) {
                    throw new IOException("Unexpected elf class: " + ((int) bArr[4]));
                }
                this.f22463w = byteBufferAllocate.getLong();
                this.f22456a = byteBufferAllocate.getLong();
                this.eb = byteBufferAllocate.getLong();
            }
            this.f22462s = byteBufferAllocate.getInt();
            this.f22461q = byteBufferAllocate.getShort();
            this.f22457e = byteBufferAllocate.getShort();
            this.gu = byteBufferAllocate.getShort();
            this.jl = byteBufferAllocate.getShort();
            this.zy = byteBufferAllocate.getShort();
            this.f22459k = byteBufferAllocate.getShort();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1075, 897})
    public static class jx {

        /* renamed from: a, reason: collision with root package name */
        public final long f22464a;

        /* renamed from: e, reason: collision with root package name */
        public final long f22465e;
        public final int eb;
        public String gu;
        public final int hp;

        /* renamed from: j, reason: collision with root package name */
        public final long f22466j;
        public final long jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f22467l;

        /* renamed from: q, reason: collision with root package name */
        public final long f22468q;

        /* renamed from: s, reason: collision with root package name */
        public final int f22469s;

        /* renamed from: w, reason: collision with root package name */
        public final long f22470w;

        private jx(ByteBuffer byteBuffer, int i2) throws IOException {
            if (i2 == 1) {
                this.hp = byteBuffer.getInt();
                this.f22467l = byteBuffer.getInt();
                this.jx = byteBuffer.getInt();
                this.f22466j = byteBuffer.getInt();
                this.f22470w = byteBuffer.getInt();
                this.f22464a = byteBuffer.getInt();
                this.eb = byteBuffer.getInt();
                this.f22469s = byteBuffer.getInt();
                this.f22468q = byteBuffer.getInt();
                this.f22465e = byteBuffer.getInt();
            } else {
                if (i2 != 2) {
                    throw new IOException("Unexpected elf class: ".concat(String.valueOf(i2)));
                }
                this.hp = byteBuffer.getInt();
                this.f22467l = byteBuffer.getInt();
                this.jx = byteBuffer.getLong();
                this.f22466j = byteBuffer.getLong();
                this.f22470w = byteBuffer.getLong();
                this.f22464a = byteBuffer.getLong();
                this.eb = byteBuffer.getInt();
                this.f22469s = byteBuffer.getInt();
                this.f22468q = byteBuffer.getLong();
                this.f22465e = byteBuffer.getLong();
            }
            this.gu = null;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1075, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE})
    public static class l {

        /* renamed from: a, reason: collision with root package name */
        public final long f22471a;
        public final long eb;
        public final int hp;

        /* renamed from: j, reason: collision with root package name */
        public final long f22472j;
        public final long jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f22473l;

        /* renamed from: s, reason: collision with root package name */
        public final long f22474s;

        /* renamed from: w, reason: collision with root package name */
        public final long f22475w;

        private l(ByteBuffer byteBuffer, int i2) throws IOException {
            if (i2 == 1) {
                this.hp = byteBuffer.getInt();
                this.jx = byteBuffer.getInt();
                this.f22472j = byteBuffer.getInt();
                this.f22475w = byteBuffer.getInt();
                this.f22471a = byteBuffer.getInt();
                this.eb = byteBuffer.getInt();
                this.f22473l = byteBuffer.getInt();
                this.f22474s = byteBuffer.getInt();
                return;
            }
            if (i2 != 2) {
                throw new IOException("Unexpected elf class: ".concat(String.valueOf(i2)));
            }
            this.hp = byteBuffer.getInt();
            this.f22473l = byteBuffer.getInt();
            this.jx = byteBuffer.getLong();
            this.f22472j = byteBuffer.getLong();
            this.f22475w = byteBuffer.getLong();
            this.f22471a = byteBuffer.getLong();
            this.eb = byteBuffer.getLong();
            this.f22474s = byteBuffer.getLong();
        }
    }

    private a(File file) throws IOException {
        jx[] jxVarArr;
        this.f22454l = null;
        this.jx = null;
        this.f22453j = null;
        FileInputStream fileInputStream = new FileInputStream(file);
        this.hp = fileInputStream;
        FileChannel channel = fileInputStream.getChannel();
        this.f22454l = new hp(channel);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(128);
        byteBufferAllocate.limit(this.f22454l.f22457e);
        byteBufferAllocate.order(this.f22454l.hp[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
        channel.position(this.f22454l.f22456a);
        this.jx = new l[this.f22454l.gu];
        for (int i2 = 0; i2 < this.jx.length; i2++) {
            l(channel, byteBufferAllocate, "failed to read phdr.");
            this.jx[i2] = new l(byteBufferAllocate, this.f22454l.hp[4]);
        }
        channel.position(this.f22454l.eb);
        byteBufferAllocate.limit(this.f22454l.jl);
        this.f22453j = new jx[this.f22454l.zy];
        int i3 = 0;
        while (true) {
            jxVarArr = this.f22453j;
            if (i3 >= jxVarArr.length) {
                break;
            }
            l(channel, byteBufferAllocate, "failed to read shdr.");
            this.f22453j[i3] = new jx(byteBufferAllocate, this.f22454l.hp[4]);
            i3++;
        }
        short s2 = this.f22454l.f22459k;
        if (s2 > 0) {
            ByteBuffer byteBufferHp = hp(jxVarArr[s2]);
            for (jx jxVar : this.f22453j) {
                byteBufferHp.position(jxVar.hp);
                String strHp = hp(byteBufferHp);
                jxVar.gu = strHp;
                this.f22455w.put(strHp, jxVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(FileChannel fileChannel, ByteBuffer byteBuffer, String str) throws IOException {
        byteBuffer.rewind();
        int i2 = fileChannel.read(byteBuffer);
        if (i2 == byteBuffer.limit()) {
            byteBuffer.flip();
            return;
        }
        throw new IOException(str + " Rest bytes insufficient, expect to read " + byteBuffer.limit() + " bytes but only " + i2 + " bytes were read.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.hp.close();
        this.f22455w.clear();
        this.jx = null;
        this.f22453j = null;
    }

    public static boolean hp(File file) throws IOException {
        try {
            eb.hp(new a(file));
            return true;
        } catch (IOException unused) {
            eb.hp((Closeable) null);
            return false;
        } catch (Throwable th) {
            eb.hp((Closeable) null);
            throw th;
        }
    }

    private static String hp(ByteBuffer byteBuffer) {
        byte[] bArrArray = byteBuffer.array();
        int iPosition = byteBuffer.position();
        while (byteBuffer.hasRemaining() && bArrArray[byteBuffer.position()] != 0) {
            byteBuffer.position(byteBuffer.position() + 1);
        }
        byteBuffer.position(byteBuffer.position() + 1);
        return new String(bArrArray, iPosition, (byteBuffer.position() - iPosition) - 1, Charset.forName("ASCII"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(int i2, int i3, int i4, String str) throws IOException {
        if (i2 < i3 || i2 > i4) {
            throw new IOException(str);
        }
    }

    private ByteBuffer hp(jx jxVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) jxVar.f22464a);
        this.hp.getChannel().position(jxVar.f22470w);
        l(this.hp.getChannel(), byteBufferAllocate, "failed to read section: " + jxVar.gu);
        return byteBufferAllocate;
    }
}

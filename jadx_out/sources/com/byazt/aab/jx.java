package com.byazt.aab;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI, 30})
/* loaded from: classes2.dex */
public class jx implements Closeable {
    public final InputStream hp;

    /* renamed from: j, reason: collision with root package name */
    public int f17976j;
    public byte[] jx;

    /* renamed from: l, reason: collision with root package name */
    public final Charset f17977l;

    /* renamed from: w, reason: collision with root package name */
    public int f17978w;

    public jx(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void jx() throws IOException {
        InputStream inputStream = this.hp;
        byte[] bArr = this.jx;
        int i2 = inputStream.read(bArr, 0, bArr.length);
        if (i2 == -1) {
            throw new EOFException();
        }
        this.f17976j = 0;
        this.f17978w = i2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.hp) {
            try {
                if (this.jx != null) {
                    this.jx = null;
                    this.hp.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean l() {
        return this.f17978w == -1;
    }

    public jx(InputStream inputStream, int i2, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(j.hp)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.hp = inputStream;
        this.f17977l = charset;
        this.jx = new byte[i2];
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String hp() throws java.io.IOException {
        /*
            r7 = this;
            java.io.InputStream r0 = r7.hp
            monitor-enter(r0)
            byte[] r1 = r7.jx     // Catch: java.lang.Throwable -> L11
            if (r1 == 0) goto L83
            int r1 = r7.f17976j     // Catch: java.lang.Throwable -> L11
            int r2 = r7.f17978w     // Catch: java.lang.Throwable -> L11
            if (r1 < r2) goto L14
            r7.jx()     // Catch: java.lang.Throwable -> L11
            goto L14
        L11:
            r1 = move-exception
            goto L8b
        L14:
            int r1 = r7.f17976j     // Catch: java.lang.Throwable -> L11
        L16:
            int r2 = r7.f17978w     // Catch: java.lang.Throwable -> L11
            r3 = 10
            if (r1 == r2) goto L45
            byte[] r2 = r7.jx     // Catch: java.lang.Throwable -> L11
            r4 = r2[r1]     // Catch: java.lang.Throwable -> L11
            if (r4 != r3) goto L42
            int r3 = r7.f17976j     // Catch: java.lang.Throwable -> L11
            if (r1 == r3) goto L2f
            int r4 = r1 + (-1)
            r5 = r2[r4]     // Catch: java.lang.Throwable -> L11
            r6 = 13
            if (r5 != r6) goto L2f
            goto L30
        L2f:
            r4 = r1
        L30:
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L11
            int r4 = r4 - r3
            java.nio.charset.Charset r6 = r7.f17977l     // Catch: java.lang.Throwable -> L11
            java.lang.String r6 = r6.name()     // Catch: java.lang.Throwable -> L11
            r5.<init>(r2, r3, r4, r6)     // Catch: java.lang.Throwable -> L11
            int r1 = r1 + 1
            r7.f17976j = r1     // Catch: java.lang.Throwable -> L11
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L11
            return r5
        L42:
            int r1 = r1 + 1
            goto L16
        L45:
            com.byazt.aab.jx$1 r1 = new com.byazt.aab.jx$1     // Catch: java.lang.Throwable -> L11
            int r2 = r7.f17978w     // Catch: java.lang.Throwable -> L11
            int r4 = r7.f17976j     // Catch: java.lang.Throwable -> L11
            int r2 = r2 - r4
            int r2 = r2 + 80
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L11
        L51:
            byte[] r2 = r7.jx     // Catch: java.lang.Throwable -> L11
            int r4 = r7.f17976j     // Catch: java.lang.Throwable -> L11
            int r5 = r7.f17978w     // Catch: java.lang.Throwable -> L11
            int r5 = r5 - r4
            r1.write(r2, r4, r5)     // Catch: java.lang.Throwable -> L11
            r2 = -1
            r7.f17978w = r2     // Catch: java.lang.Throwable -> L11
            r7.jx()     // Catch: java.lang.Throwable -> L11
            int r2 = r7.f17976j     // Catch: java.lang.Throwable -> L11
        L63:
            int r4 = r7.f17978w     // Catch: java.lang.Throwable -> L11
            if (r2 == r4) goto L51
            byte[] r4 = r7.jx     // Catch: java.lang.Throwable -> L11
            r5 = r4[r2]     // Catch: java.lang.Throwable -> L11
            if (r5 != r3) goto L80
            int r3 = r7.f17976j     // Catch: java.lang.Throwable -> L11
            if (r2 == r3) goto L76
            int r5 = r2 - r3
            r1.write(r4, r3, r5)     // Catch: java.lang.Throwable -> L11
        L76:
            int r2 = r2 + 1
            r7.f17976j = r2     // Catch: java.lang.Throwable -> L11
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L11
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L11
            return r1
        L80:
            int r2 = r2 + 1
            goto L63
        L83:
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L11
            java.lang.String r2 = "LineReader is closed"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L11
            throw r1     // Catch: java.lang.Throwable -> L11
        L8b:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L11
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.aab.jx.hp():java.lang.String");
    }
}

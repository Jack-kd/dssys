package com.byazt.ml;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

@com.byazt.kj.hp(hp = {0, 1, 449, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends InputStream {
    public InputStream hp;

    /* renamed from: l, reason: collision with root package name */
    public HttpURLConnection f23086l;

    public w(InputStream inputStream, HttpURLConnection httpURLConnection) {
        this.hp = inputStream;
        this.f23086l = httpURLConnection;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            return inputStream.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            inputStream.close();
            this.hp = null;
        }
        HttpURLConnection httpURLConnection = this.f23086l;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.f23086l = null;
        }
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i2) {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            inputStream.mark(i2);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            return inputStream.markSupported();
        }
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            return inputStream.read();
        }
        return 0;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            inputStream.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j2) throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            return inputStream.skip(j2);
        }
        return 0L;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            return inputStream.read(bArr);
        }
        return 0;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            return inputStream.read(bArr, i2, i3);
        }
        return 0;
    }
}

package com.byazt.fu;

import com.byazt.io.BaseException;
import com.byazt.xq.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

@com.byazt.kj.hp(hp = {0, 1, 677, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements Closeable {
    public BufferedOutputStream hp;
    public RandomAccessFile jx;

    /* renamed from: l, reason: collision with root package name */
    public FileDescriptor f20137l;

    public w(File file, int i2) throws BaseException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.jx = randomAccessFile;
            this.f20137l = randomAccessFile.getFD();
            if (i2 <= 0) {
                this.hp = new BufferedOutputStream(new FileOutputStream(this.jx.getFD()));
                return;
            }
            int i3 = 8192;
            if (i2 >= 8192) {
                i3 = 131072;
                i2 = i2 > 131072 ? i3 : i2;
            }
            this.hp = new BufferedOutputStream(new FileOutputStream(this.jx.getFD()), i2);
        } catch (IOException e2) {
            throw new BaseException(1039, e2);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a.hp(this.jx, this.hp);
    }

    public void hp(byte[] bArr, int i2, int i3) throws IOException {
        this.hp.write(bArr, i2, i3);
    }

    public void jx() throws IOException {
        FileDescriptor fileDescriptor = this.f20137l;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    public void l() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.hp;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
    }

    public void hp() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.hp;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
        FileDescriptor fileDescriptor = this.f20137l;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    public void l(long j2) throws IOException {
        this.jx.setLength(j2);
    }

    public void hp(long j2) throws IOException {
        this.jx.seek(j2);
    }
}

package com.byazt.eg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;

@com.byazt.kj.hp(hp = {0, 1, 1468, 30})
/* loaded from: classes2.dex */
public class jx {
    public final byte[] hp = new byte[2];

    /* renamed from: l, reason: collision with root package name */
    public final byte[] f19406l = new byte[4];

    public int hp(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.f19406l);
        return l(this.f19406l);
    }

    public int l(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.hp);
        return hp(this.hp);
    }

    private int l(byte[] bArr) {
        return ((((bArr[3] & 255) << 8) | (bArr[2] & 255)) << 16) | (bArr[0] & 255) | ((bArr[1] & 255) << 8);
    }

    public void hp(RandomAccessFile randomAccessFile, int i2) throws IOException {
        hp(this.hp, i2);
        randomAccessFile.write(this.hp);
    }

    private void l(byte[] bArr, int i2) {
        bArr[3] = (byte) (i2 >>> 24);
        bArr[2] = (byte) (i2 >>> 16);
        bArr[1] = (byte) (i2 >>> 8);
        bArr[0] = (byte) (i2 & 255);
    }

    public void hp(ByteArrayOutputStream byteArrayOutputStream, int i2) throws IOException {
        hp(this.hp, i2);
        byteArrayOutputStream.write(this.hp);
    }

    public void hp(OutputStream outputStream, int i2) throws IOException {
        l(this.f19406l, i2);
        outputStream.write(this.f19406l);
    }

    private int hp(byte[] bArr) {
        return ((bArr[1] & 255) << 8) | (bArr[0] & 255);
    }

    private void hp(byte[] bArr, int i2) {
        bArr[1] = (byte) (i2 >>> 8);
        bArr[0] = (byte) (i2 & 255);
    }
}

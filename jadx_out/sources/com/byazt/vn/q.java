package com.byazt.vn;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1312, 150})
/* loaded from: classes3.dex */
public final class q extends FilterInputStream implements DataInput {
    public q(w wVar) {
        super(wVar);
    }

    public static int hp(byte b3, byte b4, byte b5, byte b6) {
        return (b3 << 24) | ((b4 & 255) << 16) | ((b5 & 255) << 8) | (b6 & 255);
    }

    private byte l() throws IOException {
        int i2 = ((FilterInputStream) this).in.read();
        if (-1 != i2) {
            return (byte) i2;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        return readUnsignedByte() != 0;
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        return (byte) readUnsignedByte();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        return (char) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        j.hp(this, bArr);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        byte bL = l();
        byte bL2 = l();
        return hp(l(), l(), bL2, bL);
    }

    @Override // java.io.DataInput
    public String readLine() {
        throw new UnsupportedOperationException("readLine is not supported");
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        byte bL = l();
        byte bL2 = l();
        byte bL3 = l();
        byte bL4 = l();
        byte bL5 = l();
        byte bL6 = l();
        return hp(l(), l(), bL6, bL5, bL4, bL3, bL2, bL);
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        return (short) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        return new DataInputStream(((FilterInputStream) this).in).readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        int i2 = ((FilterInputStream) this).in.read();
        if (i2 >= 0) {
            return i2;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return hp((byte) 0, (byte) 0, l(), l());
    }

    @Override // java.io.DataInput
    public int skipBytes(int i2) throws IOException {
        return (int) ((FilterInputStream) this).in.skip(i2);
    }

    public static long hp(byte b3, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9, byte b10) {
        return ((b4 & 255) << 48) | ((b3 & 255) << 56) | ((b5 & 255) << 40) | ((b6 & 255) << 32) | ((b7 & 255) << 24) | ((b8 & 255) << 16) | ((b9 & 255) << 8) | (b10 & 255);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i2, int i3) throws IOException {
        j.hp(this, bArr, i2, i3);
    }

    public w hp() {
        return (w) ((FilterInputStream) this).in;
    }
}

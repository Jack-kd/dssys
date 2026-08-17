package com.byazt.vn;

import java.io.DataInput;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1312, 54})
/* loaded from: classes3.dex */
public abstract class a implements DataInput {
    public final q hp;

    public a(q qVar) {
        this.hp = qVar;
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        return this.hp.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        return this.hp.readByte();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        return this.hp.readChar();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return this.hp.readDouble();
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return this.hp.readFloat();
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i2, int i3) throws IOException {
        this.hp.readFully(bArr, i2, i3);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        return this.hp.readInt();
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        return this.hp.readLine();
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        return this.hp.readLong();
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        return this.hp.readShort();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        return this.hp.readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        return this.hp.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return this.hp.readUnsignedShort();
    }

    @Override // java.io.DataInput
    public int skipBytes(int i2) throws IOException {
        return this.hp.skipBytes(i2);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        this.hp.readFully(bArr);
    }
}

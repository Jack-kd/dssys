package com.anythink.core.common.n.a;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.IDN;

/* loaded from: classes2.dex */
final class b extends a {

    /* renamed from: i, reason: collision with root package name */
    private final int f5954i;

    /* renamed from: j, reason: collision with root package name */
    private final String f5955j;

    public b(short s2, int i2, String str) {
        this(s2, i2, str, (byte) 0);
    }

    private String c() {
        return this.f5955j;
    }

    public final int a() {
        return this.f5954i;
    }

    public final byte[] b() throws IOException {
        String str = this.f5955j;
        if (str == null || str.length() == 0) {
            throw new IOException("host can not empty");
        }
        int i2 = this.f5951f;
        if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 5) {
            throw new IOException("opCode is not valid");
        }
        int i3 = this.f5952g;
        if (i3 != 0 && i3 != 1) {
            throw new IOException("rd is not valid");
        }
        int i4 = this.f5954i;
        if (i4 != 1 && i4 != 28 && i4 != 5 && i4 != 16) {
            throw new IOException("recordType is not valid");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeShort(this.f5950e);
        dataOutputStream.writeByte((this.f5951f << 3) + this.f5952g);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(1);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        for (String str2 : this.f5955j.split("[.。．｡]")) {
            if (str2.length() > 63) {
                throw new IOException("host part is too long");
            }
            byte[] bytes = IDN.toASCII(str2).getBytes();
            dataOutputStream.write(bytes.length);
            dataOutputStream.write(bytes, 0, bytes.length);
        }
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(this.f5954i);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(1);
        return byteArrayOutputStream.toByteArray();
    }

    private b(short s2, int i2, String str, byte b3) {
        this.f5950e = s2;
        this.f5951f = 0;
        this.f5952g = 1;
        this.f5954i = i2;
        this.f5955j = str;
    }
}

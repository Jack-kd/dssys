package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;
import java.io.ByteArrayInputStream;
import java.util.zip.CRC32;

/* loaded from: classes4.dex */
public final class d {
    public final byte[] blB;
    private CRC32 blE;
    public final String id;
    public final int len;
    public byte[] data = null;
    private long blC = 0;
    public byte[] blD = new byte[4];

    public d(int i2, String str, boolean z2) {
        this.len = i2;
        this.id = str;
        this.blB = b.hp(str);
        for (int i3 = 0; i3 < 4; i3++) {
            byte b3 = this.blB[i3];
            if (b3 < 65 || b3 > 122 || (b3 > 90 && b3 < 97)) {
                new PngjException("Bad id chunk: must be ascii letters " + str);
            }
        }
        if (z2) {
            Tn();
        }
    }

    private void Tn() {
        byte[] bArr = this.data;
        if (bArr == null || bArr.length < this.len) {
            this.data = new byte[this.len];
        }
    }

    public final ByteArrayInputStream To() {
        return new ByteArrayInputStream(this.data);
    }

    public final long Tp() {
        return this.blC;
    }

    public final void aZ(long j2) {
        this.blC = j2;
    }

    public final void ck(boolean z2) {
        int value = (int) this.blE.getValue();
        int iG = com.kwad.sdk.pngencrypt.n.g(this.blD, 0);
        if (value != iG) {
            String str = String.format("Bad CRC in chunk: %s (offset:%d). Expected:%x Got:%x", this.id, Long.valueOf(this.blC), Integer.valueOf(iG), Integer.valueOf(value));
            if (z2) {
                new PngjException(str);
            }
        }
    }

    public final void e(byte[] bArr, int i2, int i3) {
        if (this.blE == null) {
            this.blE = new CRC32();
        }
        this.blE.update(bArr, i2, i3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.id;
        if (str == null) {
            if (dVar.id != null) {
                return false;
            }
        } else if (!str.equals(dVar.id)) {
            return false;
        }
        return this.blC == dVar.blC;
    }

    public final int hashCode() {
        String str = this.id;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j2 = this.blC;
        return ((iHashCode + 31) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "chunkid=" + b.m(this.blB) + " len=" + this.len;
    }
}

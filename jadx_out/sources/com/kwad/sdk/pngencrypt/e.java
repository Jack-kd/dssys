package com.kwad.sdk.pngencrypt;

/* loaded from: classes4.dex */
public final class e {
    int bkA;
    int bkB;
    int bkC;
    final k bkt;
    private int bkv;
    private int bkw;
    int bkx;
    int bky;
    int bkz;
    private int bku = 0;
    private int bkD = -1;
    private int bkE = -1;
    private int bkF = 0;
    private boolean bkH = false;
    int bkG = 0;

    public e(k kVar) {
        this.bkt = kVar;
        fm(1);
        fl(0);
    }

    private int Ta() {
        return SZ();
    }

    private void fl(int i2) {
        this.bkD = i2;
        int i3 = (i2 * this.bkx) + this.bkz;
        this.bkE = i3;
        if (i3 < 0 || i3 >= this.bkt.bkv) {
            throw new PngjException("bad row - this should not happen");
        }
    }

    private void fm(int i2) {
        if (this.bku == i2) {
            return;
        }
        this.bku = i2;
        byte[] bArrFn = fn(i2);
        byte b3 = bArrFn[0];
        this.bky = b3;
        byte b4 = bArrFn[1];
        this.bkx = b4;
        byte b5 = bArrFn[2];
        this.bkA = b5;
        byte b6 = bArrFn[3];
        this.bkz = b6;
        k kVar = this.bkt;
        int i3 = kVar.bkv;
        this.bkv = i3 > b6 ? (((i3 + b4) - 1) - b6) / b4 : 0;
        int i4 = kVar.bkw;
        int i5 = i4 > b5 ? (((i4 + b3) - 1) - b5) / b3 : 0;
        this.bkw = i5;
        if (i5 == 0) {
            this.bkv = 0;
        }
        int i6 = kVar.bkP;
        this.bkC = b3 * i6;
        this.bkB = b5 * i6;
    }

    private static byte[] fn(int i2) {
        switch (i2) {
            case 1:
                return new byte[]{8, 8, 0, 0};
            case 2:
                return new byte[]{8, 8, 4, 0};
            case 3:
                return new byte[]{4, 8, 0, 4};
            case 4:
                return new byte[]{4, 4, 2, 0};
            case 5:
                return new byte[]{2, 4, 0, 2};
            case 6:
                return new byte[]{2, 2, 1, 0};
            case 7:
                return new byte[]{1, 2, 0, 1};
            default:
                throw new PngjException("bad interlace pass" + i2);
        }
    }

    public final boolean SU() {
        int i2;
        while (true) {
            this.bkF++;
            int i3 = this.bkv;
            if (i3 != 0 && (i2 = this.bkD) < i3 - 1) {
                fl(i2 + 1);
                break;
            }
            int i4 = this.bku;
            if (i4 != 7) {
                fm(i4 + 1);
                if (this.bkv != 0) {
                    fl(0);
                    break;
                }
                this.bkF--;
            } else {
                this.bkH = true;
                return false;
            }
        }
        return true;
    }

    public final int SV() {
        return this.bkD;
    }

    public final int SW() {
        return this.bkE;
    }

    public final int SX() {
        return this.bku;
    }

    public final int SY() {
        return this.bkv;
    }

    public final int SZ() {
        return this.bkw;
    }

    public final int Tb() {
        return ((this.bkt.bkU * Ta()) + 7) / 8;
    }
}

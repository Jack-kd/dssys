package com.kwad.sdk.utils;

/* loaded from: classes4.dex */
public class bo {
    protected final int mHeight;
    protected final int mWidth;

    public bo(int i2, int i3) {
        this.mWidth = i2;
        this.mHeight = i3;
    }

    public final float Ww() {
        return this.mWidth;
    }

    public final float Wx() {
        return this.mHeight;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof bo) {
            bo boVar = (bo) obj;
            if (this.mWidth == boVar.mWidth && this.mHeight == boVar.mHeight) {
                return true;
            }
        }
        return false;
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public final int getWidth() {
        return this.mWidth;
    }

    public int hashCode() {
        int i2 = this.mHeight;
        int i3 = this.mWidth;
        return i2 ^ ((i3 >>> 16) | (i3 << 16));
    }

    public String toString() {
        return this.mWidth + "x" + this.mHeight;
    }
}

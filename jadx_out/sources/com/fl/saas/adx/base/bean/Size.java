package com.fl.saas.adx.base.bean;

import com.fl.saas.adx.util.Check;

/* loaded from: classes3.dex */
public final class Size {
    private final int mHeight;
    private final int mWidth;

    public Size(int i2, int i3) {
        this.mWidth = i2;
        this.mHeight = i3;
    }

    private static NumberFormatException invalidSize(String str) {
        throw new NumberFormatException("Invalid Size: \"" + str + "\"");
    }

    public static Size parseSize(String str) {
        Check.checkNotNull(str, "string must not be null");
        int iIndexOf = str.indexOf(42);
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(120);
        }
        if (iIndexOf >= 0) {
            return new Size(Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1)));
        }
        throw invalidSize(str);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            if (this.mWidth == size.mWidth && this.mHeight == size.mHeight) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getWidth() {
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

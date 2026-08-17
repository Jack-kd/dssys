package com.byazt.pjc;

import android.graphics.Bitmap;
import com.byazt.ymw.j;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1436, 34})
/* loaded from: classes3.dex */
public class l {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public List<Object> f24425j;
    public Bitmap jx;

    /* renamed from: l, reason: collision with root package name */
    public byte[] f24426l;

    /* renamed from: w, reason: collision with root package name */
    public Map<String, String> f24427w;

    public l(byte[] bArr, int i2) {
        this.jx = null;
        this.f24425j = null;
        this.f24427w = null;
        this.f24426l = bArr;
        this.hp = i2;
    }

    public Bitmap hp() {
        return this.jx;
    }

    public boolean j() {
        if (this.jx != null) {
            return true;
        }
        byte[] bArr = this.f24426l;
        return bArr != null && bArr.length > 0;
    }

    public byte[] jx() {
        try {
            if (this.f24426l == null) {
                this.f24426l = j.l(this.jx);
            }
        } catch (OutOfMemoryError unused) {
        }
        return this.f24426l;
    }

    public int l() {
        return this.hp;
    }

    public boolean w() {
        byte[] bArr = this.f24426l;
        return bArr != null && bArr.length >= 3 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70;
    }

    public l(Bitmap bitmap, int i2) {
        this.f24426l = null;
        this.f24425j = null;
        this.f24427w = null;
        this.jx = bitmap;
        this.hp = i2;
    }
}

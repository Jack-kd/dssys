package com.czhj.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public class ByteArrayPool {
    protected static final Comparator<byte[]> BUF_COMPARATOR = new Comparator<byte[]>() { // from class: com.czhj.volley.toolbox.ByteArrayPool.1
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private final int f29621c;

    /* renamed from: a, reason: collision with root package name */
    private final List<byte[]> f29619a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private final List<byte[]> f29620b = new ArrayList(64);

    /* renamed from: d, reason: collision with root package name */
    private int f29622d = 0;

    public ByteArrayPool(int i2) {
        this.f29621c = i2;
    }

    private synchronized void a() {
        while (this.f29622d > this.f29621c) {
            byte[] bArrRemove = this.f29619a.remove(0);
            this.f29620b.remove(bArrRemove);
            this.f29622d -= bArrRemove.length;
        }
    }

    public synchronized byte[] getBuf(int i2) {
        for (int i3 = 0; i3 < this.f29620b.size(); i3++) {
            byte[] bArr = this.f29620b.get(i3);
            if (bArr.length >= i2) {
                this.f29622d -= bArr.length;
                this.f29620b.remove(i3);
                this.f29619a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i2];
    }

    public synchronized void returnBuf(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f29621c) {
                this.f29619a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f29620b, bArr, BUF_COMPARATOR);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f29620b.add(iBinarySearch, bArr);
                this.f29622d += bArr.length;
                a();
            }
        }
    }
}

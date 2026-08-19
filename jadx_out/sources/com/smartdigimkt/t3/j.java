package com.smartdigimkt.t3;

import android.graphics.Bitmap;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedList;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f44310a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f44311b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f44312c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l f44313d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ m f44314e;

    public j(m mVar, o oVar, int i2, int i3, l lVar) {
        this.f44314e = mVar;
        this.f44310a = oVar;
        this.f44311b = i2;
        this.f44312c = i3;
        this.f44313d = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws NoSuchAlgorithmException {
        Bitmap bitmapA = this.f44314e.a(this.f44310a, this.f44311b, this.f44312c);
        if (bitmapA != null && !bitmapA.isRecycled()) {
            this.f44314e.a(this.f44310a.f44331b, bitmapA, this.f44311b, this.f44312c);
            if (this.f44313d != null) {
                LinkedList linkedList = new LinkedList();
                linkedList.add(this.f44313d);
                this.f44314e.f44324e.put(this.f44310a.f44331b, linkedList);
            }
            m.a(this.f44314e, this.f44310a.f44331b, bitmapA);
            return;
        }
        m mVar = this.f44314e;
        o oVar = this.f44310a;
        int i2 = this.f44311b;
        int i3 = this.f44312c;
        l lVar = this.f44313d;
        synchronized (mVar.f44324e) {
            try {
                if (mVar.f44324e.containsKey(oVar.f44331b)) {
                    LinkedList linkedList2 = (LinkedList) mVar.f44324e.get(oVar.f44331b);
                    if (linkedList2 != null && lVar != null && !linkedList2.contains(lVar)) {
                        linkedList2.add(lVar);
                    }
                } else {
                    if (lVar != null) {
                        LinkedList linkedList3 = new LinkedList();
                        linkedList3.add(lVar);
                        mVar.f44324e.put(oVar.f44331b, linkedList3);
                    }
                    com.smartdigimkt.v3.b bVar = new com.smartdigimkt.v3.b(oVar);
                    bVar.f44710e = new k(mVar, i2, i3, oVar);
                    bVar.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

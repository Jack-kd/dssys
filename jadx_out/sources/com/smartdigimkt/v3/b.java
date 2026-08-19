package com.smartdigimkt.v3;

import android.graphics.Bitmap;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.t3.h;
import com.smartdigimkt.t3.k;
import com.smartdigimkt.t3.l;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.n;
import com.smartdigimkt.t3.o;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes5.dex */
public final class b extends d {

    /* renamed from: d, reason: collision with root package name */
    public final o f44709d;

    /* renamed from: e, reason: collision with root package name */
    public k f44710e;

    public b(o oVar) {
        super(oVar.f44331b);
        this.f44709d = oVar;
    }

    @Override // com.smartdigimkt.v3.d
    public final boolean a(InputStream inputStream) {
        n nVarA = n.a();
        o oVar = this.f44709d;
        return nVarA.a(oVar.f44330a, i.b(oVar.f44331b), inputStream);
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(c cVar) {
        e.a().a(cVar, 4);
    }

    @Override // com.smartdigimkt.v3.d
    public final void a() throws NoSuchAlgorithmException {
        k kVar = this.f44710e;
        if (kVar != null) {
            o oVar = this.f44709d;
            String str = oVar.f44331b;
            Bitmap bitmapA = kVar.f44318d.a(oVar, kVar.f44315a, kVar.f44316b);
            if (bitmapA != null && !bitmapA.isRecycled()) {
                kVar.f44318d.a(oVar.f44331b, bitmapA, kVar.f44315a, kVar.f44316b);
            }
            m.a(kVar.f44318d, kVar.f44317c.f44331b, bitmapA);
        }
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(String str) {
        LinkedList linkedList;
        k kVar = this.f44710e;
        if (kVar != null) {
            o oVar = this.f44709d;
            m mVar = kVar.f44318d;
            String str2 = oVar.f44331b;
            synchronized (mVar.f44324e) {
                try {
                    linkedList = (LinkedList) mVar.f44324e.remove(str2);
                } finally {
                }
                if (linkedList != null) {
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        l lVar = (l) it.next();
                        if (lVar != null) {
                            e.a().a(new h(lVar, str2, str));
                        }
                    }
                }
            }
        }
    }
}

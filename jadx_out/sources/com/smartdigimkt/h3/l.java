package com.smartdigimkt.h3;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f40574a;

    public l(m mVar) {
        this.f40574a = mVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f40574a.f40581f) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Context contextD = SDKContext.getInstance().d();
                if (contextD == null) {
                    return;
                }
                Long l2 = this.f40574a.f40587l;
                if (l2 != null) {
                    long jLongValue = jCurrentTimeMillis - l2.longValue();
                    m mVar = this.f40574a;
                    if (jLongValue >= mVar.f40585j) {
                        if (mVar.f40586k.isEmpty()) {
                            ArrayList arrayList = new ArrayList();
                            Iterator it = this.f40574a.f40580e.entrySet().iterator();
                            while (it.hasNext()) {
                                b bVar = (b) ((Map.Entry) it.next()).getValue();
                                String str = bVar.f40547a;
                                if (!TextUtils.isEmpty(str)) {
                                    long j2 = jCurrentTimeMillis - bVar.f40548b;
                                    m mVar2 = this.f40574a;
                                    if (j2 > mVar2.f40585j && !mVar2.f40586k.contains(str)) {
                                        String str2 = this.f40574a.f40576a;
                                        try {
                                            arrayList.add(new c(contextD, str, bVar.f40552f, bVar.f40548b, bVar.f40549c));
                                        } catch (Throwable unused) {
                                        }
                                    }
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                m.a(this.f40574a, arrayList, true);
                            }
                        }
                    }
                }
            } finally {
            }
        }
    }
}

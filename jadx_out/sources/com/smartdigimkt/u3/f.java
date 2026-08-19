package com.smartdigimkt.u3;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.t3.n;
import com.smartdigimkt.t3.o;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: d, reason: collision with root package name */
    public static volatile f f44412d;

    /* renamed from: a, reason: collision with root package name */
    public final Context f44413a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f44414b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f44415c = new ConcurrentHashMap();

    public f(Context context) {
        if (context != null) {
            this.f44413a = context.getApplicationContext();
        } else {
            this.f44413a = SDKContext.getInstance().d();
        }
    }

    public final void a(int i2, String str, String str2) {
        synchronized (this.f44414b) {
            try {
                String strB = i.b(str);
                File file = new File(n.a().b(5, strB));
                if (file.exists()) {
                    file.delete();
                }
                File file2 = new File(n.a().b(6, strB));
                if (file2.exists()) {
                    file2.delete();
                }
                LinkedList linkedList = (LinkedList) this.f44414b.remove(str);
                if (linkedList != null) {
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        com.smartdigimkt.e0.n nVar = (com.smartdigimkt.e0.n) it.next();
                        if (nVar != null) {
                            com.smartdigimkt.b4.e.a().a(new d(nVar, str, i2, str2));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str, com.smartdigimkt.e0.n nVar) {
        if (TextUtils.isEmpty(str)) {
            nVar.a(1, str, "No url info.");
            return;
        }
        if (!str.endsWith(".zip")) {
            nVar.a(1, str, "Not zip file url");
            return;
        }
        String strB = n.a().b(str);
        if (!TextUtils.isEmpty(strB)) {
            nVar.a(0L, str, strB);
            return;
        }
        String strA = b.a().a(this.f44413a);
        if (!TextUtils.isEmpty(strA)) {
            String strB2 = n.a().b(strA);
            if (!TextUtils.isEmpty(strB2)) {
                nVar.a(0L, strA, strB2);
                nVar = null;
            }
        }
        synchronized (this.f44414b) {
            try {
                if (!this.f44415c.contains(str)) {
                    this.f44415c.put(str, Long.valueOf(System.currentTimeMillis()));
                }
                if (!this.f44414b.containsKey(str)) {
                    LinkedList linkedList = new LinkedList();
                    if (nVar != null) {
                        linkedList.add(nVar);
                    }
                    this.f44414b.put(str, linkedList);
                    String strB3 = i.b(str);
                    n nVarA = n.a();
                    nVarA.getClass();
                    if (!TextUtils.isEmpty(strB3) && new File(nVarA.b(5, strB3)).exists()) {
                        a(str);
                    } else {
                        o oVar = new o(5, str);
                        g gVar = new g(oVar);
                        gVar.f44417e = new e(this, oVar);
                        gVar.b();
                    }
                    return;
                }
                LinkedList linkedList2 = (LinkedList) this.f44414b.get(str);
                if (linkedList2 != null && nVar != null && !linkedList2.contains(nVar)) {
                    linkedList2.add(nVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x01d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.u3.f.a(java.lang.String):void");
    }
}

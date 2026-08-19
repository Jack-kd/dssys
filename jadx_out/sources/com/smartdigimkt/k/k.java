package com.smartdigimkt.k;

import android.database.Cursor;
import com.anythink.core.common.f.g;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f41152a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41153b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j.b f41154c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ o f41155d;

    public k(o oVar, ArrayList arrayList, int i2, com.smartdigimkt.j.b bVar) {
        this.f41155d = oVar;
        this.f41152a = arrayList;
        this.f41153b = i2;
        this.f41154c = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        int i2;
        ArrayList arrayList2 = new ArrayList();
        com.smartdigimkt.k3.g gVar = this.f41155d.f41162b;
        List list = this.f41152a;
        int i3 = this.f41153b;
        synchronized (gVar) {
            arrayList = new ArrayList();
            Cursor cursorQuery = null;
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("status IN (");
                for (int i4 = 0; i4 < list.size(); i4++) {
                    sb.append(list.get(i4));
                    if (i4 != list.size() - 1) {
                        sb.append(",");
                    }
                }
                sb.append(")");
                sb.append(" AND ");
                sb.append(g.a.f3285v);
                sb.append(" > ");
                sb.append(System.currentTimeMillis());
                sb.append(" - ");
                sb.append(g.a.f3255G);
                if (i3 > 0) {
                    sb.append(" AND ");
                    sb.append(com.smartdigimkt.k3.f.f41372b);
                    sb.append(" = ");
                    sb.append(i3);
                }
                cursorQuery = gVar.a().query(g.a.f3264a, null, sb.toString(), null, null, null, g.a.f3285v);
                while (cursorQuery.moveToNext()) {
                    arrayList.add(com.smartdigimkt.k3.g.a(cursorQuery));
                }
            } catch (Throwable th) {
                try {
                    th.getMessage();
                } finally {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            }
        }
        if (arrayList.size() > 0) {
            for (i2 = 0; i2 < arrayList.size(); i2++) {
                arrayList2.add(o.a(this.f41155d, (com.smartdigimkt.m3.f) arrayList.get(i2)));
            }
        }
        com.smartdigimkt.j.b bVar = this.f41154c;
        if (bVar != null) {
            bVar.a(arrayList2);
        }
    }
}

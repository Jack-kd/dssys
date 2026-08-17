package com.smartdigimkt.f3;

import android.database.Cursor;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.i;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class k {

    /* renamed from: d, reason: collision with root package name */
    public static volatile k f40229d;

    /* renamed from: a, reason: collision with root package name */
    public final String f40230a = k.class.getName();

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.k3.i f40231b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.k3.h f40232c;

    public k() {
        if (SDKContext.getInstance().d() != null) {
            com.smartdigimkt.k3.d dVarA = com.smartdigimkt.k3.d.a(SDKContext.getInstance().d());
            if (com.smartdigimkt.k3.i.f41377b == null) {
                synchronized (com.smartdigimkt.k3.i.class) {
                    try {
                        if (com.smartdigimkt.k3.i.f41377b == null) {
                            com.smartdigimkt.k3.i.f41377b = new com.smartdigimkt.k3.i(dVarA);
                        }
                    } finally {
                    }
                }
            }
            this.f40231b = com.smartdigimkt.k3.i.f41377b;
            this.f40232c = com.smartdigimkt.k3.h.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d()));
        }
    }

    public static k a() {
        if (f40229d == null) {
            synchronized (k.class) {
                try {
                    if (f40229d == null) {
                        f40229d = new k();
                    }
                } finally {
                }
            }
        }
        return f40229d;
    }

    public final ArrayList b(int i2) {
        com.smartdigimkt.k3.i iVar = this.f40231b;
        synchronized (iVar) {
            ArrayList arrayList = new ArrayList();
            if (i2 <= 0) {
                return arrayList;
            }
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = iVar.a().query(i.a.f3301a, null, "show_count > show_limit", null, null, null, "last_update_time DESC", i2 + "");
                    ArrayList arrayListA = iVar.a(cursorQuery);
                    arrayListA.size();
                    cursorQuery.close();
                    arrayList.addAll(arrayListA);
                } finally {
                }
            } catch (Exception unused) {
                if (cursorQuery != null) {
                }
            } catch (OutOfMemoryError unused2) {
                System.gc();
                if (cursorQuery != null) {
                }
            } catch (Throwable unused3) {
                if (cursorQuery != null) {
                }
            }
            cursorQuery.close();
            return arrayList;
        }
    }

    public final ArrayList a(int i2) {
        com.smartdigimkt.k3.h hVar = this.f40232c;
        synchronized (hVar) {
            ArrayList arrayList = new ArrayList();
            if (i2 <= 0) {
                return arrayList;
            }
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = hVar.a().query(h.a.f3292a, null, null, null, null, null, "last_update_time DESC", i2 + "");
                    ArrayList arrayListA = hVar.a(cursorQuery);
                    cursorQuery.close();
                    arrayListA.size();
                    arrayList.addAll(arrayListA);
                } finally {
                }
            } catch (Exception unused) {
                if (cursorQuery != null) {
                }
            } catch (OutOfMemoryError unused2) {
                System.gc();
                if (cursorQuery != null) {
                }
            } catch (Throwable unused3) {
                if (cursorQuery != null) {
                }
            }
            cursorQuery.close();
            return arrayList;
        }
    }
}

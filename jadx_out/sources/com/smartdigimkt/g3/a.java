package com.smartdigimkt.g3;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.smartdigimkt.k3.d;
import com.smartdigimkt.k3.p;
import com.smartdigimkt.m3.i;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final p f40366a;

    /* renamed from: b, reason: collision with root package name */
    public final int f40367b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f40368c;

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f40369d;

    /* renamed from: e, reason: collision with root package name */
    public final ConcurrentHashMap f40370e;

    public a(Context context) {
        p pVarA = p.a(d.a(context));
        this.f40366a = pVarA;
        this.f40369d = new ConcurrentHashMap();
        this.f40370e = new ConcurrentHashMap();
        Object obj = new Object();
        this.f40368c = obj;
        int iA = a();
        this.f40367b = iA;
        synchronized (obj) {
            try {
                ArrayList arrayListA = pVarA.a(iA);
                if (!arrayListA.isEmpty()) {
                    for (int i2 = 0; i2 < arrayListA.size(); i2++) {
                        i iVar = (i) arrayListA.get(i2);
                        this.f40370e.put(iVar.f42033b, iVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract int a();

    public final void a(String str, int i2, int i3) {
        synchronized (this.f40368c) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    i iVar = (i) this.f40370e.get(str);
                    if (iVar != null) {
                        iVar.a();
                    }
                    i iVarA = this.f40366a.a(this.f40367b, iVar, str, i2, i3);
                    if (iVarA != null) {
                        if (SDKContext.getInstance().j()) {
                            iVarA.a();
                        }
                        this.f40370e.put(str, iVarA);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str, long j2) {
        synchronized (this.f40368c) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    i iVar = (i) this.f40370e.get(str);
                    if (iVar != null) {
                        iVar.a();
                    }
                    i iVarA = this.f40366a.a(this.f40367b, iVar, str, j2);
                    if (iVarA != null) {
                        if (SDKContext.getInstance().j()) {
                            iVarA.a();
                        }
                        this.f40370e.put(str, iVarA);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str, String str2) {
        synchronized (this.f40368c) {
            this.f40369d.put(str, str2);
            this.f40366a.b(this.f40367b, str, str2);
        }
    }

    public final ArrayList a(ArrayList arrayList) {
        synchronized (this.f40368c) {
            try {
                ArrayList arrayList2 = new ArrayList();
                if (arrayList.isEmpty()) {
                    return arrayList2;
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    String str = (String) arrayList.get(i2);
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = (String) this.f40369d.get(str);
                        if (!TextUtils.isEmpty(str2)) {
                            i iVar = (i) this.f40370e.get(str2);
                            if (SDKContext.getInstance().j() && iVar != null) {
                                iVar.a();
                            }
                            if (iVar != null && System.currentTimeMillis() < iVar.f42034c) {
                                if (SDKContext.getInstance().j()) {
                                    Log.e("DirectlyAdRecord", "getUnexpiredRecordListWithAdSounrceIds: " + str + "," + iVar.f42035d + "," + iVar.f42036e + "," + iVar.f42034c);
                                }
                                arrayList2.add(iVar);
                            }
                        }
                    }
                }
                return arrayList2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

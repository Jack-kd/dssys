package com.smartdigimkt.e0;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public final class u {

    /* renamed from: b, reason: collision with root package name */
    public static volatile u f40028b;

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f40029a = new CopyOnWriteArrayList();

    public static u a() {
        if (f40028b == null) {
            synchronized (u.class) {
                try {
                    if (f40028b == null) {
                        f40028b = new u();
                    }
                } finally {
                }
            }
        }
        return f40028b;
    }

    public final synchronized void a(r rVar) {
        this.f40029a.add(rVar);
    }

    public final void a(int i2, String str) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f40029a;
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                r rVar = (r) it.next();
                rVar.f40013d.size();
                synchronized (rVar) {
                    try {
                        t.b(i2, str);
                        ArrayList arrayList = rVar.f40013d;
                        if (arrayList != null && arrayList.contains(str) && (!rVar.f40015f.a(str) || rVar.f40016g.f41895T <= i2)) {
                            rVar.f40013d.remove(str);
                            if (rVar.f40015f.a(str)) {
                                c0.a(rVar.f40015f, rVar.f40016g);
                            }
                            if (rVar.f40013d.isEmpty()) {
                                rVar.a(1);
                            } else if (com.smartdigimkt.z.z.f(rVar.f40015f, rVar.f40017h)) {
                                String strA = rVar.f40015f.f41815f;
                                if (TextUtils.equals(String.valueOf(rVar.f40017h.f41644r.f41915a), "2")) {
                                    strA = rVar.f40015f.a(rVar.f40016g);
                                }
                                if (rVar.f40015f.a(str) && !TextUtils.isEmpty(strA)) {
                                    rVar.f40013d.remove(strA);
                                    if (rVar.f40013d.isEmpty()) {
                                        rVar.a(1);
                                    }
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(String str, com.smartdigimkt.i0.f fVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f40029a;
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                r rVar = (r) it.next();
                rVar.f40013d.size();
                fVar.a();
                synchronized (rVar) {
                    char c2 = 65535;
                    try {
                        t.b(-1, str);
                        ArrayList arrayList = rVar.f40013d;
                        if (arrayList != null) {
                            arrayList.remove(str);
                        }
                        if (rVar.f40015f.a(str) && com.smartdigimkt.z.z.f(rVar.f40015f, rVar.f40017h)) {
                            com.smartdigimkt.y3.h.a(rVar.f40017h, rVar.f40015f, 1, fVar.a());
                        }
                        String strValueOf = String.valueOf(rVar.f40017h.f41644r.f41915a);
                        switch (strValueOf.hashCode()) {
                            case 48:
                                if (strValueOf.equals("0")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                            case 49:
                                if (strValueOf.equals("1")) {
                                    c2 = 0;
                                    break;
                                }
                                break;
                            case 50:
                                if (strValueOf.equals("2")) {
                                    c2 = 4;
                                    break;
                                }
                                break;
                            case ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT /* 51 */:
                                if (strValueOf.equals("3")) {
                                    c2 = 1;
                                    break;
                                }
                                break;
                            case 52:
                                if (strValueOf.equals("4")) {
                                    c2 = 3;
                                    break;
                                }
                                break;
                        }
                        if (c2 == 0 || c2 == 1) {
                            rVar.a(fVar);
                        } else if (c2 == 2) {
                            rVar.a(1);
                        } else if (c2 == 3 || c2 == 4) {
                            String strA = rVar.f40015f.f41815f;
                            if (TextUtils.equals(String.valueOf(rVar.f40017h.f41644r.f41915a), "2")) {
                                strA = rVar.f40015f.a(rVar.f40016g);
                            }
                            if (!rVar.f40015f.a(str) && (TextUtils.isEmpty(strA) || !TextUtils.equals(strA, str))) {
                                rVar.a(fVar);
                            }
                            if (TextUtils.isEmpty(strA)) {
                                rVar.a(fVar);
                            } else if (rVar.f40015f.a(str) && rVar.f40013d.size() == 0) {
                                rVar.a(1);
                            } else {
                                ArrayList arrayList2 = rVar.f40013d;
                                if (arrayList2 == null || (!arrayList2.contains(rVar.f40015f.f41818i) && !rVar.f40013d.contains(rVar.f40015f.f41815f))) {
                                    rVar.a(fVar);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
    }
}

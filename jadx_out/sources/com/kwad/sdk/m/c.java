package com.kwad.sdk.m;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.kwad.sdk.m.a.b;
import com.kwad.sdk.utils.ab;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class c {
    public static final String TAG = "Ranger_" + c.class.getSimpleName();
    private String value;

    public static class a {
        private static final c bmP = new c(0);
    }

    private c() {
    }

    public static c TI() {
        return a.bmP;
    }

    public static /* synthetic */ com.kwad.sdk.m.b.a.d a(c cVar, String str, String str2) {
        return aq(str, str2);
    }

    @Nullable
    private static com.kwad.sdk.m.b.a.d aq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        com.kwad.sdk.m.b.a.d dVar = new com.kwad.sdk.m.b.a.d();
        dVar.name = str;
        dVar.bnC = str2;
        return dVar;
    }

    private Object b(com.kwad.sdk.m.a.b bVar) throws ClassNotFoundException {
        Class<?> cls;
        if (bVar.bnj.bns) {
            try {
                if (TextUtils.isEmpty(bVar.bnf)) {
                    Object obj = bVar.bne;
                    cls = obj != null ? obj.getClass() : null;
                } else {
                    cls = Class.forName(bVar.bnf);
                }
                if (cls != null) {
                    return a(bVar, true, cls);
                }
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.w(TAG, Log.getStackTraceString(e2));
            }
        } else if (bVar.bne != null) {
            return a(bVar, false, (Class<?>) null);
        }
        return null;
    }

    private static String r(Object obj) {
        if (obj != null) {
            return String.valueOf(obj);
        }
        com.kwad.sdk.core.d.c.w(TAG, "value is null by ob null");
        return "";
    }

    public final void c(d dVar) {
        List<com.kwad.sdk.m.a.b> list;
        if (dVar == null || (list = dVar.bmS) == null || list.isEmpty()) {
            return;
        }
        final List<com.kwad.sdk.m.a.b> list2 = dVar.bmS;
        i.schedule(new bi() { // from class: com.kwad.sdk.m.c.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                ArrayList arrayList = new ArrayList();
                for (com.kwad.sdk.m.a.b bVar : list2) {
                    if (bVar != null && !TextUtils.isEmpty(bVar.bni)) {
                        String str = bVar.bni;
                        c cVar = c.this;
                        cVar.value = cVar.a(bVar);
                        c cVar2 = c.this;
                        com.kwad.sdk.m.b.a.d dVarA = c.a(cVar2, str, cVar2.value);
                        if (dVarA != null) {
                            arrayList.add(dVarA);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                com.kwad.sdk.m.b.a.e eVar = new com.kwad.sdk.m.b.a.e();
                eVar.bnD = arrayList;
                com.kwad.sdk.m.b.a.a(eVar);
            }
        }, 20L, TimeUnit.SECONDS);
    }

    public /* synthetic */ c(byte b3) {
        this();
    }

    private static Object c(com.kwad.sdk.m.a.b bVar) {
        if (bVar.bnh) {
            try {
                return ab.c(Class.forName(bVar.bnf), bVar.bng);
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.w(TAG, Log.getStackTraceString(e2));
                return null;
            }
        }
        Object obj = bVar.bne;
        if (obj != null) {
            return ab.getField(obj, bVar.bng);
        }
        return null;
    }

    public final String a(com.kwad.sdk.m.a.b bVar) {
        com.kwad.sdk.m.a.b bVar2 = bVar.bnk;
        if (bVar2 != null && !bVar2.TO()) {
            if (!TextUtils.isEmpty(bVar.bng)) {
                bVar.bnk.bne = c(bVar);
            } else {
                b.C0630b c0630b = bVar.bnj;
                if (c0630b != null && !c0630b.TO()) {
                    bVar.bnk.bne = b(bVar);
                }
            }
            return a(bVar.bnk);
        }
        if (!TextUtils.isEmpty(bVar.bng)) {
            return r(c(bVar));
        }
        b.C0630b c0630b2 = bVar.bnj;
        if (c0630b2 != null && !c0630b2.TO()) {
            return r(b(bVar));
        }
        com.kwad.sdk.core.d.c.d(TAG, "node.nodeClassName:" + bVar.bnf);
        return ab.classExists(bVar.bnf) ? "true" : "false";
    }

    private static Object a(com.kwad.sdk.m.a.b bVar, boolean z2, Class<?> cls) {
        Object[] objArrTR = bVar.bnj.TR();
        if (objArrTR == null || objArrTR.length == 0) {
            if (z2) {
                return ab.callStaticMethod(cls, bVar.bnj.name, new Object[0]);
            }
            return ab.callMethod(bVar.bne, bVar.bnj.name, new Object[0]);
        }
        if (z2) {
            return ab.callStaticMethod(cls, bVar.bnj.name, objArrTR);
        }
        return ab.callMethod(bVar.bne, bVar.bnj.name, objArrTR);
    }
}

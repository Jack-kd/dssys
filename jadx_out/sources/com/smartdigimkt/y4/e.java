package com.smartdigimkt.y4;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.d.t;
import com.smartdigimkt.w4.z;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class e implements com.smartdigimkt.v4.a {

    /* renamed from: a, reason: collision with root package name */
    public final b f45255a;

    /* renamed from: b, reason: collision with root package name */
    public final f f45256b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.v4.d f45257c;

    /* renamed from: d, reason: collision with root package name */
    public final String f45258d;

    /* renamed from: e, reason: collision with root package name */
    public final int f45259e;

    public e(com.smartdigimkt.v4.d dVar) {
        this.f45257c = dVar;
        this.f45258d = dVar.f44719b;
        this.f45259e = dVar.f44720c;
        this.f45255a = d.a(dVar);
        this.f45256b = new f(dVar);
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(Object obj, String str) {
        com.smartdigimkt.v4.d dVar = this.f45257c;
        if (dVar != null) {
            a(str, obj, dVar.f44721d);
        } else {
            a(str, obj, 1);
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final Object b(Object obj, String str) {
        f fVar;
        b bVarA = null;
        if (a(str)) {
            com.smartdigimkt.v4.d dVar = this.f45257c;
            if (dVar != null) {
                int i2 = dVar.f44721d;
                Context context = dVar.f44718a;
                int i3 = dVar.f44720c;
                TextUtils.isEmpty("sdm_adx_rp_place_data_tkv");
                bVarA = d.a(new com.smartdigimkt.v4.d(context, "sdm_adx_rp_place_data_tkv", i3, i2));
            }
            if (bVarA != null) {
                return bVarA.b(obj, str);
            }
        } else {
            if (this.f45259e == 0 && (fVar = this.f45256b) != null) {
                return fVar.b(obj, str);
            }
            b bVar = this.f45255a;
            if (bVar != null) {
                Object objB = bVar.b(obj, str);
                if (objB != null && objB != obj) {
                    return objB;
                }
                f fVar2 = this.f45256b;
                if (fVar2 != null) {
                    return fVar2.b(obj, str);
                }
                return null;
            }
        }
        return obj;
    }

    @Override // com.smartdigimkt.v4.a
    public final void clear() {
        b bVar;
        if (this.f45259e == 1 && (bVar = this.f45255a) != null) {
            bVar.clear();
            return;
        }
        f fVar = this.f45256b;
        if (fVar != null) {
            fVar.clear();
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final Map getAll() {
        b bVar;
        if (this.f45259e == 1 && (bVar = this.f45255a) != null) {
            return bVar.getAll();
        }
        f fVar = this.f45256b;
        if (fVar != null) {
            return fVar.getAll();
        }
        return null;
    }

    @Override // com.smartdigimkt.v4.a
    public final void remove(String str) {
        b bVar;
        b bVarA;
        if (!a(str)) {
            if (this.f45259e == 1 && (bVar = this.f45255a) != null) {
                bVar.remove(str);
                return;
            }
            f fVar = this.f45256b;
            if (fVar != null) {
                fVar.remove(str);
                return;
            }
            return;
        }
        com.smartdigimkt.v4.d dVar = this.f45257c;
        if (dVar != null) {
            int i2 = dVar.f44721d;
            Context context = dVar.f44718a;
            int i3 = dVar.f44720c;
            TextUtils.isEmpty("sdm_adx_rp_place_data_tkv");
            bVarA = d.a(new com.smartdigimkt.v4.d(context, "sdm_adx_rp_place_data_tkv", i3, i2));
        } else {
            bVarA = null;
        }
        if (bVarA != null) {
            bVarA.remove(str);
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(String str, Object obj, int i2) {
        b bVar;
        b bVarA;
        if (a(str)) {
            com.smartdigimkt.v4.d dVar = this.f45257c;
            if (dVar == null) {
                bVarA = null;
            } else {
                Context context = dVar.f44718a;
                int i3 = dVar.f44720c;
                TextUtils.isEmpty("sdm_adx_rp_place_data_tkv");
                bVarA = d.a(new com.smartdigimkt.v4.d(context, "sdm_adx_rp_place_data_tkv", i3, i2));
            }
            if (bVarA != null) {
                bVarA.a(str, obj, bVarA.f45253b);
                return;
            }
            return;
        }
        if (this.f45259e == 1 && (bVar = this.f45255a) != null) {
            bVar.a(str, obj, i2);
            return;
        }
        f fVar = this.f45256b;
        if (fVar != null) {
            fVar.a(str, obj, i2);
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(HashMap map) {
        b bVar;
        z zVar;
        b bVar2;
        z zVar2;
        com.smartdigimkt.v4.d dVar = this.f45257c;
        if (dVar != null) {
            int i2 = dVar.f44721d;
            if (this.f45259e == 1 && (bVar2 = this.f45255a) != null) {
                if (map.isEmpty() || (zVar2 = bVar2.f45252a) == null) {
                    return;
                }
                try {
                    zVar2.a(map);
                    bVar2.a(i2);
                    return;
                } catch (Throwable th) {
                    th.getMessage();
                    return;
                }
            }
            f fVar = this.f45256b;
            if (fVar != null) {
                fVar.a(i2, map);
                return;
            }
            return;
        }
        if (this.f45259e == 1 && (bVar = this.f45255a) != null) {
            if (map.isEmpty() || (zVar = bVar.f45252a) == null) {
                return;
            }
            try {
                zVar.a(map);
                bVar.a(1);
                return;
            } catch (Throwable th2) {
                th2.getMessage();
                return;
            }
        }
        f fVar2 = this.f45256b;
        if (fVar2 != null) {
            fVar2.a(1, map);
        }
    }

    public final boolean a(String str) {
        com.smartdigimkt.v4.c.a().getClass();
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return (str.endsWith(t.a.f3045n) || str.endsWith(t.a.f3044m)) && "sdm_adx_rp_sdk".equals(this.f45258d);
    }
}

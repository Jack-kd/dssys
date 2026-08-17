package com.byazt.ym;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.SparseArray;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.pg.u;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, 54})
@ATSKeep
/* loaded from: classes3.dex */
public class a implements u, Function {
    public static final int TYPE_NEW_SHARED_PREFERENCES = 3;
    public static final Set<String> jx = new HashSet();

    /* renamed from: l, reason: collision with root package name */
    public static File f28044l;
    public Map<String, com.byazt.ow.w> hp = new ConcurrentHashMap();

    public a() {
        jx.add("sp_bidding_opt_libra");
    }

    public static com.byazt.ow.w getKVStore(String str) {
        return ((u) j.getService("kv_store_factory")).get(str);
    }

    public static File getSpFile(String str) {
        if (f28044l == null) {
            f28044l = jx();
        }
        return new File(f28044l, l(str) + ".xml");
    }

    private com.byazt.ow.w hp(String str) {
        int iEi = sz.l().ei();
        com.byazt.jkd.a aVarMk = sz.l().mk();
        if (iEi != 3 || Build.VERSION.SDK_INT == 27) {
            return new com.byazt.crk.j(sz.getContext().getSharedPreferences(l(str), 0));
        }
        File spFile = getSpFile(str);
        return new com.byazt.crk.jx(spFile, hp(spFile, str), hp(str, aVarMk.hp), aVarMk.f21527l);
    }

    private static File jx() {
        String name;
        File fileHp = com.byazt.ymw.eb.hp(sz.getContext(), false, null);
        do {
            name = fileHp.getName();
            if (name == null) {
                break;
            }
            fileHp = fileHp.getParentFile();
        } while (!name.equals("files"));
        return new File(fileHp, "shared_prefs");
    }

    private com.byazt.ke.l l() {
        return com.byazt.crk.w.hp() ? new com.byazt.crk.w(null) : new com.byazt.crk.a(null);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            com.byazt.ow.w wVar = get((String) sparseArray.get(1));
            return wVar != null ? new com.byazt.ow.a(wVar) : wVar;
        }
        if (iIntValue == 2) {
            com.byazt.ow.w wVar2 = get((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue());
            return wVar2 != null ? new com.byazt.ow.a(wVar2) : wVar2;
        }
        if (iIntValue == 3) {
            com.byazt.ow.jx encrypt = getEncrypt(((Integer) sparseArray.get(1)).intValue());
            return encrypt != null ? new com.byazt.ow.j(encrypt) : encrypt;
        }
        if (iIntValue == 4) {
            store();
            return null;
        }
        if (iIntValue != 5) {
            return null;
        }
        clear();
        return null;
    }

    @Override // com.byazt.pg.u
    public void clear() {
        synchronized (this.hp) {
            this.hp.clear();
        }
    }

    @Override // com.byazt.pg.u
    public com.byazt.ow.w get(String str) {
        if (str == null) {
            str = "tt_sp";
        }
        com.byazt.ow.w wVar = this.hp.get(str);
        if (wVar != null) {
            return wVar;
        }
        synchronized (this.hp) {
            try {
                com.byazt.ow.w wVar2 = this.hp.get(str);
                if (wVar2 != null) {
                    return wVar2;
                }
                com.byazt.ow.w wVarHp = hp(str);
                this.hp.put(str, wVarHp);
                return wVarHp;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.pg.u
    public com.byazt.ow.jx getEncrypt(int i2) {
        if (i2 != 32) {
            return null;
        }
        return new com.byazt.ak.hp();
    }

    @Override // com.byazt.pg.u
    public void store() {
        Iterator<String> it = this.hp.keySet().iterator();
        while (it.hasNext()) {
            com.byazt.ow.w wVar = this.hp.get(it.next());
            if (wVar != null) {
                wVar.apply();
            }
        }
    }

    public static SharedPreferences getKVStore(@ForbidWrapParam Context context, String str, int i2) {
        return getKVStore(str);
    }

    private static String l(String str) {
        return !str.startsWith("pangle_") ? "pangle_com.byted.pangle_".concat(str) : str;
    }

    @Override // com.byazt.pg.u
    public com.byazt.ow.w get(String str, int i2) {
        return get(str);
    }

    private com.byazt.ke.hp hp(File file, String str) {
        if (jx.contains(str)) {
            return hp();
        }
        if (d.f21856j >= 6900) {
            hp(file);
            return new com.byazt.crk.hp(null);
        }
        return hp();
    }

    private com.byazt.ke.l hp(String str, boolean z2) {
        if (jx.contains(str)) {
            return l();
        }
        com.byazt.ak.hp hpVar = z2 ? new com.byazt.ak.hp() : null;
        if (Build.VERSION.SDK_INT != 27 && d.f21856j >= 6900) {
            return new com.byazt.crk.hp(hpVar);
        }
        return l();
    }

    private com.byazt.ke.hp hp() {
        if (com.byazt.crk.w.hp()) {
            return new com.byazt.crk.w(null);
        }
        return new com.byazt.crk.a(null);
    }

    private void hp(File file) {
        File file2 = new File(file.getParent(), file.getName() + ".prop");
        if (!file2.exists() || file2.length() <= 0) {
            return;
        }
        file.delete();
    }
}

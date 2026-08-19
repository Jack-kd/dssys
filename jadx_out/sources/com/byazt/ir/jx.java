package com.byazt.ir;

import android.text.TextUtils;
import android.util.Pair;
import com.byazt.gr.hp;
import com.byazt.ymw.dy;
import com.byazt.ymw.u;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 402, 30})
/* loaded from: classes.dex */
public abstract class jx {
    public abstract File hp();

    public boolean hp(Map<String, com.byazt.gr.hp> map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        Iterator<String> it = map.keySet().iterator();
        while (it.hasNext()) {
            com.byazt.gr.hp hpVar = map.get(it.next());
            if (hpVar != null && !hp(hpVar.getResources())) {
                return false;
            }
        }
        return true;
    }

    public void jx(List<hp.C0258hp> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<hp.C0258hp> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(hp(), com.byazt.ymw.a.l(it.next().hp()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public List<hp.C0258hp> l(com.byazt.gr.hp hpVar, com.byazt.gr.hp hpVar2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (hpVar2 == null || hpVar2.getResources().isEmpty()) {
            arrayList2.addAll(hpVar.getResources());
        } else if (hpVar.getResources().isEmpty()) {
            arrayList.addAll(hpVar2.getResources());
        } else {
            for (hp.C0258hp c0258hp : hpVar.getResources()) {
                if (!hpVar2.getResources().contains(c0258hp) && c0258hp != null && c0258hp.hp() != null && c0258hp.l() != null) {
                    arrayList2.add(c0258hp);
                }
            }
            for (hp.C0258hp c0258hp2 : hpVar2.getResources()) {
                if (!hpVar.getResources().contains(c0258hp2)) {
                    arrayList.add(c0258hp2);
                }
            }
        }
        if (hp(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public boolean hp(List<hp.C0258hp> list) {
        if (list == null || list.size() <= 0 || hp() == null) {
            return false;
        }
        for (hp.C0258hp c0258hp : list) {
            String strL = com.byazt.ymw.a.l(c0258hp.hp());
            if (TextUtils.isEmpty(strL)) {
                return false;
            }
            File file = new File(hp(), strL);
            String strHp = com.byazt.ymw.a.hp(file);
            if (!file.exists() || !file.isFile() || c0258hp.l() == null || !c0258hp.l().equals(strHp)) {
                return false;
            }
        }
        return true;
    }

    public static boolean jx(com.byazt.gr.hp hpVar, com.byazt.gr.hp hpVar2) {
        if (hpVar != null) {
            try {
                if (!TextUtils.isEmpty(hpVar.jx())) {
                    if (hpVar2 == null) {
                        return false;
                    }
                    if (hp(hpVar.jx(), hpVar2.jx())) {
                        return true;
                    }
                    Map<String, com.byazt.gr.hp> mapHp = hpVar.hp();
                    Map<String, com.byazt.gr.hp> mapHp2 = hpVar2.hp();
                    if (mapHp.isEmpty()) {
                        return !mapHp2.isEmpty();
                    }
                    if (mapHp2.isEmpty()) {
                        return false;
                    }
                    return hp(mapHp, mapHp2);
                }
            } catch (Throwable th) {
                th.getMessage();
                return false;
            }
        }
        return true;
    }

    public boolean hp(hp.l lVar) {
        if (lVar == null || hp() == null) {
            return false;
        }
        List<Pair<String, String>> listL = lVar.l();
        if (listL == null || listL.size() <= 0) {
            return true;
        }
        Iterator<Pair<String, String>> it = listL.iterator();
        while (it.hasNext()) {
            File file = new File(hp(), (String) it.next().first);
            if (!file.exists() || !file.isFile()) {
                return false;
            }
        }
        return true;
    }

    public void l(List<hp.C0258hp> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<hp.C0258hp> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(hp(), com.byazt.ymw.a.l(it.next().hp()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public List<hp.C0258hp> hp(com.byazt.gr.hp hpVar, com.byazt.gr.hp hpVar2) {
        Map<String, com.byazt.gr.hp> mapHp = hpVar.hp();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (mapHp.size() == 0) {
            if (hpVar2 != null && hpVar2.hp().size() != 0) {
                Map<String, com.byazt.gr.hp> mapHp2 = hpVar2.hp();
                Iterator<String> it = mapHp2.keySet().iterator();
                while (it.hasNext()) {
                    com.byazt.gr.hp hpVar3 = mapHp2.get(it.next());
                    if (hpVar3 != null) {
                        arrayList.addAll(hpVar3.getResources());
                    }
                }
            }
        } else if (hpVar2 != null && hpVar2.hp().size() != 0) {
            Map<String, com.byazt.gr.hp> mapHp3 = hpVar2.hp();
            for (String str : mapHp.keySet()) {
                com.byazt.gr.hp hpVar4 = mapHp.get(str);
                com.byazt.gr.hp hpVar5 = mapHp3.get(str);
                if (hpVar5 == null && hpVar4 != null) {
                    arrayList2.addAll(hpVar4.getResources());
                } else if (hpVar4 == null && hpVar5 != null) {
                    arrayList.addAll(hpVar5.getResources());
                } else if (hpVar4 != null) {
                    for (hp.C0258hp c0258hp : hpVar4.getResources()) {
                        if (c0258hp != null && !hpVar5.getResources().contains(c0258hp) && c0258hp.l() != null && c0258hp.hp() != null) {
                            arrayList2.add(c0258hp);
                        }
                    }
                    for (hp.C0258hp c0258hp2 : hpVar5.getResources()) {
                        if (c0258hp2 != null && !hpVar4.getResources().contains(c0258hp2)) {
                            arrayList.add(c0258hp2);
                        }
                    }
                }
            }
        } else if (mapHp.size() != 0) {
            Iterator<String> it2 = mapHp.keySet().iterator();
            while (it2.hasNext()) {
                com.byazt.gr.hp hpVar6 = mapHp.get(it2.next());
                if (hpVar6 != null) {
                    arrayList2.addAll(hpVar6.getResources());
                }
            }
        }
        if (hp(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public static void l(File file, com.byazt.gr.hp hpVar, String str) {
        if (hpVar == null || file == null) {
            return;
        }
        try {
            new File(file, str).delete();
        } catch (Throwable unused) {
        }
        if (hpVar.getResources() != null) {
            Iterator<hp.C0258hp> it = hpVar.getResources().iterator();
            while (it.hasNext()) {
                try {
                    new File(file, com.byazt.ymw.a.l(it.next().hp())).delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    private boolean hp(List<hp.C0258hp> list, List<hp.C0258hp> list2) {
        for (hp.C0258hp c0258hp : list) {
            String strHp = c0258hp.hp();
            String strL = com.byazt.ymw.a.l(strHp);
            File file = new File(hp(), strL);
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
            com.byazt.ap.l lVarJ = com.byazt.ui.hp.hp().jx().j();
            lVarJ.hp(strHp);
            lVarJ.hp(hp().getAbsolutePath(), strL);
            com.byazt.oyr.l lVarHp = lVarJ.hp();
            list2.add(c0258hp);
            if (lVarHp == null || !lVarHp.q() || lVarHp.s() == null || !lVarHp.s().exists()) {
                jx(list2);
                return false;
            }
        }
        return true;
    }

    public boolean hp(String str) {
        String strL = com.byazt.ymw.a.l(str);
        File file = new File(hp().getAbsoluteFile(), strL + ".zip");
        com.byazt.ap.l lVarJ = com.byazt.ui.hp.hp().jx().j();
        lVarJ.hp(str);
        lVarJ.hp(file.getParent(), file.getName());
        com.byazt.oyr.l lVarHp = lVarJ.hp();
        if (lVarHp.q() && lVarHp.s() != null && lVarHp.s().exists()) {
            File fileS = lVarHp.s();
            try {
                dy.hp(fileS.getAbsolutePath(), file.getParent());
                if (!fileS.exists()) {
                    return true;
                }
                fileS.delete();
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void hp(int i2) {
        if (com.byazt.ui.hp.hp().j() != null) {
            com.byazt.ui.hp.hp().j().hp(i2);
        }
    }

    public static void hp(File file, com.byazt.gr.hp hpVar, String str) throws IOException {
        FileOutputStream fileOutputStream;
        if (hpVar == null) {
            return;
        }
        String strS = hpVar.s();
        if (TextUtils.isEmpty(strS)) {
            return;
        }
        File file2 = new File(file, str);
        File file3 = new File(file2 + ".tmp");
        if (file3.exists()) {
            file3.delete();
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file3);
            } catch (Throwable th) {
                th = th;
            }
            try {
                fileOutputStream.write(strS.getBytes("utf-8"));
                if (file2.exists()) {
                    file2.delete();
                }
                file3.renameTo(file2);
                fileOutputStream.close();
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                try {
                    u.hp("PlayComponentEngineCacheManager", "version save error3", th);
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                } catch (Throwable th3) {
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (IOException unused2) {
        }
    }

    private static boolean hp(Map<String, com.byazt.gr.hp> map, Map<String, com.byazt.gr.hp> map2) {
        if (map.size() != map2.size()) {
            return true;
        }
        for (String str : map2.keySet()) {
            com.byazt.gr.hp hpVar = map.get(str);
            if (hpVar == null) {
                return true;
            }
            com.byazt.gr.hp hpVar2 = map2.get(str);
            if (hpVar2 == null) {
                return false;
            }
            if (hp(hpVar.jx(), hpVar2.jx())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean hp(java.lang.String r6, java.lang.String r7) {
        /*
            java.lang.String r0 = "\\."
            java.lang.String[] r7 = r7.split(r0)
            java.lang.String[] r6 = r6.split(r0)
            int r0 = r7.length
            int r1 = r6.length
            int r0 = java.lang.Math.min(r0, r1)
            r1 = 0
            r2 = r1
        L12:
            if (r2 >= r0) goto L42
            r3 = r7[r2]
            int r3 = r3.length()
            r4 = r6[r2]
            int r4 = r4.length()
            int r3 = r3 - r4
            r4 = 1
            if (r3 != 0) goto L3f
            r3 = r7[r2]
            r5 = r6[r2]
            int r3 = r3.compareTo(r5)
            if (r3 <= 0) goto L2f
            return r4
        L2f:
            if (r3 >= 0) goto L32
            return r1
        L32:
            int r3 = r0 + (-1)
            if (r2 != r3) goto L3c
            int r7 = r7.length
            int r6 = r6.length
            if (r7 <= r6) goto L3b
            return r4
        L3b:
            return r1
        L3c:
            int r2 = r2 + 1
            goto L12
        L3f:
            if (r3 <= 0) goto L42
            return r4
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ir.jx.hp(java.lang.String, java.lang.String):boolean");
    }

    @Deprecated
    public static boolean hp(com.byazt.gr.hp hpVar, String str) {
        if (hpVar == null) {
            return true;
        }
        try {
            if (TextUtils.isEmpty(hpVar.jx())) {
                return true;
            }
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return hp(hpVar.jx(), str);
        } catch (Throwable unused) {
            return false;
        }
    }
}

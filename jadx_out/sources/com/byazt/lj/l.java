package com.byazt.lj;

import com.byazt.ymw.u;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@com.byazt.kj.hp(hp = {0, 1, 1763, 34})
/* loaded from: classes3.dex */
public class l extends hp {
    public int hp;
    public volatile boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public int f22622l;

    public l(int i2, int i3) {
        this.hp = 15;
        this.f22622l = 3;
        if (i2 <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.hp = i2;
        this.f22622l = i3;
    }

    private void j(List<File> list) {
        long jL;
        int size;
        boolean zHp;
        if (list != null) {
            try {
                if (list.size() != 0 && !(zHp = hp((jL = l(list)), (size = list.size())))) {
                    TreeMap treeMap = new TreeMap();
                    for (File file : list) {
                        treeMap.put(Long.valueOf(file.lastModified()), file);
                    }
                    for (Map.Entry entry : treeMap.entrySet()) {
                        if (entry != null && !zHp) {
                            u.l("splashLoadAd", "LRUDeleteFile deleting fileTime ".concat(String.valueOf(((Long) entry.getKey()).longValue())));
                            File file2 = (File) entry.getValue();
                            long length = file2.length();
                            if (file2.delete()) {
                                size--;
                                jL -= length;
                            } else {
                                u.l("splashLoadAd", "Error deleting file " + file2 + " for trimming cache");
                            }
                            if (hp(file2, jL, size)) {
                                return;
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void jx(List<File> list) {
        long jL = l(list);
        int size = list.size();
        if (hp(jL, size)) {
            return;
        }
        for (File file : list) {
            long length = file.length();
            if (file.delete()) {
                size--;
                jL -= length;
            }
            if (hp(file, jL, size)) {
                return;
            }
        }
    }

    @Override // com.byazt.lj.hp
    public boolean hp(long j2, int i2) {
        return i2 <= this.hp;
    }

    @Override // com.byazt.lj.hp
    public boolean hp(File file, long j2, int i2) {
        return i2 <= this.f22622l;
    }

    @Override // com.byazt.lj.hp
    public void hp(List<File> list) {
        if (this.jx) {
            j(list);
            this.jx = false;
        } else {
            jx(list);
        }
    }
}

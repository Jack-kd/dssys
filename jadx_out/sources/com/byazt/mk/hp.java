package com.byazt.mk;

import android.text.TextUtils;
import com.byazt.tw.a;
import com.byazt.um.zy;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 1210, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.um.hp {
    public String hp = "video_reward_full";

    /* renamed from: l, reason: collision with root package name */
    public String f23061l = "video_brand";
    public String jx = "video_splash";

    /* renamed from: j, reason: collision with root package name */
    public String f23060j = "video_default";

    /* renamed from: w, reason: collision with root package name */
    public String f23064w = null;

    /* renamed from: a, reason: collision with root package name */
    public String f23059a = null;
    public String eb = null;

    /* renamed from: s, reason: collision with root package name */
    public String f23063s = null;

    /* renamed from: q, reason: collision with root package name */
    public String f23062q = null;

    private static void hp(File[] fileArr, int i2, Set<String> set) {
        if (i2 >= 0 && fileArr != null) {
            try {
                if (fileArr.length > i2) {
                    List listAsList = Arrays.asList(fileArr);
                    Collections.sort(listAsList, new Comparator<File>() { // from class: com.byazt.mk.hp.1
                        @Override // java.util.Comparator
                        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                        public int compare(File file, File file2) {
                            long jLastModified = file2.lastModified() - file.lastModified();
                            if (jLastModified == 0) {
                                return 0;
                            }
                            return jLastModified < 0 ? -1 : 1;
                        }
                    });
                    while (i2 < listAsList.size()) {
                        File file = (File) listAsList.get(i2);
                        if (set != null && !set.contains(file.getAbsolutePath())) {
                            ((File) listAsList.get(i2)).delete();
                        }
                        i2++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private Set<String> l() {
        HashSet hashSet = new HashSet();
        for (com.byazt.aa.hp hpVar : com.byazt.aa.hp.hp.values()) {
            if (hpVar != null && hpVar.hp() != null) {
                a aVarHp = hpVar.hp();
                hashSet.add(com.byazt.xm.jx.l(aVarHp.getCacheParentDir(), aVarHp.getFileNameKey()).getAbsolutePath());
                hashSet.add(com.byazt.xm.jx.jx(aVarHp.getCacheParentDir(), aVarHp.getFileNameKey()).getAbsolutePath());
            }
        }
        for (com.byazt.va.l lVar : com.byazt.va.jx.hp.values()) {
            if (lVar != null && lVar.hp() != null) {
                zy zyVarHp = lVar.hp();
                hashSet.add(com.byazt.xm.jx.l(zyVarHp.getCacheParentDir(), zyVarHp.getFileNameKey()).getAbsolutePath());
                hashSet.add(com.byazt.xm.jx.jx(zyVarHp.getCacheParentDir(), zyVarHp.getFileNameKey()).getAbsolutePath());
            }
        }
        return hashSet;
    }

    @Override // com.byazt.um.hp
    public synchronized void clearCache() {
        try {
            Set<String> setL = null;
            for (com.byazt.ty.hp hpVar : hp()) {
                File[] fileArrHp = hpVar.hp();
                if (fileArrHp != null && fileArrHp.length >= hpVar.l()) {
                    if (setL == null) {
                        setL = l();
                    }
                    int iL = hpVar.l() - 2;
                    if (iL < 0) {
                        iL = 0;
                    }
                    hp(hpVar.hp(), iL, setL);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.um.hp
    public String getBrandCacheDir() {
        if (this.eb == null) {
            this.eb = this.f23064w + File.separator + this.f23061l;
            File file = new File(this.eb);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.eb;
    }

    @Override // com.byazt.um.hp
    public long getCachedSize(zy zyVar) {
        if (TextUtils.isEmpty(zyVar.getCacheParentDir()) || TextUtils.isEmpty(zyVar.getFileNameKey())) {
            return 0L;
        }
        return com.byazt.xm.jx.hp(zyVar.getCacheParentDir(), zyVar.getFileNameKey());
    }

    @Override // com.byazt.um.hp
    public String getOtherCacheDir() {
        if (this.f23062q == null) {
            this.f23062q = this.f23064w + File.separator + this.f23060j;
            File file = new File(this.f23062q);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f23062q;
    }

    @Override // com.byazt.um.hp
    public String getRewardFullCacheDir() {
        if (this.f23059a == null) {
            this.f23059a = this.f23064w + File.separator + this.hp;
            File file = new File(this.f23059a);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f23059a;
    }

    @Override // com.byazt.um.hp
    public String getSplashCacheDir() {
        if (this.f23063s == null) {
            this.f23063s = this.f23064w + File.separator + this.jx;
            File file = new File(this.f23063s);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f23063s;
    }

    @Override // com.byazt.um.hp
    public boolean isVideoCached(zy zyVar) {
        if (TextUtils.isEmpty(zyVar.getCacheParentDir()) || TextUtils.isEmpty(zyVar.getFileNameKey())) {
            return false;
        }
        return new File(zyVar.getCacheParentDir(), zyVar.getFileNameKey()).exists();
    }

    @Override // com.byazt.um.hp
    public void setRootDir(String str) {
        this.f23064w = str;
    }

    private List<com.byazt.ty.hp> hp() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.byazt.ty.hp(new File(getRewardFullCacheDir()).listFiles(), com.byazt.fx.hp.jx()));
        arrayList.add(new com.byazt.ty.hp(new File(getSplashCacheDir()).listFiles(), com.byazt.fx.hp.l()));
        arrayList.add(new com.byazt.ty.hp(new File(getBrandCacheDir()).listFiles(), com.byazt.fx.hp.j()));
        arrayList.add(new com.byazt.ty.hp(new File(getOtherCacheDir()).listFiles(), com.byazt.fx.hp.w()));
        return arrayList;
    }
}

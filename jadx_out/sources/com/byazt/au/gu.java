package com.byazt.au;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.fu.DownloadInfo;
import com.byazt.oy.DownloadStatus;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 273, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu implements com.byazt.yk.e {
    public final SparseArray<DownloadInfo> hp = new SparseArray<>();

    /* renamed from: l, reason: collision with root package name */
    public final SparseArray<List<com.byazt.fu.l>> f18271l = new SparseArray<>();
    public final SparseArray<Map<Long, com.byazt.rc.q>> jx = new SparseArray<>();

    public SparseArray<List<com.byazt.fu.l>> a() {
        return this.f18271l;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo e(int i2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setStatus(-7);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo eb(int i2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setStatus(2);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, int i3, int i4, int i5) {
    }

    @Override // com.byazt.yk.e
    public boolean j() {
        return false;
    }

    @Override // com.byazt.yk.e
    public synchronized Map<Long, com.byazt.rc.q> jl(int i2) {
        return this.jx.get(i2);
    }

    @Override // com.byazt.yk.e
    public synchronized List<DownloadInfo> jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.hp.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.hp.size(); i2++) {
            DownloadInfo downloadInfo = this.hp.get(this.hp.keyAt(i2));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && downloadInfo.getStatus() == -3) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.yk.e
    public synchronized List<com.byazt.rc.q> k(int i2) {
        Map<Long, com.byazt.rc.q> map = this.jx.get(i2);
        if (map != null && !map.isEmpty()) {
            return new ArrayList(map.values());
        }
        return null;
    }

    @Override // com.byazt.yk.e
    public void l(int i2, List<com.byazt.fu.l> list) {
    }

    @Override // com.byazt.yk.e
    public DownloadInfo q(int i2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setStatus(1);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo s(int i2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setStatus(5);
            downloadInfoL.setFirstDownload(false);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public boolean w() {
        return false;
    }

    @Override // com.byazt.yk.e
    public synchronized void zy(int i2) {
        this.jx.remove(i2);
    }

    @Override // com.byazt.yk.e
    public boolean a(int i2) {
        w(i2);
        j(i2);
        zy(i2);
        return true;
    }

    public SparseArray<DownloadInfo> hp() {
        return this.hp;
    }

    @Override // com.byazt.yk.e
    public synchronized List<DownloadInfo> j(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.hp.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.hp.size(); i2++) {
            DownloadInfo downloadInfo = this.hp.get(this.hp.keyAt(i2));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && DownloadStatus.isUnCompletedStatus(downloadInfo.getStatus())) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.yk.e
    public void l(com.byazt.fu.l lVar) {
    }

    @Override // com.byazt.yk.e
    public synchronized boolean w(int i2) {
        this.hp.remove(i2);
        return true;
    }

    @Override // com.byazt.yk.e
    public synchronized List<DownloadInfo> hp(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        try {
            int size = this.hp.size();
            for (int i2 = 0; i2 < size; i2++) {
                DownloadInfo downloadInfoValueAt = this.hp.valueAt(i2);
                if (str != null && str.equals(downloadInfoValueAt.getUrl())) {
                    arrayList.add(downloadInfoValueAt);
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    @Override // com.byazt.yk.e
    public synchronized DownloadInfo l(int i2) {
        DownloadInfo downloadInfo;
        try {
            downloadInfo = this.hp.get(i2);
        } catch (Exception unused) {
            downloadInfo = null;
        }
        return downloadInfo;
    }

    @Override // com.byazt.yk.e
    public synchronized List<DownloadInfo> l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.hp.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.hp.size(); i2++) {
            DownloadInfo downloadInfo = this.hp.get(this.hp.keyAt(i2));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && DownloadStatus.isFailedStatus(downloadInfo.getStatus())) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.yk.e
    public void hp(com.byazt.fu.l lVar) {
        int iGu = lVar.gu();
        List<com.byazt.fu.l> arrayList = this.f18271l.get(iGu);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f18271l.put(iGu, arrayList);
        }
        arrayList.add(lVar);
    }

    @Override // com.byazt.yk.e
    public synchronized void hp(int i2, int i3, long j2) {
        List<com.byazt.fu.l> listJx = jx(i2);
        if (listJx == null) {
            return;
        }
        for (com.byazt.fu.l lVar : listJx) {
            if (lVar != null && lVar.ec() == i3) {
                lVar.l(j2);
                return;
            }
        }
    }

    @Override // com.byazt.yk.e
    public synchronized List<com.byazt.fu.l> jx(int i2) {
        return this.f18271l.get(i2);
    }

    @Override // com.byazt.yk.e
    public synchronized void j(int i2) {
        this.f18271l.remove(i2);
    }

    @Override // com.byazt.yk.e
    public synchronized void jx() {
        this.hp.clear();
        this.f18271l.clear();
    }

    @Override // com.byazt.yk.e
    public DownloadInfo j(int i2, long j2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setCurBytes(j2, false);
            downloadInfoL.setStatus(-2);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo jx(int i2, long j2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setCurBytes(j2, false);
            downloadInfoL.setStatus(-3);
            downloadInfoL.setFirstDownload(false);
            downloadInfoL.setFirstSuccess(false);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public synchronized List<DownloadInfo> l() {
        if (this.hp.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.hp.size());
        for (int i2 = 0; i2 < this.hp.size(); i2++) {
            DownloadInfo downloadInfoValueAt = this.hp.valueAt(i2);
            if (downloadInfoValueAt != null) {
                arrayList.add(downloadInfoValueAt);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
    
        if (r0.eb() == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
    
        r3 = r0.eb().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        if (r3.hasNext() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        r5 = r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r5 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0047, code lost:
    
        if (r5.ec() != r4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0049, code lost:
    
        r5.l(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004d, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0051, code lost:
    
        return;
     */
    @Override // com.byazt.yk.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void hp(int r3, int r4, int r5, long r6) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.List r3 = r2.jx(r3)     // Catch: java.lang.Throwable -> L4e
            if (r3 != 0) goto L9
            monitor-exit(r2)
            return
        L9:
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L4e
        Ld:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L52
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> L4e
            com.byazt.fu.l r0 = (com.byazt.fu.l) r0     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto Ld
            int r1 = r0.ec()     // Catch: java.lang.Throwable -> L4e
            if (r1 != r5) goto Ld
            boolean r1 = r0.a()     // Catch: java.lang.Throwable -> L4e
            if (r1 != 0) goto Ld
            java.util.List r3 = r0.eb()     // Catch: java.lang.Throwable -> L4e
            if (r3 == 0) goto L52
            java.util.List r3 = r0.eb()     // Catch: java.lang.Throwable -> L4e
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L4e
        L35:
            boolean r5 = r3.hasNext()     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L50
            java.lang.Object r5 = r3.next()     // Catch: java.lang.Throwable -> L4e
            com.byazt.fu.l r5 = (com.byazt.fu.l) r5     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L35
            int r0 = r5.ec()     // Catch: java.lang.Throwable -> L4e
            if (r0 != r4) goto L35
            r5.l(r6)     // Catch: java.lang.Throwable -> L4e
            monitor-exit(r2)
            return
        L4e:
            r3 = move-exception
            goto L54
        L50:
            monitor-exit(r2)
            return
        L52:
            monitor-exit(r2)
            return
        L54:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4e
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.au.gu.hp(int, int, int, long):void");
    }

    @Override // com.byazt.yk.e
    public DownloadInfo l(int i2, long j2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setCurBytes(j2, false);
            downloadInfoL.setStatus(-1);
            downloadInfoL.setFirstDownload(false);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public void l(DownloadInfo downloadInfo) {
        hp(downloadInfo);
    }

    @Override // com.byazt.yk.e
    public synchronized DownloadInfo hp(int i2, int i3) {
        DownloadInfo downloadInfoL;
        downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setChunkCount(i3);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public synchronized boolean hp(DownloadInfo downloadInfo) {
        boolean z2 = true;
        if (downloadInfo == null) {
            return true;
        }
        if (this.hp.get(downloadInfo.getId()) == null) {
            z2 = false;
        }
        this.hp.put(downloadInfo.getId(), downloadInfo);
        return z2;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo hp(int i2, long j2, String str, String str2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setTotalBytes(j2);
            downloadInfoL.seteTag(str);
            if (TextUtils.isEmpty(downloadInfoL.getName()) && !TextUtils.isEmpty(str2)) {
                downloadInfoL.setName(str2);
            }
            downloadInfoL.setStatus(3);
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo hp(int i2, long j2) {
        DownloadInfo downloadInfoL = l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setCurBytes(j2, false);
            if (downloadInfoL.getStatus() != -3 && downloadInfoL.getStatus() != -2 && !DownloadStatus.isFailedStatus(downloadInfoL.getStatus()) && downloadInfoL.getStatus() != -4) {
                downloadInfoL.setStatus(4);
            }
        }
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public synchronized void hp(int i2, List<com.byazt.fu.l> list) {
        if (list == null) {
            return;
        }
        j(i2);
        for (com.byazt.fu.l lVar : list) {
            if (lVar != null) {
                hp(lVar);
                if (lVar.a()) {
                    Iterator<com.byazt.fu.l> it = lVar.eb().iterator();
                    while (it.hasNext()) {
                        hp(it.next());
                    }
                }
            }
        }
    }

    @Override // com.byazt.yk.e
    public synchronized boolean hp(int i2, Map<Long, com.byazt.rc.q> map) {
        this.jx.put(i2, map);
        return false;
    }
}

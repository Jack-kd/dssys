package com.byazt.rc;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.location.LocationRequestCompat;
import com.baidu.mobads.sdk.internal.aw;
import com.byazt.ez.w;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.ip.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu implements a, jx.hp {

    /* renamed from: b, reason: collision with root package name */
    public long f25133b;
    public long cx;

    /* renamed from: d, reason: collision with root package name */
    public int f25134d;
    public long di;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.fu.j f25135e;
    public com.byazt.fu.j gu;
    public final DownloadInfo hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ez.a f25136j;
    public final l jx;

    /* renamed from: l, reason: collision with root package name */
    public final k f25138l;

    /* renamed from: n, reason: collision with root package name */
    public final com.byazt.ez.w f25139n;

    /* renamed from: o, reason: collision with root package name */
    public float f25140o;
    public final com.byazt.xq.w sz;

    /* renamed from: u, reason: collision with root package name */
    public int f25143u;
    public volatile boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public final eb f25145w;
    public final boolean wv;
    public BaseException xs;
    public long zy;

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f25132a = false;
    public volatile boolean eb = false;

    /* renamed from: s, reason: collision with root package name */
    public final List<zy> f25142s = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public final List<xs> f25141q = new ArrayList();
    public volatile boolean jl = true;

    /* renamed from: k, reason: collision with root package name */
    public final LinkedList<q> f25137k = new LinkedList<>();

    /* renamed from: v, reason: collision with root package name */
    public final List<q> f25144v = new ArrayList();
    public final Object ec = new Object();
    public volatile boolean ns = false;
    public final w.l hq = new w.l() { // from class: com.byazt.rc.gu.1

        /* renamed from: l, reason: collision with root package name */
        public int f25146l;

        @Override // com.byazt.ez.w.l
        public long hp() {
            if (gu.this.f25132a || gu.this.eb) {
                return -1L;
            }
            synchronized (gu.this) {
                try {
                    if (gu.this.f25135e == null && gu.this.gu == null) {
                        long j2 = gu.this.cx;
                        if (j2 <= 0) {
                            return -1L;
                        }
                        this.f25146l++;
                        zy zyVarHp = gu.this.hp(false, System.currentTimeMillis(), j2);
                        if (zyVarHp == null) {
                            return j2;
                        }
                        gu.this.jx(zyVarHp);
                        zyVarHp.a();
                        return ((this.f25146l / gu.this.f25141q.size()) + 1) * j2;
                    }
                    return -1L;
                } finally {
                }
            }
        }
    };
    public final w.l ud = new w.l() { // from class: com.byazt.rc.gu.2
        @Override // com.byazt.ez.w.l
        public long hp() {
            return gu.this.vv();
        }
    };

    public gu(@NonNull DownloadInfo downloadInfo, @NonNull k kVar, com.byazt.ez.a aVar) {
        this.hp = downloadInfo;
        this.f25138l = kVar;
        l lVar = new l(kVar.j(), kVar.w());
        this.jx = lVar;
        this.f25136j = aVar;
        this.f25145w = new eb(downloadInfo, aVar, lVar);
        this.f25139n = new com.byazt.ez.w();
        this.sz = new com.byazt.xq.w();
        this.wv = com.byazt.jb.hp.hp(downloadInfo.getId()).l(aw.f11060a) == 1;
    }

    private xs e() {
        xs xsVar;
        synchronized (this) {
            try {
                int size = this.f25143u % this.f25141q.size();
                if (this.f25138l.l()) {
                    this.f25143u++;
                }
                xsVar = this.f25141q.get(size);
            } catch (Throwable th) {
                throw th;
            }
        }
        return xsVar;
    }

    private void gu() {
        com.byazt.nu.hp.jx("SegmentDispatcher", "onComplete");
        this.jx.jx();
        synchronized (this.ec) {
            this.ec.notify();
        }
    }

    private boolean jl() {
        Iterator<zy> it = this.f25142s.iterator();
        while (it.hasNext()) {
            if (!it.next().eb()) {
                return false;
            }
        }
        return true;
    }

    private boolean k() {
        long j2 = this.zy;
        if (j2 <= 0) {
            this.vv = false;
            return false;
        }
        synchronized (this) {
            try {
                long jHp = v.hp(this.f25144v);
                com.byazt.nu.hp.jx("SegmentDispatcher", "isAllContentDownloaded: firstOffset = ".concat(String.valueOf(jHp)));
                if (jHp >= j2) {
                    this.vv = true;
                    return true;
                }
                this.vv = false;
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void q() {
        List<String> backUpUrls;
        int iJl = this.f25138l.jl();
        if (iJl <= 0) {
            this.jl = false;
            w();
            return;
        }
        com.byazt.ip.jx jxVarHp = com.byazt.ip.jx.hp();
        jxVarHp.hp(this.hp.getUrl(), this, 2000L);
        if (iJl <= 2 || (backUpUrls = this.hp.getBackUpUrls()) == null) {
            return;
        }
        for (String str : backUpUrls) {
            if (!TextUtils.isEmpty(str)) {
                jxVarHp.hp(str, this, 2000L);
            }
        }
    }

    private void s() {
        if (this.f25133b > 0) {
            this.di = System.currentTimeMillis();
            this.f25139n.hp(this.ud, 0L);
        }
    }

    private q u() {
        q qVarXs;
        int i2 = 0;
        while (true) {
            qVarXs = xs();
            if (qVarXs != null) {
                zy zyVar = qVarXs.hp;
                if (zyVar == null) {
                    break;
                }
                if (qVarXs.e() < 2) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    l(jCurrentTimeMillis);
                    if (jCurrentTimeMillis - zyVar.f25171a > 2000 && hp(zyVar, jCurrentTimeMillis - 2000, jCurrentTimeMillis, 500L, 1.0d)) {
                        break;
                    }
                    int i3 = i2 + 1;
                    if (i2 > 2) {
                        break;
                    }
                    try {
                        synchronized (this) {
                            wait(500L);
                        }
                        i2 = i3;
                    } catch (InterruptedException unused) {
                        return null;
                    }
                } else {
                    return null;
                }
            } else {
                return null;
            }
        }
        return qVarXs;
    }

    private long v() {
        Iterator<zy> it = this.f25142s.iterator();
        long jL = 0;
        while (it.hasNext()) {
            jL += it.next().l();
        }
        return jL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long vv() {
        if (this.f25132a || this.eb) {
            return -1L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            try {
                l(jCurrentTimeMillis);
                long jGu = this.f25138l.gu();
                if (jGu > 0) {
                    long j2 = this.di;
                    if (j2 > 0 && jCurrentTimeMillis - j2 > jGu && hp(jCurrentTimeMillis, jGu)) {
                        this.di = jCurrentTimeMillis;
                        this.f25134d++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return 2000L;
    }

    private q xs() {
        int iE;
        q qVar = null;
        int i2 = Integer.MAX_VALUE;
        for (q qVar2 : this.f25144v) {
            if (hp(qVar2) > 0 && (iE = qVar2.e()) < i2) {
                qVar = qVar2;
                i2 = iE;
            }
        }
        return qVar;
    }

    private void zy() {
        int size;
        if (this.zy > 0 && (size = this.f25144v.size()) > 1) {
            int i2 = 0;
            ArrayList arrayList = null;
            int i3 = 0;
            for (int i4 = 1; i4 < size; i4++) {
                q qVar = this.f25144v.get(i3);
                q qVar2 = this.f25144v.get(i4);
                if (qVar.w() > qVar2.jx() && qVar2.hp() <= 0 && qVar2.hp == null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(qVar2);
                } else if (qVar2.w() > qVar.w()) {
                    i3++;
                }
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                while (i2 < size2) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    q qVar3 = (q) obj;
                    this.f25144v.remove(qVar3);
                    for (zy zyVar : this.f25142s) {
                        if (zyVar.hp == qVar3) {
                            zyVar.hp(true);
                        }
                    }
                }
            }
        }
    }

    private void a() {
        this.f25141q.add(new xs(this.hp.getUrl(), true));
        List<String> backUpUrls = this.hp.getBackUpUrls();
        if (backUpUrls != null) {
            for (String str : backUpUrls) {
                if (!TextUtils.isEmpty(str)) {
                    this.f25141q.add(new xs(str, false));
                }
            }
        }
        this.f25138l.hp(this.f25141q.size());
    }

    private void eb() {
        k kVar = this.f25138l;
        this.cx = kVar.e();
        this.f25133b = kVar.gu();
        this.f25140o = kVar.v();
        int i2 = this.f25134d;
        if (i2 > 0) {
            this.f25139n.hp(this.hq, i2);
        }
    }

    private void j() throws BaseException {
        try {
            this.f25145w.hp((j) this.jx);
        } catch (u unused) {
        } catch (BaseException e2) {
            com.byazt.nu.hp.w("SegmentDispatcher", "dispatchSegments: loopAndWrite e = ".concat(String.valueOf(e2)));
            hp(e2);
            throw e2;
        }
        if (this.eb || this.f25132a) {
            return;
        }
        try {
            synchronized (this) {
                while (!this.f25137k.isEmpty()) {
                    try {
                        q qVarPoll = this.f25137k.poll();
                        if (qVarPoll != null) {
                            hp(this.f25144v, qVarPoll, true);
                        }
                    } finally {
                    }
                }
                jx(this.f25144v);
            }
        } catch (Throwable unused2) {
        }
        if (!this.ns || this.xs == null) {
            if (this.hp.getCurBytes() != this.hp.getTotalBytes()) {
                com.byazt.no.hp.hp(this.hp, this.f25144v);
            }
            com.byazt.nu.hp.jx("SegmentDispatcher", "dispatchSegments::download finished");
        } else {
            com.byazt.nu.hp.w("SegmentDispatcher", "dispatchSegments: loopAndWrite  failedException = " + this.xs);
            throw this.xs;
        }
    }

    private void jx() throws InterruptedException, BaseException {
        BaseException baseException;
        synchronized (this.ec) {
            try {
                if (this.f25135e == null && this.gu == null) {
                    this.ec.wait();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.f25135e == null && this.gu == null && (baseException = this.xs) != null) {
            throw baseException;
        }
    }

    private void l(List<q> list) {
        long totalBytes = this.hp.getTotalBytes();
        this.zy = totalBytes;
        if (totalBytes <= 0) {
            this.zy = this.hp.getExpectFileLength();
            com.byazt.nu.hp.jx("SegmentDispatcher", "initSegments: getExpectFileLength = " + this.zy);
        }
        synchronized (this) {
            try {
                this.f25137k.clear();
                if (list == null || list.isEmpty()) {
                    hp((List<q>) this.f25137k, new q(0L, -1L), false);
                } else {
                    Iterator<q> it = list.iterator();
                    while (it.hasNext()) {
                        hp((List<q>) this.f25137k, new q(it.next()), false);
                    }
                    j(this.f25137k);
                    jx(this.f25137k);
                }
                com.byazt.nu.hp.jx("SegmentDispatcher", "initSegments: totalLength = " + this.zy);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void w() {
        int iHp;
        if (this.zy <= 0 || this.jl) {
            iHp = 1;
        } else {
            iHp = this.f25138l.hp();
            int iS = (int) (this.zy / this.f25138l.s());
            if (iHp > iS) {
                iHp = iS;
            }
        }
        com.byazt.nu.hp.jx("SegmentDispatcher", "dispatchReadThread: totalLength = " + this.zy + ", threadCount = " + iHp);
        int i2 = iHp > 0 ? iHp : 1;
        synchronized (this) {
            while (this.f25142s.size() < i2) {
                try {
                    if (!this.eb && !this.f25132a) {
                        hp(e());
                        if (this.f25138l.a()) {
                        }
                    }
                    return;
                } finally {
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hp(java.util.List<com.byazt.rc.q> r7) throws java.lang.InterruptedException, com.byazt.io.BaseException {
        /*
            r6 = this;
            java.lang.String r0 = "finally pause"
            java.lang.String r1 = "SegmentDispatcher"
            r6.a()     // Catch: java.lang.Throwable -> L54
            r6.l(r7)     // Catch: java.lang.Throwable -> L54
            r6.w()     // Catch: java.lang.Throwable -> L54
            r6.eb()     // Catch: java.lang.Throwable -> L54
            r6.q()     // Catch: java.lang.Throwable -> L54
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L54
            r6.jx()     // Catch: java.lang.Throwable -> L5f
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L54
            long r4 = r4 - r2
            com.byazt.fu.DownloadInfo r7 = r6.hp     // Catch: java.lang.Throwable -> L54
            r7.increaseAllConnectTime(r4)     // Catch: java.lang.Throwable -> L54
            com.byazt.fu.DownloadInfo r7 = r6.hp     // Catch: java.lang.Throwable -> L54
            r7.setFirstSpeedTime(r4)     // Catch: java.lang.Throwable -> L54
            boolean r7 = r6.eb     // Catch: java.lang.Throwable -> L54
            r2 = 1
            if (r7 != 0) goto L56
            boolean r7 = r6.f25132a     // Catch: java.lang.Throwable -> L54
            if (r7 == 0) goto L33
            goto L56
        L33:
            com.byazt.ez.a r7 = r6.f25136j     // Catch: java.lang.Throwable -> L54
            long r3 = r6.zy     // Catch: java.lang.Throwable -> L54
            r7.hp(r3)     // Catch: java.lang.Throwable -> L54
            r6.s()     // Catch: java.lang.Throwable -> L54
            r6.j()     // Catch: java.lang.Throwable -> L54
            boolean r7 = r6.eb
            if (r7 != 0) goto L4e
            boolean r7 = r6.f25132a
            if (r7 != 0) goto L4e
        L48:
            com.byazt.nu.hp.jx(r1, r0)
            r6.l()
        L4e:
            com.byazt.ez.w r7 = r6.f25139n
            r7.l()
            return r2
        L54:
            r7 = move-exception
            goto L70
        L56:
            boolean r7 = r6.eb
            if (r7 != 0) goto L4e
            boolean r7 = r6.f25132a
            if (r7 != 0) goto L4e
            goto L48
        L5f:
            r7 = move-exception
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L54
            long r4 = r4 - r2
            com.byazt.fu.DownloadInfo r2 = r6.hp     // Catch: java.lang.Throwable -> L54
            r2.increaseAllConnectTime(r4)     // Catch: java.lang.Throwable -> L54
            com.byazt.fu.DownloadInfo r2 = r6.hp     // Catch: java.lang.Throwable -> L54
            r2.setFirstSpeedTime(r4)     // Catch: java.lang.Throwable -> L54
            throw r7     // Catch: java.lang.Throwable -> L54
        L70:
            boolean r2 = r6.eb
            if (r2 != 0) goto L7e
            boolean r2 = r6.f25132a
            if (r2 != 0) goto L7e
            com.byazt.nu.hp.jx(r1, r0)
            r6.l()
        L7e:
            com.byazt.ez.w r0 = r6.f25139n
            r0.l()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rc.gu.hp(java.util.List):boolean");
    }

    private void jx(List<q> list) {
        long jL = v.l(list);
        com.byazt.nu.hp.jx("SegmentDispatcher", "checkDownloadBytes: getCurBytes = " + this.hp.getCurBytes() + ", totalBytes = " + this.hp.getTotalBytes() + ", downloadedBytes = " + jL);
        if (jL > this.hp.getTotalBytes() && this.hp.getTotalBytes() > 0) {
            jL = this.hp.getTotalBytes();
        }
        if (this.hp.getCurBytes() == this.hp.getTotalBytes() || this.hp.getCurBytes() == jL) {
            return;
        }
        this.hp.setCurBytes(jL);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
    
        if ((r19.w() - r22.w()) < (r13 / 2)) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void w(com.byazt.rc.zy r21, com.byazt.rc.q r22) throws com.byazt.rc.e {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rc.gu.w(com.byazt.rc.zy, com.byazt.rc.q):void");
    }

    private void l(String str, List<xs> list) {
        int iHp;
        if (this.wv) {
            Iterator<xs> it = list.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        int iJl = this.f25138l.jl();
        if ((iJl == 1 || iJl == 3) && (iHp = hp(str)) >= 0 && iHp < this.f25141q.size()) {
            this.f25141q.addAll(iHp + 1, list);
        } else {
            this.f25141q.addAll(list);
        }
    }

    private List<xs> jx(String str, List<InetAddress> list) {
        boolean z2;
        if (list != null && !list.isEmpty()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i2 = 0;
            for (InetAddress inetAddress : list) {
                if (inetAddress != null) {
                    String hostAddress = inetAddress.getHostAddress();
                    if (!TextUtils.isEmpty(hostAddress)) {
                        xs xsVar = new xs(str, hostAddress);
                        LinkedList linkedList = (LinkedList) linkedHashMap.get(xsVar.jx);
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            linkedHashMap.put(xsVar.jx, linkedList);
                        }
                        linkedList.add(xsVar);
                        i2++;
                    }
                }
            }
            if (i2 > 0) {
                ArrayList arrayList = new ArrayList();
                do {
                    Iterator it = linkedHashMap.entrySet().iterator();
                    z2 = false;
                    while (it.hasNext()) {
                        LinkedList linkedList2 = (LinkedList) ((Map.Entry) it.next()).getValue();
                        if (linkedList2 != null && !linkedList2.isEmpty()) {
                            arrayList.add((xs) linkedList2.pollFirst());
                            i2--;
                            z2 = true;
                        }
                    }
                    if (i2 <= 0) {
                        break;
                    }
                } while (z2);
                return arrayList;
            }
        }
        return null;
    }

    private void j(List<q> list) {
        long jJx = list.get(0).jx();
        if (jJx > 0) {
            hp(list, new q(0L, jJx - 1), true);
        }
        Iterator<q> it = list.iterator();
        if (it.hasNext()) {
            q next = it.next();
            while (it.hasNext()) {
                q next2 = it.next();
                if (next.a() < next2.jx() - 1) {
                    com.byazt.nu.hp.j("SegmentDispatcher", "fixSegment: segment = " + next + ", new end = " + (next2.jx() - 1));
                    next.jx(next2.jx() - 1);
                }
                next = next2;
            }
        }
        q qVar = list.get(list.size() - 1);
        long totalBytes = this.hp.getTotalBytes();
        if (totalBytes <= 0 || (qVar.a() != -1 && qVar.a() < totalBytes - 1)) {
            com.byazt.nu.hp.j("SegmentDispatcher", "fixSegment: last segment = " + qVar + ", new end=-1");
            qVar.jx(-1L);
        }
    }

    private q l(zy zyVar, xs xsVar) {
        while (!this.f25137k.isEmpty()) {
            q qVarPoll = this.f25137k.poll();
            if (qVarPoll != null) {
                hp(this.f25144v, qVarPoll, true);
                if (hp(qVarPoll) > 0 || this.zy <= 0) {
                    return qVarPoll;
                }
            }
        }
        zy();
        q qVarJx = jx(zyVar, xsVar);
        if (qVarJx != null && hp(qVarJx) > 0) {
            hp(this.f25144v, qVarJx, true);
            return qVarJx;
        }
        q qVarU = u();
        if (qVarU != null) {
            return qVarU;
        }
        return null;
    }

    @Override // com.byazt.ip.jx.hp
    public void hp(String str, List<InetAddress> list) {
        List<xs> listJx;
        if (this.eb || this.f25132a) {
            return;
        }
        try {
            listJx = jx(str, list);
        } catch (Throwable unused) {
            listJx = null;
        }
        synchronized (this) {
            if (listJx != null) {
                try {
                    l(str, listJx);
                } finally {
                }
            }
            this.jl = false;
            this.f25138l.hp(this.f25141q.size());
            w();
        }
    }

    @Override // com.byazt.rc.a
    public void l(zy zyVar, q qVar) throws BaseException {
        synchronized (this) {
            w(zyVar, qVar);
        }
    }

    @Override // com.byazt.rc.a
    public void jx(zy zyVar, q qVar) {
        synchronized (this) {
            try {
                if (qVar.hp == zyVar) {
                    com.byazt.nu.hp.jx("SegmentDispatcher", "unApplySegment ".concat(String.valueOf(qVar)));
                    qVar.j(zyVar.j());
                    qVar.hp = null;
                    zyVar.hp();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.rc.a
    public void l(zy zyVar) {
        com.byazt.nu.hp.jx("SegmentDispatcher", "onReaderExit: threadIndex = " + zyVar.jx);
        synchronized (this) {
            try {
                zyVar.jx(true);
                this.f25142s.remove(zyVar);
                zy();
                if (!this.f25142s.isEmpty()) {
                    if (k()) {
                        Iterator<zy> it = this.f25142s.iterator();
                        while (it.hasNext()) {
                            it.next().w();
                        }
                        gu();
                    }
                } else {
                    gu();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int hp(String str) {
        int size = this.f25141q.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (TextUtils.equals(this.f25141q.get(i2).hp, str)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.byazt.rc.a
    public w j(zy zyVar, q qVar) throws BaseException {
        w wVarHp;
        synchronized (this) {
            jl jlVar = new jl(this.hp, this.jx, qVar);
            this.f25145w.hp(jlVar);
            wVarHp = jlVar.hp();
        }
        return wVarHp;
    }

    private void hp(List<q> list, q qVar, boolean z2) {
        long jJx = qVar.jx();
        int size = list.size();
        int i2 = 0;
        while (i2 < size && jJx >= list.get(i2).jx()) {
            i2++;
        }
        list.add(i2, qVar);
        if (z2) {
            qVar.hp(size);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean jx(zy zyVar) {
        synchronized (this) {
            try {
                xs xsVarJ = j(zyVar);
                if (xsVarJ == null) {
                    return false;
                }
                return zyVar.hp(xsVarJ);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private xs j(zy zyVar) {
        xs next;
        Iterator<xs> it = this.f25141q.iterator();
        xs xsVar = null;
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next != zyVar.f25177l && !next.j()) {
                if (xsVar == null) {
                    xsVar = next;
                }
                if (next.hp() <= 0) {
                    break;
                }
            }
        }
        if (this.f25138l.l()) {
            if (next != null) {
                return next;
            }
            if (this.f25138l.jx()) {
                return null;
            }
        }
        return xsVar;
    }

    private void l(zy zyVar, q qVar, xs xsVar, com.byazt.fu.j jVar) throws com.byazt.io.q, BaseException {
        zy zyVar2 = qVar.hp;
        if (zyVar2 != null && zyVar2 != zyVar) {
            throw new e(1, "segment already has an owner");
        }
        if (zyVar.s() == qVar.w()) {
            if (!jVar.l()) {
                if (qVar.w() <= 0) {
                    com.byazt.nu.hp.w("SegmentDispatcher", "parseHttpResponse: segment.getCurrentOffsetRead = " + qVar.w());
                    if (!jVar.hp()) {
                        throw new com.byazt.io.l(1004, jVar.jx, "2: response code error : " + jVar.jx + " segment=" + qVar);
                    }
                } else {
                    throw new com.byazt.io.l(1004, jVar.jx, "1: response code error : " + jVar.jx + " segment=" + qVar);
                }
            }
            if (xsVar.f25166j) {
                if (this.f25135e == null) {
                    this.f25135e = jVar;
                    synchronized (this.ec) {
                        this.ec.notify();
                    }
                    com.byazt.ez.a aVar = this.f25136j;
                    if (aVar != null) {
                        aVar.hp(xsVar.hp, jVar.f20120l, qVar.w());
                    }
                    long jE = jVar.e();
                    if (jE > 0) {
                        for (q qVar2 : this.f25144v) {
                            if (qVar2.a() <= 0 || qVar2.a() > jE - 1) {
                                qVar2.jx(jE - 1);
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            hp(jVar);
            if (this.gu == null) {
                this.gu = jVar;
                if (this.hp.getTotalBytes() <= 0) {
                    long jE2 = jVar.e();
                    com.byazt.nu.hp.jx("SegmentDispatcher", "checkSegmentHttpResponse:len=" + jE2 + ",url=" + xsVar.hp);
                    this.hp.setTotalBytes(jE2);
                }
                synchronized (this.ec) {
                    this.ec.notify();
                }
                return;
            }
            return;
        }
        throw new e(5, "applySegment");
    }

    private void hp(xs xsVar) {
        zy zyVar = new zy(this.hp, this, this.jx, xsVar, this.f25142s.size());
        this.f25142s.add(zyVar);
        zyVar.hp(com.byazt.yk.jx.xs().submit(zyVar));
    }

    private q jx(zy zyVar, xs xsVar) {
        int size = this.f25144v.size();
        long j2 = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < size; i3++) {
            long jHp = hp(i3, size);
            if (jHp > j2) {
                i2 = i3;
                j2 = jHp;
            }
        }
        long jEb = this.f25138l.eb();
        long jQ = this.f25138l.q();
        if (i2 < 0 || j2 <= jEb) {
            return null;
        }
        q qVar = this.f25144v.get(i2);
        int iK = this.f25144v.size() < this.f25142s.size() ? 2 : this.f25138l.k();
        if (iK == 1) {
            zy zyVar2 = qVar.hp;
            if (zyVar2 != null) {
                long j3 = jQ;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j4 = jCurrentTimeMillis - 4000;
                long jHp2 = zyVar2.hp(j4, jCurrentTimeMillis);
                long jHp3 = zyVar.hp(j4, jCurrentTimeMillis);
                float f2 = (jHp2 <= 0 || jHp3 <= 0) ? -1.0f : jHp3 / (jHp2 + jHp3);
                if (f2 == -1.0f) {
                    long jL = zyVar2.l();
                    long jL2 = zyVar.l();
                    if (jL > 0 && jL2 > 0) {
                        f2 = jL2 / (jL + jL2);
                    }
                }
                if (f2 > 0.0f) {
                    float f3 = f2 * 0.9f;
                    long j5 = (long) (j2 * f3);
                    if (j5 < jEb) {
                        j5 = jEb;
                    }
                    if (j3 <= 0 || j5 <= j3) {
                        j3 = j5;
                    }
                    long j6 = jEb / 2;
                    long j7 = j2 - j6;
                    if (j3 > j7) {
                        j6 = j7;
                    } else if (j3 >= j6) {
                        j6 = j3;
                    }
                    q qVar2 = new q(qVar.w() + (j2 - j6), qVar.a());
                    com.byazt.nu.hp.jx("SegmentDispatcher", "obtainSegment: parent = " + qVar + ", child = " + qVar2 + ", maxRemainBytes = " + j2 + ", childLength = " + j6 + ", ratio = " + f3 + ", threadIndex = " + zyVar.jx);
                    return qVar2;
                }
            }
        } else if (iK == 2) {
            long curBytes = this.zy - this.hp.getCurBytes();
            float fJ = j(zyVar, xsVar);
            long j8 = (long) (curBytes * fJ);
            if (j8 < jEb) {
                j8 = jEb;
            }
            if (jQ > 0 && j8 > jQ) {
                j8 = jQ;
            }
            long j9 = jEb / 2;
            long j10 = j2 - j9;
            if (j8 > j10) {
                j8 = j10;
            } else if (j8 < j9) {
                j8 = j9;
            }
            q qVar3 = new q(qVar.w() + (j2 - j8), qVar.a());
            com.byazt.nu.hp.jx("SegmentDispatcher", "obtainSegment: parent = " + qVar + ", child = " + qVar3 + ", maxRemainBytes = " + j2 + ", childLength = " + j8 + ", ratio = " + fJ + ", threadIndex = " + zyVar.jx);
            return qVar3;
        }
        q qVar4 = new q(qVar.w() + (j2 / 2), qVar.a());
        com.byazt.nu.hp.jx("SegmentDispatcher", "obtainSegment: parent = " + qVar + ",child = " + qVar4);
        return qVar4;
    }

    private float j(zy zyVar, xs xsVar) {
        long jL = zyVar.l();
        int size = this.f25142s.size();
        if (size <= 1) {
            size = this.f25138l.hp();
        }
        float f2 = 1.0f;
        if (jL <= 0) {
            float fZy = this.f25138l.zy();
            if (fZy <= 0.0f || fZy >= 1.0f) {
                fZy = 1.0f / size;
            }
            if (zyVar.jx == 0) {
                return fZy;
            }
            if (size > 1) {
                f2 = 1.0f - fZy;
                size--;
            }
        } else {
            long jV = v();
            if (jV > jL) {
                return jL / jV;
            }
        }
        return f2 / size;
    }

    @Override // com.byazt.rc.a
    public void hp(zy zyVar) {
        if (this.wv) {
            com.byazt.nu.hp.jx("SegmentDispatcher", "onReaderRun, threadIndex = " + zyVar.jx);
        }
    }

    @Override // com.byazt.rc.a
    public q hp(zy zyVar, xs xsVar) {
        if (this.f25132a || this.eb) {
            return null;
        }
        synchronized (this) {
            try {
                q qVarL = l(zyVar, xsVar);
                if (qVarL != null) {
                    qVarL.s();
                    if (qVarL.e() > 1) {
                        return new q(qVarL);
                    }
                }
                return qVarL;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.rc.a
    public void hp(zy zyVar, q qVar) {
        synchronized (this) {
            qVar.q();
        }
    }

    @Override // com.byazt.rc.a
    public void hp(zy zyVar, q qVar, xs xsVar, com.byazt.fu.j jVar) throws com.byazt.io.q, BaseException {
        synchronized (this) {
            try {
                if (!this.f25132a && !this.eb) {
                    l(zyVar, qVar, xsVar, jVar);
                    zyVar.l(false);
                    if (this.zy <= 0) {
                        long totalBytes = this.hp.getTotalBytes();
                        this.zy = totalBytes;
                        if (totalBytes <= 0) {
                            this.zy = jVar.e();
                        }
                        w();
                    } else if (this.f25138l.a()) {
                        w();
                    }
                } else {
                    throw new u("connected");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.rc.a
    public void hp(zy zyVar, xs xsVar, q qVar, BaseException baseException, int i2, int i3) {
        boolean zL = com.byazt.xq.a.l(baseException);
        int errorCode = baseException.getErrorCode();
        if (errorCode == 1047 || errorCode == 1074 || errorCode == 1055) {
            zL = true;
        }
        if (zL || i2 >= i3) {
            jx(zyVar);
        }
    }

    @Override // com.byazt.rc.a
    public void hp(zy zyVar, xs xsVar, q qVar, BaseException baseException) {
        synchronized (this) {
            try {
                com.byazt.nu.hp.w("SegmentDispatcher", "onSegmentFailed: segment = " + qVar + ", e = " + baseException);
                zyVar.l(true);
                if (zyVar.jx == 0) {
                    this.xs = baseException;
                }
                if (jl()) {
                    if (this.xs == null) {
                        this.xs = baseException;
                    }
                    this.ns = true;
                    hp(this.xs);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void l() {
        com.byazt.nu.hp.jx("SegmentDispatcher", "pause1");
        this.eb = true;
        synchronized (this) {
            try {
                Iterator<zy> it = this.f25142s.iterator();
                while (it.hasNext()) {
                    it.next().w();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f25145w.l();
        this.jx.jx();
    }

    private void l(long j2) {
        this.sz.hp(this.hp.getCurBytes(), j2);
        Iterator<zy> it = this.f25142s.iterator();
        while (it.hasNext()) {
            it.next().l(j2);
        }
    }

    private void hp(BaseException baseException) {
        com.byazt.nu.hp.w("SegmentDispatcher", "onError, e = ".concat(String.valueOf(baseException)));
        this.xs = baseException;
        this.jx.jx();
        synchronized (this) {
            try {
                Iterator<zy> it = this.f25142s.iterator();
                while (it.hasNext()) {
                    it.next().w();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void hp(com.byazt.fu.j jVar) throws BaseException {
        com.byazt.fu.j jVar2 = this.f25135e;
        if (jVar2 == null && (jVar2 = this.gu) == null) {
            return;
        }
        long jE = jVar.e();
        long jE2 = jVar2.e();
        if (jE != jE2) {
            String str = "total len not equals,len=" + jE + ",sLen=" + jE2 + ",code=" + jVar.jx + ",sCode=" + jVar2.jx + ",range=" + jVar.w() + ",sRange = " + jVar2.w() + ",url = " + jVar.hp + ",sUrl=" + jVar2.hp;
            com.byazt.nu.hp.w("SegmentDispatcher", str);
            if (jE > 0 && jE2 > 0) {
                throw new BaseException(1074, str);
            }
        }
        String strJx = jVar.jx();
        String strJx2 = jVar2.jx();
        if (TextUtils.equals(strJx, strJx2)) {
            return;
        }
        String str2 = "etag not equals with main url, etag = " + strJx + ", mainEtag = " + strJx2;
        com.byazt.nu.hp.w("SegmentDispatcher", str2);
        if (!TextUtils.isEmpty(strJx) && !TextUtils.isEmpty(strJx2) && !strJx.equalsIgnoreCase(strJx2)) {
            throw new BaseException(1074, str2);
        }
    }

    public void hp() {
        com.byazt.nu.hp.jx("SegmentDispatcher", "cancel");
        this.f25132a = true;
        synchronized (this) {
            try {
                Iterator<zy> it = this.f25142s.iterator();
                while (it.hasNext()) {
                    it.next().w();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f25145w.hp();
        this.jx.jx();
    }

    private int hp(long j2) {
        int size = this.f25144v.size();
        for (int i2 = 0; i2 < size; i2++) {
            q qVar = this.f25144v.get(i2);
            if (qVar.jx() == j2) {
                return i2;
            }
            if (qVar.jx() > j2) {
                return -1;
            }
        }
        return -1;
    }

    private long hp(int i2, int i3) {
        q qVar = this.f25144v.get(i2);
        long jHp = hp(qVar);
        int i4 = i2 + 1;
        q qVar2 = i4 < i3 ? this.f25144v.get(i4) : null;
        if (qVar2 == null) {
            return jHp;
        }
        long jJx = qVar2.jx() - qVar.w();
        return jHp == -1 ? jJx : Math.min(jHp, jJx);
    }

    private long hp(q qVar) {
        long jL = qVar.l();
        if (jL == -1) {
            long j2 = this.zy;
            if (j2 > 0) {
                return j2 - qVar.w();
            }
        }
        return jL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zy hp(boolean z2, long j2, long j3) {
        zy zyVar = null;
        for (zy zyVar2 : this.f25142s) {
            if (zyVar2.jx != 0 || z2) {
                if (zyVar2.f25175j > 0 && zyVar2.f25186w <= 0 && j2 - zyVar2.f25175j > j3 && (zyVar == null || zyVar2.f25175j < zyVar.f25175j)) {
                    zyVar = zyVar2;
                }
            }
        }
        return zyVar;
    }

    private boolean hp(zy zyVar, long j2, long j3, long j4, double d2) {
        if (zyVar.f25171a <= 0) {
            return false;
        }
        long jL = this.sz.l(j2, j3);
        int size = this.f25142s.size();
        if (size > 0) {
            jL /= size;
        }
        long jHp = zyVar.hp(j2, j3);
        return jHp < j4 || ((double) jHp) < ((double) jL) * d2;
    }

    private boolean hp(long j2, long j3) {
        long j4 = j2 - j3;
        long jL = this.sz.l(j4, j2);
        int size = this.f25142s.size();
        if (size > 0) {
            jL /= size;
        }
        zy zyVarHp = hp(j4, j2, (long) Math.max(10.0f, jL * this.f25140o), size / 2);
        if (zyVarHp != null) {
            jx(zyVarHp);
            com.byazt.nu.hp.j("SegmentDispatcher", "handlePoorReadThread: reconnect for poor speed, threadIndex = " + zyVarHp.jx);
            zyVarHp.a();
            return true;
        }
        zy zyVarHp2 = hp(true, j2, j3);
        if (zyVarHp2 == null) {
            return false;
        }
        jx(zyVarHp2);
        com.byazt.nu.hp.j("SegmentDispatcher", "handlePoorReadThread: reconnect for connect timeout, threadIndex = " + zyVarHp2.jx);
        zyVarHp2.a();
        return true;
    }

    private zy hp(long j2, long j3, long j4, int i2) {
        long j5 = LocationRequestCompat.PASSIVE_INTERVAL;
        int i3 = 0;
        zy zyVar = null;
        for (zy zyVar2 : this.f25142s) {
            if (zyVar2.f25171a > 0) {
                i3++;
                if (zyVar2.f25171a < j2) {
                    long jHp = zyVar2.hp(j2, j3);
                    if (jHp >= 0 && jHp < j5) {
                        zyVar = zyVar2;
                        j5 = jHp;
                    }
                }
            }
        }
        if (zyVar == null || i3 < i2 || j5 >= j4) {
            return null;
        }
        com.byazt.nu.hp.jx("SegmentDispatcher", "findPoorReadThread: ----------- minSpeed = " + j5 + ", threadIndex = " + zyVar.jx);
        return zyVar;
    }
}

package com.byazt.rc;

import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, 94})
/* loaded from: classes3.dex */
public class eb {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.ez.a f25122a;
    public final jx eb;
    public final DownloadInfo jx;

    /* renamed from: k, reason: collision with root package name */
    public final long f25125k;

    /* renamed from: s, reason: collision with root package name */
    public BaseException f25128s;

    /* renamed from: u, reason: collision with root package name */
    public final boolean f25129u;

    /* renamed from: v, reason: collision with root package name */
    public final long f25130v;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.jb.hp f25131w;
    public long xs;
    public final boolean zy;
    public final List<jl> hp = new LinkedList();

    /* renamed from: l, reason: collision with root package name */
    public final List<jl> f25126l = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public volatile boolean f25127q = false;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f25123e = false;
    public volatile boolean gu = false;
    public volatile long vv = 0;
    public volatile long ec = 0;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.yk.e f25124j = com.byazt.yk.jx.di();
    public final com.byazt.ei.hp jl = com.byazt.ei.hp.hp();

    public eb(DownloadInfo downloadInfo, com.byazt.ez.a aVar, jx jxVar) {
        this.jx = downloadInfo;
        this.f25122a = aVar;
        this.eb = jxVar;
        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId());
        this.f25131w = hpVarHp;
        boolean z2 = hpVarHp.hp("sync_strategy", 0) == 1;
        this.zy = z2;
        if (z2) {
            long jHp = hpVarHp.hp("sync_interval_ms_fg", 5000);
            long jHp2 = hpVarHp.hp("sync_interval_ms_bg", 1000);
            this.f25125k = Math.max(jHp, 500L);
            this.f25130v = Math.max(jHp2, 500L);
        } else {
            this.f25125k = 0L;
            this.f25130v = 0L;
        }
        this.f25129u = hpVarHp.l("monitor_rw") == 1;
    }

    private boolean hp(long j2, long j3) {
        return j2 > 65536 && j3 > 500;
    }

    private void jx() throws IOException {
        boolean z2;
        boolean z3 = this.f25129u;
        long jNanoTime = z3 ? System.nanoTime() : 0L;
        DownloadInfo downloadInfo = this.jx;
        com.byazt.yk.e eVar = this.f25124j;
        List<jl> list = this.hp;
        List<jl> list2 = this.f25126l;
        Map<Long, q> mapJl = eVar.jl(downloadInfo.getId());
        if (mapJl == null) {
            mapJl = new HashMap<>(4);
        }
        synchronized (this) {
            try {
                hp(list);
                try {
                    l(list);
                    z2 = true;
                } catch (Throwable unused) {
                    z2 = false;
                }
                hp(list, mapJl);
                if (list2.size() > 0) {
                    jx(list2);
                    list.removeAll(list2);
                    list2.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            downloadInfo.updateRealDownloadTime(true);
            eVar.hp(downloadInfo.getId(), mapJl);
            eVar.hp(downloadInfo);
            this.vv = downloadInfo.getCurBytes();
        }
        if (z3) {
            this.xs += System.nanoTime() - jNanoTime;
        }
    }

    private void l(List<jl> list) throws IOException {
        Iterator<jl> it = list.iterator();
        while (it.hasNext()) {
            it.next().jx();
        }
    }

    public void hp(jl jlVar) {
        synchronized (this) {
            this.hp.add(jlVar);
        }
    }

    public void l() {
        this.f25123e = true;
        this.f25127q = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00bf, code lost:
    
        if (r2 <= 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c2, code lost:
    
        r3.l(r2);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0207 A[Catch: all -> 0x0297, TryCatch #52 {all -> 0x0297, blocks: (B:160:0x0203, B:162:0x0207, B:165:0x020f, B:166:0x0221), top: B:364:0x0203 }] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x032a A[Catch: all -> 0x02a3, TryCatch #2 {all -> 0x02a3, blocks: (B:202:0x02a0, B:203:0x02a2, B:238:0x0320, B:240:0x032a, B:242:0x032e, B:274:0x03a5, B:275:0x03b9, B:166:0x0221), top: B:321:0x0024, inners: #41 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0055 A[Catch: all -> 0x0033, BaseException -> 0x003e, u -> 0x0047, TRY_ENTER, TRY_LEAVE, TryCatch #35 {u -> 0x0047, BaseException -> 0x003e, all -> 0x0033, blocks: (B:11:0x002e, B:26:0x0055), top: B:381:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0354 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:326:0x00e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:328:0x02af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x03e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:346:0x03d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0248 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:362:0x02c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0085  */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.byazt.fu.DownloadInfo] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.rc.j r29) throws com.byazt.io.BaseException {
        /*
            Method dump skipped, instructions count: 1079
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rc.eb.hp(com.byazt.rc.j):void");
    }

    private void jx(List<jl> list) {
        Iterator<jl> it = list.iterator();
        while (it.hasNext()) {
            it.next().j();
        }
    }

    private void hp(long j2, boolean z2) throws IOException {
        long j3 = j2 - this.ec;
        if (this.zy) {
            if (j3 <= (this.jl.l() ? this.f25125k : this.f25130v)) {
                return;
            }
        } else {
            long curBytes = this.jx.getCurBytes() - this.vv;
            if (!z2 && !hp(curBytes, j3)) {
                return;
            }
        }
        jx();
        this.ec = j2;
    }

    private void hp(w wVar) {
        synchronized (this) {
            this.f25126l.add((jl) wVar);
        }
    }

    private void hp(List<jl> list) throws IOException {
        Iterator<jl> it = list.iterator();
        while (it.hasNext()) {
            it.next().l();
        }
    }

    private void hp(List<jl> list, Map<Long, q> map) {
        Iterator<jl> it = list.iterator();
        while (it.hasNext()) {
            q qVarW = it.next().w();
            q qVar = map.get(Long.valueOf(qVarW.jx()));
            if (qVar == null) {
                map.put(Long.valueOf(qVarW.jx()), new q(qVarW));
            } else {
                qVar.hp(qVarW.j());
                qVar.jx(qVarW.a());
            }
        }
    }

    public void hp() {
        this.gu = true;
        this.f25127q = true;
    }
}

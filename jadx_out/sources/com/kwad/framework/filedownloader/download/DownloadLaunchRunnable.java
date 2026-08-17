package com.kwad.framework.filedownloader.download;

import com.kuaishou.weapon.p0.g;
import com.kwad.framework.filedownloader.download.c;
import com.kwad.framework.filedownloader.download.e;
import com.kwad.framework.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.kwad.framework.filedownloader.exception.FileDownloadHttpException;
import com.kwad.framework.filedownloader.exception.FileDownloadNetworkPolicyException;
import com.kwad.framework.filedownloader.exception.FileDownloadOutOfSpaceException;
import com.kwad.framework.filedownloader.y;
import com.kwad.sdk.crash.utils.h;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public final class DownloadLaunchRunnable implements f, Runnable {
    private static final ThreadPoolExecutor aBt = com.kwad.framework.filedownloader.f.b.cj("ConnectionBlock");
    private String aBA;
    private long aBB;
    private long aBC;
    private long aBD;
    private long aBE;
    private final com.kwad.framework.filedownloader.b.a aBd;
    private final d aBg;
    private final int aBh;
    private final com.kwad.framework.filedownloader.d.c aBi;
    private final com.kwad.framework.filedownloader.d.b aBj;
    private final boolean aBk;
    private final boolean aBl;
    private final y aBm;
    private boolean aBn;
    int aBo;
    private final boolean aBp;
    private final ArrayList<c> aBq;
    private e aBr;
    private boolean aBs;
    private boolean aBu;
    private boolean aBv;
    private boolean aBw;
    private final AtomicBoolean aBx;
    private volatile boolean aBy;
    private volatile Exception aBz;
    private volatile boolean nJ;

    public class DiscardSafely extends Throwable {
        private static final long serialVersionUID = 4243896780616180062L;

        public DiscardSafely() {
        }
    }

    public class RetryDirectly extends Throwable {
        private static final long serialVersionUID = -4127585119566978768L;

        public RetryDirectly() {
        }
    }

    public static class a {
        private com.kwad.framework.filedownloader.d.b aAP;
        private Integer aBF;
        private Integer aBG;
        private Boolean aBH;
        private Boolean aBI;
        private Integer aBJ;
        private com.kwad.framework.filedownloader.d.c aBi;
        private y aBm;

        public final DownloadLaunchRunnable Cq() {
            if (this.aBi == null || this.aBm == null || this.aBF == null || this.aBG == null || this.aBH == null || this.aBI == null || this.aBJ == null) {
                throw new IllegalArgumentException();
            }
            return new DownloadLaunchRunnable(this.aBi, this.aAP, this.aBm, this.aBF.intValue(), this.aBG.intValue(), this.aBH.booleanValue(), this.aBI.booleanValue(), this.aBJ.intValue(), (byte) 0);
        }

        public final a a(y yVar) {
            this.aBm = yVar;
            return this;
        }

        public final a b(com.kwad.framework.filedownloader.d.b bVar) {
            this.aAP = bVar;
            return this;
        }

        public final a c(Boolean bool) {
            this.aBI = bool;
            return this;
        }

        public final a e(com.kwad.framework.filedownloader.d.c cVar) {
            this.aBi = cVar;
            return this;
        }

        public final a f(Integer num) {
            this.aBF = num;
            return this;
        }

        public final a g(Integer num) {
            this.aBG = num;
            return this;
        }

        public final a h(Integer num) {
            this.aBJ = num;
            return this;
        }

        public final a b(Boolean bool) {
            this.aBH = bool;
            return this;
        }
    }

    public /* synthetic */ DownloadLaunchRunnable(com.kwad.framework.filedownloader.d.c cVar, com.kwad.framework.filedownloader.d.b bVar, y yVar, int i2, int i3, boolean z2, boolean z3, int i4, byte b3) {
        this(cVar, bVar, yVar, i2, i3, z2, z3, i4);
    }

    private boolean Cl() {
        return (!this.aBu || this.aBi.Da() > 1) && this.aBv && this.aBp && !this.aBw;
    }

    private void Cn() {
        if (this.aBl && !com.kwad.framework.filedownloader.f.f.cq(g.f31160b)) {
            throw new FileDownloadGiveUpRetryException(com.kwad.framework.filedownloader.f.f.c("Task[%d] can't start the download runnable, because this task require wifi, but user application nor current process has %s, so we can't check whether the network type connection.", Integer.valueOf(this.aBi.getId()), g.f31160b));
        }
        if (this.aBl && com.kwad.framework.filedownloader.f.f.DE()) {
            throw new FileDownloadNetworkPolicyException();
        }
    }

    private void Co() throws RetryDirectly, DiscardSafely {
        int id = this.aBi.getId();
        if (this.aBi.AB()) {
            String targetFilePath = this.aBi.getTargetFilePath();
            int iD = com.kwad.framework.filedownloader.f.f.D(this.aBi.getUrl(), targetFilePath);
            if (com.kwad.framework.filedownloader.f.c.a(id, targetFilePath, this.aBk, false)) {
                this.aBd.cF(id);
                this.aBd.cE(id);
                throw new DiscardSafely();
            }
            com.kwad.framework.filedownloader.d.c cVarCC = this.aBd.cC(iD);
            if (cVarCC != null) {
                if (com.kwad.framework.filedownloader.f.c.a(id, cVarCC, this.aBm, false)) {
                    this.aBd.cF(id);
                    this.aBd.cE(id);
                    throw new DiscardSafely();
                }
                List<com.kwad.framework.filedownloader.d.a> listCD = this.aBd.cD(iD);
                this.aBd.cF(iD);
                this.aBd.cE(iD);
                com.kwad.framework.filedownloader.f.f.cu(this.aBi.getTargetFilePath());
                if (com.kwad.framework.filedownloader.f.f.b(iD, cVarCC)) {
                    this.aBi.af(cVarCC.CX());
                    this.aBi.ah(cVarCC.getTotal());
                    this.aBi.cg(cVarCC.CY());
                    this.aBi.cV(cVarCC.Da());
                    this.aBd.b(this.aBi);
                    if (listCD != null) {
                        for (com.kwad.framework.filedownloader.d.a aVar : listCD) {
                            aVar.setId(id);
                            this.aBd.a(aVar);
                        }
                    }
                    throw new RetryDirectly();
                }
            }
            if (com.kwad.framework.filedownloader.f.c.a(id, this.aBi.CX(), this.aBi.Cp(), targetFilePath, this.aBm)) {
                this.aBd.cF(id);
                this.aBd.cE(id);
                throw new DiscardSafely();
            }
        }
    }

    private void a(Map<String, List<String>> map, ConnectTask connectTask, com.kwad.framework.filedownloader.a.b bVar) throws FileDownloadHttpException, RetryDirectly {
        int id = this.aBi.getId();
        int responseCode = bVar.getResponseCode();
        this.aBv = responseCode == 206 || responseCode == 1;
        boolean z2 = responseCode == 200 || responseCode == 201 || responseCode == 0;
        String strCY = this.aBi.CY();
        String strA = com.kwad.framework.filedownloader.f.f.a(id, bVar);
        if (responseCode != 412 && ((strCY == null || strCY.equals(strA) || !(z2 || this.aBv)) && (!(responseCode == 201 && connectTask.BW()) && (responseCode != 416 || this.aBi.CX() <= 0)))) {
            this.aBA = connectTask.BX();
            if (!this.aBv && !z2) {
                throw new FileDownloadHttpException(responseCode, map, bVar.BP());
            }
            long jB = com.kwad.framework.filedownloader.f.f.b(id, bVar);
            String strA2 = this.aBi.AB() ? com.kwad.framework.filedownloader.f.f.a(bVar, this.aBi.getUrl()) : null;
            boolean z3 = jB == -1;
            this.aBw = z3;
            if (!z3) {
                jB += this.aBi.CX();
            }
            this.aBg.a(this.aBu && this.aBv, jB, strA, strA2);
            return;
        }
        if (this.aBu) {
            com.kwad.framework.filedownloader.f.d.d(this, "there is precondition failed on this request[%d] with old etag[%s]、new etag[%s]、response requestHttpCode is %d", Integer.valueOf(id), strCY, strA, Integer.valueOf(responseCode));
        }
        this.aBd.cE(this.aBi.getId());
        com.kwad.framework.filedownloader.f.f.E(this.aBi.getTargetFilePath(), this.aBi.Cp());
        this.aBu = false;
        if (strCY != null && strCY.equals(strA)) {
            com.kwad.framework.filedownloader.f.d.d(this, "the old etag[%s] is the same to the new etag[%s], but the response status requestHttpCode is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!", strCY, strA, Integer.valueOf(responseCode), Integer.valueOf(id));
            strA = null;
        }
        this.aBi.af(0L);
        this.aBi.ah(0L);
        this.aBi.cg(strA);
        this.aBi.Db();
        this.aBd.a(id, this.aBi.CY(), this.aBi.CX(), this.aBi.getTotal(), this.aBi.Da());
        throw new RetryDirectly();
    }

    private void b(List<com.kwad.framework.filedownloader.d.a> list, long j2) throws InterruptedException {
        int id = this.aBi.getId();
        String strCY = this.aBi.CY();
        String url = this.aBA;
        if (url == null) {
            url = this.aBi.getUrl();
        }
        String strCp = this.aBi.Cp();
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]", Integer.valueOf(list.size()), Integer.valueOf(id), Long.valueOf(j2));
        }
        boolean z2 = this.aBu;
        long jCT = 0;
        for (com.kwad.framework.filedownloader.d.a aVar : list) {
            long jCT2 = aVar.CU() == 0 ? j2 - aVar.CT() : (aVar.CU() - aVar.CT()) + 1;
            jCT += aVar.CT() - aVar.getStartOffset();
            if (jCT2 != 0) {
                c cVarCr = new c.a().cL(id).i(Integer.valueOf(aVar.getIndex())).a(this).cb(url).cc(z2 ? strCY : null).c(this.aBj).bv(this.aBl).b(new com.kwad.framework.filedownloader.download.a(aVar.getStartOffset(), aVar.CT(), aVar.CU(), jCT2)).cd(strCp).Cr();
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.c(this, "enable multiple connection: %s", aVar);
                }
                this.aBq.add(cVarCr);
            } else if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "pass connection[%d-%d], because it has been completed", Integer.valueOf(aVar.getId()), Integer.valueOf(aVar.getIndex()));
            }
        }
        if (jCT != this.aBi.CX()) {
            com.kwad.framework.filedownloader.f.d.d(this, "correct the sofar[%d] from connection table[%d]", Long.valueOf(this.aBi.CX()), Long.valueOf(jCT));
            this.aBi.af(jCT);
        }
        ArrayList arrayList = new ArrayList(this.aBq.size());
        ArrayList<c> arrayList2 = this.aBq;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            c cVar = arrayList2.get(i2);
            i2++;
            c cVar2 = cVar;
            if (this.nJ) {
                cVar2.pause();
            } else {
                arrayList.add(Executors.callable(cVar2));
            }
        }
        if (this.nJ) {
            this.aBi.d((byte) -2);
            return;
        }
        List<Future> listInvokeAll = aBt.invokeAll(arrayList);
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            for (Future future : listInvokeAll) {
                com.kwad.framework.filedownloader.f.d.c(this, "finish sub-task for [%d] %B %B", Integer.valueOf(id), Boolean.valueOf(future.isDone()), Boolean.valueOf(future.isCancelled()));
            }
        }
    }

    private void d(long j2, int i2) throws InterruptedException {
        long j3 = j2 / i2;
        int id = this.aBi.getId();
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        long j4 = 0;
        while (i3 < i2) {
            long j5 = i3 == i2 + (-1) ? 0L : (j4 + j3) - 1;
            com.kwad.framework.filedownloader.d.a aVar = new com.kwad.framework.filedownloader.d.a();
            aVar.setId(id);
            aVar.setIndex(i3);
            aVar.setStartOffset(j4);
            aVar.ad(j4);
            aVar.ae(j5);
            arrayList.add(aVar);
            this.aBd.a(aVar);
            j4 += j3;
            i3++;
        }
        this.aBi.cV(i2);
        this.aBd.w(id, i2);
        b(arrayList, j2);
    }

    private com.kwad.framework.filedownloader.download.a x(List<com.kwad.framework.filedownloader.d.a> list) {
        long jCX;
        long j2;
        int iDa = this.aBi.Da();
        String strCp = this.aBi.Cp();
        String targetFilePath = this.aBi.getTargetFilePath();
        boolean z2 = iDa > 1;
        if ((!z2 || this.aBp) && com.kwad.framework.filedownloader.f.f.b(this.aBi.getId(), this.aBi)) {
            if (!this.aBp) {
                jCX = new File(strCp).length();
            } else if (z2) {
                if (iDa == list.size()) {
                    jCX = com.kwad.framework.filedownloader.d.a.y(list);
                }
                j2 = 0;
            } else {
                jCX = this.aBi.CX();
            }
            j2 = jCX;
        } else {
            j2 = 0;
        }
        this.aBi.af(j2);
        boolean z3 = j2 > 0;
        this.aBu = z3;
        if (!z3) {
            this.aBd.cE(this.aBi.getId());
            com.kwad.framework.filedownloader.f.f.E(targetFilePath, strCp);
        }
        return new com.kwad.framework.filedownloader.download.a(0L, j2, 0L, this.aBi.getTotal() - j2);
    }

    public final void Ck() {
        if (this.aBi.Da() > 1) {
            List<com.kwad.framework.filedownloader.d.a> listCD = this.aBd.cD(this.aBi.getId());
            if (this.aBi.Da() == listCD.size()) {
                this.aBi.af(com.kwad.framework.filedownloader.d.a.y(listCD));
            } else {
                this.aBi.af(0L);
                this.aBd.cE(this.aBi.getId());
            }
        }
        this.aBg.Ct();
    }

    @Override // com.kwad.framework.filedownloader.download.f
    public final void Cm() {
        this.aBd.b(this.aBi.getId(), this.aBi.CX());
    }

    public final String Cp() {
        return this.aBi.Cp();
    }

    public final int getId() {
        return this.aBi.getId();
    }

    public final boolean isAlive() {
        return this.aBx.get() || this.aBg.isAlive();
    }

    @Override // com.kwad.framework.filedownloader.download.f
    public final void onProgress(long j2) {
        if (this.nJ) {
            return;
        }
        this.aBg.onProgress(j2);
    }

    public final void pause() {
        this.nJ = true;
        e eVar = this.aBr;
        if (eVar != null) {
            eVar.pause();
        }
        ArrayList arrayList = (ArrayList) this.aBq.clone();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            c cVar = (c) obj;
            if (cVar != null) {
                cVar.pause();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01bc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01bf, code lost:
    
        if (r8 != 1) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c1, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c3, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01c4, code lost:
    
        r15.aBs = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01c6, code lost:
    
        if (r9 == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01c8, code lost:
    
        a(r6.BY(), r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d0, code lost:
    
        if (r7 == null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01d2, code lost:
    
        r7.BQ();
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01d6, code lost:
    
        r5 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01d7, code lost:
    
        r15.aBg.Cv();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01de, code lost:
    
        if (r15.aBu == false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01e0, code lost:
    
        a(r8, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01f5, code lost:
    
        d(r13, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01f8, code lost:
    
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x01f9, code lost:
    
        if (r7 == null) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01fb, code lost:
    
        r7.BQ();
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x020e, code lost:
    
        throw new java.lang.IllegalAccessException(com.kwad.framework.filedownloader.f.f.c("invalid connection count %d, the connection count must be larger than 0", r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009a, code lost:
    
        if (com.kwad.framework.filedownloader.f.d.aDr == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009c, code lost:
    
        com.kwad.framework.filedownloader.f.d.c(r15, "High concurrent cause, start runnable but already paused %d", java.lang.Integer.valueOf(r15.aBi.getId()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ad, code lost:
    
        r15.aBg.Cs();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b4, code lost:
    
        if (r15.nJ == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b9, code lost:
    
        if (r15.aBy == false) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bc, code lost:
    
        r15.aBg.Cx();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c2, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x011a, code lost:
    
        if (r15.nJ == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x011c, code lost:
    
        r15.aBi.d((byte) -2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0121, code lost:
    
        if (r7 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0123, code lost:
    
        r7.BQ();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0126, code lost:
    
        r15.aBg.Cs();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x012d, code lost:
    
        if (r15.nJ == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0133, code lost:
    
        if (r15.aBy == false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0137, code lost:
    
        r15.aBg.Cx();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x013e, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0155, code lost:
    
        Co();
        r13 = r15.aBi.getTotal();
        a(r13, r15.aBi.Cp());
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x016b, code lost:
    
        if (Cl() == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x016f, code lost:
    
        if (r15.aBu == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0171, code lost:
    
        r8 = r15.aBi.Da();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0178, code lost:
    
        r8 = com.kwad.framework.filedownloader.download.b.Ca().a(r15.aBi.getId(), r15.aBi.getUrl(), r15.aBi.getPath(), r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0193, code lost:
    
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0194, code lost:
    
        if (r8 <= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0198, code lost:
    
        if (r15.nJ == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x019a, code lost:
    
        r15.aBi.d((byte) -2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x019f, code lost:
    
        if (r7 == null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a1, code lost:
    
        r7.BQ();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a4, code lost:
    
        r15.aBg.Cs();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01ab, code lost:
    
        if (r15.nJ == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01b1, code lost:
    
        if (r15.aBy == false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01b5, code lost:
    
        r15.aBg.Cx();
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0246 A[Catch: all -> 0x01e4, TryCatch #3 {all -> 0x01e4, blocks: (B:47:0x00c9, B:112:0x01d7, B:114:0x01e0, B:131:0x01f5, B:155:0x0240, B:157:0x0246, B:160:0x024e, B:140:0x0213), top: B:192:0x0240 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0259 A[Catch: all -> 0x0030, TryCatch #6 {all -> 0x0030, blocks: (B:3:0x0003, B:6:0x0012, B:8:0x001a, B:10:0x001e, B:13:0x0034, B:26:0x008b, B:28:0x008f, B:29:0x0094, B:31:0x0098, B:33:0x009c, B:44:0x00c4, B:52:0x0123, B:91:0x01a1, B:134:0x01fb, B:164:0x0259, B:165:0x025c, B:142:0x021b, B:162:0x0253, B:144:0x0222), top: B:193:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x024e A[SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.framework.filedownloader.download.DownloadLaunchRunnable.run():void");
    }

    private DownloadLaunchRunnable(com.kwad.framework.filedownloader.d.c cVar, com.kwad.framework.filedownloader.d.b bVar, y yVar, int i2, int i3, boolean z2, boolean z3, int i4) {
        this.aBh = 5;
        this.aBq = new ArrayList<>(5);
        this.aBB = 0L;
        this.aBC = 0L;
        this.aBD = 0L;
        this.aBE = 0L;
        this.aBx = new AtomicBoolean(true);
        this.nJ = false;
        this.aBn = false;
        this.aBi = cVar;
        this.aBj = bVar;
        this.aBk = z2;
        this.aBl = z3;
        this.aBd = b.Ca().Cc();
        this.aBp = b.Ca().Ce();
        this.aBm = yVar;
        this.aBo = i4;
        this.aBg = new d(cVar, i4, i2, i3);
    }

    private void a(com.kwad.framework.filedownloader.download.a aVar, com.kwad.framework.filedownloader.a.b bVar) throws Throwable {
        if (!this.aBv) {
            this.aBi.af(0L);
            aVar = new com.kwad.framework.filedownloader.download.a(0L, 0L, aVar.aAY, aVar.contentLength);
        }
        e.a aVar2 = new e.a();
        aVar2.b(this).cO(this.aBi.getId()).cN(-1).bx(this.aBl).d(bVar).c(aVar).ce(this.aBi.Cp());
        this.aBi.cV(1);
        this.aBd.w(this.aBi.getId(), 1);
        this.aBr = aVar2.CE();
        if (this.nJ) {
            this.aBi.d((byte) -2);
            this.aBr.pause();
        } else {
            this.aBr.run();
        }
    }

    @Override // com.kwad.framework.filedownloader.download.f
    public final void b(Exception exc) {
        this.aBy = true;
        this.aBz = exc;
        if (this.nJ) {
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "the task[%d] has already been paused, so pass the error callback", Integer.valueOf(this.aBi.getId()));
                return;
            }
            return;
        }
        ArrayList arrayList = (ArrayList) this.aBq.clone();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            c cVar = (c) obj;
            if (cVar != null) {
                cVar.Bw();
            }
        }
    }

    private void a(int i2, List<com.kwad.framework.filedownloader.d.a> list) throws InterruptedException {
        if (i2 > 1 && list.size() == i2) {
            b(list, this.aBi.getTotal());
            return;
        }
        throw new IllegalArgumentException();
    }

    private void a(long j2, String str) {
        com.kwad.framework.filedownloader.e.a aVarCs = null;
        if (j2 != -1) {
            try {
                aVarCs = com.kwad.framework.filedownloader.f.f.cs(this.aBi.Cp());
                long length = new File(str).length();
                long j3 = j2 - length;
                long availableBytes = h.getAvailableBytes(str);
                if (availableBytes >= j3) {
                    if (!com.kwad.framework.filedownloader.f.e.Dz().aDx) {
                        aVarCs.setLength(j2);
                    }
                } else {
                    throw new FileDownloadOutOfSpaceException(availableBytes, j3, length);
                }
            } finally {
            }
        }
        if (aVarCs != null) {
            aVarCs.close();
        }
    }

    @Override // com.kwad.framework.filedownloader.download.f
    public final void a(c cVar, long j2, long j3) {
        if (this.nJ) {
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "the task[%d] has already been paused, so pass the completed callback", Integer.valueOf(this.aBi.getId()));
                return;
            }
            return;
        }
        int i2 = cVar == null ? -1 : cVar.aBN;
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "the connection has been completed(%d): [%d, %d)  %d", Integer.valueOf(i2), Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(this.aBi.getTotal()));
        }
        if (!this.aBs) {
            synchronized (this.aBq) {
                this.aBq.remove(cVar);
            }
        } else {
            if (j2 == 0 || j3 == this.aBi.getTotal()) {
                return;
            }
            com.kwad.framework.filedownloader.f.d.a(this, "the single task not completed corrected(%d, %d != %d) for task(%d)", Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(this.aBi.getTotal()), Integer.valueOf(this.aBi.getId()));
        }
    }

    @Override // com.kwad.framework.filedownloader.download.f
    public final boolean a(Exception exc) {
        if (exc instanceof FileDownloadHttpException) {
            int code = ((FileDownloadHttpException) exc).getCode();
            if (this.aBs && code == 416 && !this.aBn) {
                com.kwad.framework.filedownloader.f.f.E(this.aBi.getTargetFilePath(), this.aBi.Cp());
                this.aBn = true;
                return true;
            }
        }
        return this.aBo > 0 && !(exc instanceof FileDownloadGiveUpRetryException);
    }

    @Override // com.kwad.framework.filedownloader.download.f
    public final void a(Exception exc, long j2) {
        if (this.nJ) {
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "the task[%d] has already been paused, so pass the retry callback", Integer.valueOf(this.aBi.getId()));
            }
        } else {
            int i2 = this.aBo;
            int i3 = i2 - 1;
            this.aBo = i3;
            if (i2 < 0) {
                com.kwad.framework.filedownloader.f.d.a(this, "valid retry times is less than 0(%d) for download task(%d)", Integer.valueOf(i3), Integer.valueOf(this.aBi.getId()));
            }
            this.aBg.a(exc, this.aBo, j2);
        }
    }
}

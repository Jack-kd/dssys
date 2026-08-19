package com.bykv.vk.component.ttvideo.mediakit.net;

import android.text.TextUtils;
import java.util.Locale;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public class AVMDLDNSParserBridge implements AVMDLDNSParserListener {
    private static final String TAG = "AVMDLDNSParserBridge";
    private static boolean v2Usable = true;
    public String host;
    String ipList = null;
    boolean isFinish = false;
    private Lock lock = new ReentrantLock();
    private long handle = 0;

    private static native void _notifyParserResult(long j2, String str, String str2, long j3, String str3);

    private static native void _notifyParserResultV2(long j2, String str, String str2, long j3, String str3, int i2);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0099 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #1 {all -> 0x0048, blocks: (B:7:0x0012, B:9:0x001e, B:12:0x003f, B:19:0x0051, B:22:0x005b, B:24:0x0063, B:37:0x008c, B:39:0x0099, B:29:0x006e), top: B:47:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009e  */
    /* JADX WARN: Type inference failed for: r5v11, types: [int] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int parserResult(long r12, java.lang.String r14, int r15) {
        /*
            r11 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r14)
            if (r0 == 0) goto L8
            r12 = -1
            return r12
        L8:
            java.util.concurrent.locks.Lock r0 = r11.lock
            r0.lock()
            r11.handle = r12
            r12 = 1
            r13 = 0
            r1 = 0
            r11.host = r14     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            com.bykv.vk.component.ttvideo.mediakit.net.IPCache r0 = com.bykv.vk.component.ttvideo.mediakit.net.IPCache.getInstance()     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSInfo r0 = r0.get(r14)     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            if (r0 == 0) goto L84
            java.lang.String r2 = r0.mIpList     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            r11.ipList = r2     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            java.lang.String r4 = "get result from cache expiredT:%d curT:%d "
            long r5 = r0.mExpiredTime     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            java.lang.Long r6 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            java.lang.Object[] r5 = new java.lang.Object[]{r5, r6}     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            java.lang.String.format(r4, r5)     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            long r4 = r0.mExpiredTime     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L80
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 > 0) goto L50
            java.lang.String r2 = "cache has expired need try call but not need listener"
            java.lang.Object[] r3 = new java.lang.Object[r13]     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L4c
            java.lang.String.format(r2, r3)     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L4c
            r2 = r12
            goto L51
        L48:
            r0 = move-exception
            r12 = r0
            goto Lb8
        L4c:
            r0 = move-exception
            r15 = r0
            r5 = r14
            goto L8c
        L50:
            r2 = r13
        L51:
            long r3 = r11.handle     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L6b
            r5 = 0
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 == 0) goto L7c
            if (r15 != r12) goto L6e
            com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParserBridge.v2Usable = r13     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L6b
            java.lang.String r6 = r11.ipList     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L6b
            long r7 = r0.mExpiredTime     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L6b
            r9 = 0
            r5 = r14
            _notifyParserResult(r3, r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L67
            goto L7d
        L67:
            r0 = move-exception
        L68:
            r15 = r0
            r12 = r2
            goto L8c
        L6b:
            r0 = move-exception
            r5 = r14
            goto L68
        L6e:
            r5 = r14
            com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParserBridge.v2Usable = r12     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L67
            java.lang.String r6 = r11.ipList     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L67
            long r7 = r0.mExpiredTime     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L67
            int r10 = r0.mType     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L67
            r9 = 0
            _notifyParserResultV2(r3, r5, r6, r7, r9, r10)     // Catch: java.lang.Throwable -> L48 java.lang.UnsatisfiedLinkError -> L67
            goto L7d
        L7c:
            r5 = r14
        L7d:
            r13 = r12
            r12 = r2
            goto L86
        L80:
            r0 = move-exception
            r5 = r14
            r15 = r0
            goto L8c
        L84:
            r5 = r14
            r1 = r11
        L86:
            java.util.concurrent.locks.Lock r14 = r11.lock
            r14.unlock()
            goto L9c
        L8c:
            java.lang.String r14 = "AVMDLDNSParserBridge"
            java.lang.String r15 = r15.toString()     // Catch: java.lang.Throwable -> L48
            com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog.e(r14, r15)     // Catch: java.lang.Throwable -> L48
            boolean r14 = com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParserBridge.v2Usable     // Catch: java.lang.Throwable -> L48
            if (r14 == 0) goto L86
            com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParserBridge.v2Usable = r13     // Catch: java.lang.Throwable -> L48
            goto L86
        L9c:
            if (r12 == 0) goto Lae
            java.lang.String r12 = "call add host to parser listener:%s"
            java.lang.Object[] r14 = new java.lang.Object[]{r1}
            java.lang.String.format(r12, r14)
            com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParser r12 = com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParser.getInstance()
            r12.addHost(r5, r1)
        Lae:
            java.lang.String r12 = "****call start end, listener:%s"
            java.lang.Object[] r14 = new java.lang.Object[]{r1}
            java.lang.String.format(r12, r14)
            return r13
        Lb8:
            java.util.concurrent.locks.Lock r13 = r11.lock
            r13.unlock()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParserBridge.parserResult(long, java.lang.String, int):int");
    }

    public String getBackUp(String str) {
        AVMDLDNSInfo backUpIp;
        if (AVMDLDNSParser.getIntValue(5) != 1 || (backUpIp = IPCache.getInstance().getBackUpIp(str)) == null) {
            return null;
        }
        return backUpIp.mIpList;
    }

    public String getResult() {
        this.lock.lock();
        try {
            return this.ipList;
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isFinish() {
        return this.isFinish;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParserListener
    public void onCompletion(int i2, String str, String str2, long j2, String str3, int i3) {
        if (!this.isFinish && v2Usable) {
            parserResult(i2, str, str2, j2, str3, i3, 2);
        }
        if (this.isFinish) {
            return;
        }
        parserResult(i2, str, str2, j2, str3, i3, 1);
    }

    public void release() {
        String.format("----start release:%s", this);
        this.lock.lock();
        try {
            this.handle = 0L;
            this.lock.unlock();
            String.format("remove host:%s", this.host);
            AVMDLDNSParser.getInstance().removeHost(this.host, this);
            String.format("****end call release:%s", this);
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    public int start(long j2, String str) {
        int i2 = v2Usable ? parserResult(j2, str, 2) : 0;
        return i2 <= 0 ? parserResult(j2, str, 1) : i2;
    }

    private void parserResult(int i2, String str, String str2, long j2, String str3, int i3, int i4) {
        String str4;
        long j3;
        int i5;
        AVMDLDNSInfo backUpIp;
        this.lock.lock();
        try {
            try {
                if (!this.isFinish) {
                    Locale locale = Locale.ENGLISH;
                    String.format(locale, "receive completion code:%d result:%s type:%d", Integer.valueOf(i2), TextUtils.isEmpty(str2) ? "null" : str2, Integer.valueOf(i3));
                    if (TextUtils.isEmpty(str2) && AVMDLDNSParser.getIntValue(5) == 1 && (backUpIp = IPCache.getInstance().getBackUpIp(str)) != null) {
                        String str5 = backUpIp.mIpList;
                        int i6 = backUpIp.mType;
                        String.format(locale, "get backup ip, result:%s type:%d", str5, Integer.valueOf(i6));
                        i5 = i6;
                        j3 = 0;
                        str4 = str5;
                    } else {
                        str4 = str2;
                        j3 = j2;
                        i5 = i3;
                    }
                    this.ipList = str4;
                    this.isFinish = true;
                    long j4 = this.handle;
                    if (j4 != 0) {
                        if (i4 == 2) {
                            v2Usable = true;
                            _notifyParserResultV2(j4, str, str4, j3, str3, i5);
                        } else {
                            v2Usable = false;
                            _notifyParserResult(j4, str, str4, j3, str3);
                        }
                    }
                } else {
                    String.format(Locale.ENGLISH, "has finished not nedd cur completion code:%d result:%s expiredTime:%d", Integer.valueOf(i2), str2, Long.valueOf(j2));
                }
            } catch (UnsatisfiedLinkError unused) {
                if (v2Usable) {
                    v2Usable = false;
                }
                this.isFinish = false;
            }
            this.lock.unlock();
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }
}

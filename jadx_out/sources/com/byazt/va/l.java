package com.byazt.va;

import android.content.Context;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.byazt.uhg.xs;
import com.byazt.um.e;
import com.byazt.um.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.fourthline.cling.model.types.BytesRange;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME, 34})
/* loaded from: classes3.dex */
public class l {
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public File f26545j;

    /* renamed from: l, reason: collision with root package name */
    public zy f26546l;

    /* renamed from: w, reason: collision with root package name */
    public File f26547w;
    public volatile boolean jx = false;

    /* renamed from: a, reason: collision with root package name */
    public final List<e.hp> f26544a = new ArrayList();
    public volatile boolean eb = false;

    public l(Context context, zy zyVar) {
        this.f26545j = null;
        this.f26547w = null;
        this.hp = context;
        this.f26546l = zyVar;
        this.f26545j = com.byazt.xm.jx.l(zyVar.getCacheParentDir(), zyVar.getFileNameKey());
        this.f26547w = com.byazt.xm.jx.jx(zyVar.getCacheParentDir(), zyVar.getFileNameKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        try {
            this.f26547w.delete();
            this.f26545j.delete();
        } catch (Throwable unused) {
        }
    }

    private void jx() {
        jl.hp hpVarL = com.byazt.fw.l.jx() != null ? com.byazt.fw.l.jx().l() : new jl.hp("v_preload");
        long connectTimeOutMills = this.f26546l.getConnectTimeOutMills();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        hpVarL.hp(connectTimeOutMills, timeUnit).l(this.f26546l.getReadTimeOutMills(), timeUnit).jx(this.f26546l.getWriteTimeOutMills(), timeUnit);
        jl jlVarHp = hpVarL.hp();
        k.hp hpVar = new k.hp();
        final long length = this.f26545j.length();
        int preloadSize = this.f26546l.getPreloadSize();
        boolean zIsPreloadAll = this.f26546l.isPreloadAll();
        int pitayaCacheSize = this.f26546l.getPitayaCacheSize();
        if (pitayaCacheSize > 0) {
            if (pitayaCacheSize >= this.f26546l.getVideoSize()) {
                zIsPreloadAll = true;
            } else {
                preloadSize = pitayaCacheSize;
            }
        }
        if (zIsPreloadAll) {
            hpVar.hp("RANGE", BytesRange.PREFIX + length + "-").hp(this.f26546l.getUrl()).hp().l();
        } else {
            hpVar.hp("RANGE", BytesRange.PREFIX + length + "-" + preloadSize).hp(this.f26546l.getUrl()).hp().l();
        }
        jlVarHp.hp(hpVar.l()).hp(new com.byazt.uhg.jx() { // from class: com.byazt.va.l.1
            @Override // com.byazt.uhg.jx
            public void onFailure(com.byazt.uhg.l lVar, IOException iOException) {
                l lVar2 = l.this;
                lVar2.hp(lVar2.f26546l, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, iOException.getMessage());
                jx.hp(l.this.f26546l);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r13v3 */
            @Override // com.byazt.uhg.jx
            public void onResponse(com.byazt.uhg.l lVar, u uVar) throws IOException {
                InputStream inputStreamJx;
                Closeable closeable;
                xs xsVarA;
                RandomAccessFile randomAccessFile;
                long jHp;
                long j2 = length;
                int iJx = MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE;
                xs xsVar = null;
                try {
                } catch (Throwable th) {
                    th = th;
                    inputStreamJx = null;
                    closeable = null;
                }
                if (uVar != null) {
                    boolean zJ = uVar.j();
                    if (!zJ) {
                        l lVar2 = l.this;
                        lVar2.hp(lVar2.f26546l, uVar.jx(), uVar.w());
                        l.this.hp((Closeable) null);
                        l.this.hp((Closeable) null);
                        l.this.hp(xsVar);
                        l.this.hp(uVar);
                        l.this.f26546l.getUrl();
                        l.this.f26546l.getPreloadSize();
                        jx.hp(l.this.f26546l);
                    }
                    xsVarA = uVar.a();
                    try {
                        xsVarA = uVar.a();
                        if (!zJ || xsVarA == null) {
                            inputStreamJx = null;
                            jHp = 0;
                        } else {
                            jHp = length + xsVarA.hp();
                            inputStreamJx = xsVarA.jx();
                        }
                        try {
                        } catch (Throwable th2) {
                            th = th2;
                            randomAccessFile = xsVar;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamJx = null;
                        randomAccessFile = 0;
                    }
                    if (inputStreamJx != null) {
                        randomAccessFile = new RandomAccessFile(l.this.f26545j, "rw");
                        try {
                            byte[] bArr = new byte[8192];
                            int i2 = 0;
                            long j3 = 0;
                            while (true) {
                                int i3 = inputStreamJx.read(bArr, i2, 8192 - i2);
                                if (i3 == -1) {
                                    if (l.this.f26546l.isPreloadAll() && jHp == l.this.f26545j.length()) {
                                        l.this.w();
                                    }
                                    l lVar3 = l.this;
                                    lVar3.hp(lVar3.f26546l, uVar.jx());
                                    xsVar = randomAccessFile;
                                } else if (l.this.jx) {
                                    l lVar4 = l.this;
                                    lVar4.l(lVar4.f26546l, uVar.jx());
                                    l.this.hp(randomAccessFile);
                                    break;
                                } else {
                                    i2 += i3;
                                    j3 += i3;
                                    if (j3 % 8192 == 0 || j3 == jHp - length) {
                                        com.byazt.xm.jx.hp(randomAccessFile, bArr, j2, i2);
                                        j2 += i2;
                                        i2 = 0;
                                    }
                                }
                            }
                            l.this.hp(inputStreamJx);
                            l.this.hp(xsVarA);
                        } catch (Throwable th4) {
                            th = th4;
                            xsVar = xsVarA;
                            closeable = randomAccessFile;
                            try {
                                l.this.j();
                                l lVar5 = l.this;
                                zy zyVar = lVar5.f26546l;
                                if (uVar != null) {
                                    iJx = uVar.jx();
                                }
                                lVar5.hp(zyVar, iJx, th.getMessage());
                                l.this.hp(closeable);
                                l.this.hp(inputStreamJx);
                                l.this.hp(xsVar);
                                l.this.hp(uVar);
                                l.this.f26546l.getUrl();
                                l.this.f26546l.getPreloadSize();
                                jx.hp(l.this.f26546l);
                            } catch (Throwable th5) {
                                l.this.hp(closeable);
                                l.this.hp(inputStreamJx);
                                l.this.hp(xsVar);
                                l.this.hp(uVar);
                                l.this.f26546l.getUrl();
                                l.this.f26546l.getPreloadSize();
                                jx.hp(l.this.f26546l);
                                throw th5;
                            }
                        }
                        l.this.hp(uVar);
                        l.this.f26546l.getUrl();
                        l.this.f26546l.getPreloadSize();
                        jx.hp(l.this.f26546l);
                    }
                    l lVar6 = l.this;
                    lVar6.hp(lVar6.f26546l, uVar.jx(), uVar.w());
                } else {
                    l lVar7 = l.this;
                    lVar7.hp(lVar7.f26546l, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, "Network link failed.");
                    xsVarA = null;
                    inputStreamJx = null;
                }
                l.this.hp(xsVar);
                l.this.hp(inputStreamJx);
                l.this.hp(xsVarA);
                l.this.hp(uVar);
                l.this.f26546l.getUrl();
                l.this.f26546l.getPreloadSize();
                jx.hp(l.this.f26546l);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        try {
            if (this.f26545j.renameTo(this.f26547w)) {
                return;
            }
            throw new IOException("Error renaming file " + this.f26545j + " to " + this.f26547w + " for completion!");
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private boolean l() {
        if (this.f26547w.exists()) {
            return true;
        }
        if (!this.f26546l.isPreloadAll()) {
            if (this.f26545j.length() >= this.f26546l.getPreloadSize()) {
                return true;
            }
            if (this.f26546l.getPitayaCacheSize() > 0 && this.f26545j.length() >= this.f26546l.getPitayaCacheSize()) {
                return true;
            }
        }
        return false;
    }

    public void hp(e.hp hpVar) {
        if (this.eb) {
            synchronized (e.hp.class) {
                this.f26544a.add(hpVar);
            }
            return;
        }
        this.f26544a.add(hpVar);
        if (l()) {
            this.f26546l.setSourceType(1);
            hp(this.f26546l, 200);
            jx.hp(this.f26546l);
        } else {
            this.eb = true;
            this.f26546l.setSourceType(0);
            jx();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(zy zyVar, int i2) {
        synchronized (e.hp.class) {
            try {
                for (e.hp hpVar : this.f26544a) {
                    if (hpVar != null) {
                        hpVar.cancel(zyVar, i2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public zy hp() {
        return this.f26546l;
    }

    public void hp(boolean z2) {
        this.jx = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(zy zyVar, int i2) {
        synchronized (e.hp.class) {
            try {
                for (e.hp hpVar : this.f26544a) {
                    if (hpVar != null) {
                        hpVar.onVideoPreloadSuccess(zyVar, i2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(zy zyVar, int i2, String str) {
        synchronized (e.hp.class) {
            try {
                for (e.hp hpVar : this.f26544a) {
                    if (hpVar != null) {
                        hpVar.onVideoPreloadFail(zyVar, i2, str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

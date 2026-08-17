package com.meishu.sdk.meishu_ad.view.player.media.datasouce;

import com.kuaishou.weapon.p0.t;
import com.meishu.sdk.core.bquery.g;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.meishu_ad.view.player.a;
import com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.e;
import com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f;
import com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.h;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f32744a;

    /* renamed from: c, reason: collision with root package name */
    public RandomAccessFile f32746c;

    /* renamed from: d, reason: collision with root package name */
    public RandomAccessFile f32747d;

    /* renamed from: e, reason: collision with root package name */
    public File f32748e;

    /* renamed from: f, reason: collision with root package name */
    public File f32749f;

    /* renamed from: g, reason: collision with root package name */
    public File f32750g;

    /* renamed from: h, reason: collision with root package name */
    public volatile long f32751h;

    /* renamed from: j, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b f32753j;

    /* renamed from: l, reason: collision with root package name */
    public f f32755l;

    /* renamed from: b, reason: collision with root package name */
    public final Object f32745b = new Object();

    /* renamed from: i, reason: collision with root package name */
    public boolean f32752i = false;

    /* renamed from: k, reason: collision with root package name */
    public final String f32754k = String.valueOf(hashCode());

    public a(String str, c cVar) {
        this.f32751h = -2147483648L;
        this.f32744a = str;
        try {
            this.f32748e = g.a(str, (String) null);
            this.f32749f = g.a(str, "temp");
            this.f32750g = g.a(str, "last_meta_temp");
            if (b()) {
                this.f32746c = new RandomAccessFile(this.f32748e, t.f31269k);
                this.f32751h = this.f32748e.length();
                if (cVar != null) {
                    ((a.d) cVar).a(100);
                }
                LogUtil.d("a", "file exist. " + this.f32751h);
                return;
            }
            LogUtil.d("a", "file not exist. url:" + str);
            a();
            this.f32746c = new RandomAccessFile(this.f32749f, t.f31269k);
            this.f32747d = new RandomAccessFile(this.f32750g, t.f31269k);
            a(cVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final boolean b() {
        File file = this.f32748e;
        return file != null && file.exists();
    }

    /* renamed from: com.meishu.sdk.meishu_ad.view.player.media.datasouce.a$a, reason: collision with other inner class name */
    public class C0690a implements f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f32756a;

        public C0690a(c cVar) {
            this.f32756a = cVar;
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a(long j2) {
            a.this.f32751h = j2;
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void b() {
            a aVar = a.this;
            aVar.getClass();
            try {
                synchronized (aVar.f32745b) {
                    try {
                        if (aVar.f32748e.exists() && aVar.f32748e.length() > 0) {
                            RandomAccessFile randomAccessFile = aVar.f32746c;
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            aVar.f32746c = new RandomAccessFile(aVar.f32748e, t.f31269k);
                            RandomAccessFile randomAccessFile2 = aVar.f32747d;
                            if (randomAccessFile2 != null) {
                                randomAccessFile2.close();
                                aVar.f32747d = null;
                            }
                            return;
                        }
                        LogUtil.e("a", "changeSource error");
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a(long j2, int i2) {
            c cVar = this.f32756a;
            if (cVar != null) {
                ((a.d) cVar).a(i2);
            }
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a() {
            a aVar = a.this;
            if (aVar.f32752i) {
                return;
            }
            aVar.f32752i = true;
            c cVar = this.f32756a;
            if (cVar != null) {
                a.d dVar = (a.d) cVar;
                LogUtil.e("CacheMediaPlayerHelper", "onBufferError:" + com.meishu.sdk.meishu_ad.view.player.a.this.f32720e);
                boolean[] zArr = dVar.f32736b;
                if (zArr[1]) {
                    return;
                }
                zArr[1] = true;
                SdkHandler.runOnMainThread(new com.meishu.sdk.meishu_ad.view.player.b(dVar));
            }
        }
    }

    public final void a(c cVar) {
        com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b bVarB;
        C0690a c0690a = new C0690a(cVar);
        this.f32755l = c0690a;
        String str = this.f32744a;
        ConcurrentHashMap<String, com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b> concurrentHashMap = h.f32805a;
        try {
            String strB = g.b(str);
            ConcurrentHashMap<String, com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b> concurrentHashMap2 = h.f32805a;
            if (concurrentHashMap2.containsKey(strB)) {
                bVarB = concurrentHashMap2.get(strB);
                bVarB.b(c0690a);
            } else {
                bVarB = new e(str, new h.a(strB)).b(c0690a);
                concurrentHashMap2.put(strB, bVarB);
                ((e) bVarB).d();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            bVarB = null;
        }
        this.f32753j = bVarB;
    }

    public final void a() {
        try {
            if (!this.f32749f.exists()) {
                this.f32749f.createNewFile();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (this.f32750g.exists()) {
                return;
            }
            this.f32750g.createNewFile();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}

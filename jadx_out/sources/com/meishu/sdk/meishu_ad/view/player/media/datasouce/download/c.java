package com.meishu.sdk.meishu_ad.view.player.media.datasouce.download;

import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import java.io.InputStream;
import java.io.RandomAccessFile;
import okhttp3.Request;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes4.dex */
public class c implements com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.a {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f32764k = 0;

    /* renamed from: a, reason: collision with root package name */
    public final String f32765a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f32766b;

    /* renamed from: c, reason: collision with root package name */
    public final g f32767c;

    /* renamed from: e, reason: collision with root package name */
    public final b f32769e;

    /* renamed from: f, reason: collision with root package name */
    public b f32770f;

    /* renamed from: g, reason: collision with root package name */
    public volatile long f32771g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f32772h;

    /* renamed from: j, reason: collision with root package name */
    public f f32774j;

    /* renamed from: d, reason: collision with root package name */
    public final Object f32768d = new Object();

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f32773i = false;

    public class a implements b.a {
        public a() {
        }

        public void a() {
            c.this.close();
            f fVar = c.this.f32774j;
            if (fVar != null) {
                fVar.a();
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public InputStream f32776a = null;

        /* renamed from: b, reason: collision with root package name */
        public final long f32777b;

        public interface a {
        }

        public b(String str, RandomAccessFile randomAccessFile, long j2, Object obj, a aVar) {
            a aVar2;
            this.f32777b = j2;
            try {
                Request.Builder builderUrl = new Request.Builder().url(str);
                builderUrl.addHeader(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-");
                aVar2 = aVar;
                try {
                    a0.a().newCall(builderUrl.build()).enqueue(new d(this, aVar2, j2, str, obj, randomAccessFile));
                } catch (Throwable th) {
                    th = th;
                    th.printStackTrace();
                    if (aVar2 != null) {
                        ((a) aVar2).a();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                aVar2 = aVar;
            }
        }

        public void a() {
            try {
                InputStream inputStream = this.f32776a;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public c(String str, RandomAccessFile randomAccessFile, long j2, Object obj, g gVar, f fVar) {
        this.f32765a = str;
        this.f32766b = obj;
        this.f32767c = gVar;
        this.f32774j = fVar;
        this.f32769e = new b(str, randomAccessFile, j2, obj, new a());
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.a
    public void close() {
        b bVar = this.f32769e;
        if (bVar != null) {
            bVar.a();
        }
        b bVar2 = this.f32770f;
        if (bVar2 != null) {
            bVar2.a();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.a
    public void a(String str, long j2, int i2, RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null && this.f32767c.a(str, j2, this.f32771g, i2) && this.f32771g > 0 && this.f32772h && !this.f32773i && !a(randomAccessFile)) {
            synchronized (this.f32768d) {
                try {
                    this.f32773i = true;
                    if (this.f32770f == null) {
                        LogUtil.d("c", "start download last meta data. position:" + j2 + " threadId:" + Thread.currentThread().getId());
                        this.f32770f = new b(this.f32765a, randomAccessFile, j2, this.f32766b, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.a
    public boolean a(RandomAccessFile randomAccessFile, long j2) {
        try {
            if (a(randomAccessFile)) {
                return true;
            }
            b bVar = this.f32770f;
            if (bVar != null && j2 >= bVar.f32777b) {
                if (j2 < randomAccessFile.length()) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public final boolean a(RandomAccessFile randomAccessFile) {
        try {
            if (this.f32771g > 0 && randomAccessFile != null) {
                if (randomAccessFile.length() == this.f32771g) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}

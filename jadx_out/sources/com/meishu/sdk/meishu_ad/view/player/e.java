package com.meishu.sdk.meishu_ad.view.player;

import android.media.MediaDataSource;
import androidx.annotation.RequiresApi;
import com.meishu.sdk.core.utils.LogUtil;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;

@RequiresApi(api = 23)
/* loaded from: classes4.dex */
public class e extends MediaDataSource {

    /* renamed from: a, reason: collision with root package name */
    public final com.meishu.sdk.meishu_ad.view.player.media.datasouce.a f32743a;

    public e(String str, com.meishu.sdk.meishu_ad.view.player.media.datasouce.c cVar) {
        this.f32743a = new com.meishu.sdk.meishu_ad.view.player.media.datasouce.a(str, cVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.meishu.sdk.meishu_ad.view.player.media.datasouce.a aVar = this.f32743a;
        aVar.getClass();
        try {
            LogUtil.d("a", "close");
            aVar.f32752i = true;
            RandomAccessFile randomAccessFile = aVar.f32746c;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            RandomAccessFile randomAccessFile2 = aVar.f32747d;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            try {
                com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b bVar = aVar.f32753j;
                if (bVar != null) {
                    bVar.a(aVar.f32755l);
                    aVar.f32753j.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        File file;
        com.meishu.sdk.meishu_ad.view.player.media.datasouce.a aVar = this.f32743a;
        aVar.getClass();
        try {
            file = aVar.f32748e;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (file != null && file.exists()) {
            aVar.f32751h = aVar.f32748e.length();
            return aVar.f32751h;
        }
        synchronized (aVar.f32745b) {
            int i2 = 0;
            while (aVar.f32751h == -2147483648L) {
                i2 += 15;
                try {
                    aVar.f32745b.wait(5L);
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                }
                if (i2 > 20000) {
                    return -1L;
                }
            }
            if (aVar.f32751h == -2147483648L) {
                return -1L;
            }
            return aVar.f32751h;
        }
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j2, byte[] bArr, int i2, int i3) throws IOException {
        long j3;
        int i4;
        com.meishu.sdk.meishu_ad.view.player.media.datasouce.a aVar = this.f32743a;
        aVar.getClass();
        try {
            if (j2 == aVar.f32751h) {
                return -1;
            }
            com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b bVar = aVar.f32753j;
            if (bVar != null) {
                j3 = j2;
                i4 = i3;
                bVar.a(aVar.f32754k, j3, i4, null);
            } else {
                j3 = j2;
                i4 = i3;
            }
            int i5 = 0;
            int i6 = 0;
            while (!aVar.f32752i) {
                synchronized (aVar.f32745b) {
                    try {
                        if (j3 < aVar.f32746c.length()) {
                            aVar.f32746c.seek(j3);
                            i5 = aVar.f32746c.read(bArr, i2, i4);
                        } else {
                            com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b bVar2 = aVar.f32753j;
                            if (bVar2 == null || !bVar2.a(aVar.f32747d, j3)) {
                                i6 += 33;
                                aVar.f32745b.wait(33L);
                            } else {
                                aVar.f32747d.seek(j3);
                                i5 = aVar.f32747d.read(bArr, i2, i4);
                            }
                        }
                    } finally {
                    }
                }
                if (i5 > 0) {
                    return i5;
                }
                if (i6 >= 20000) {
                    LogUtil.e("a", "readAt timeout");
                    throw new SocketTimeoutException();
                }
            }
            return -1;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }
}

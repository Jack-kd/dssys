package com.meishu.sdk.meishu_ad.view.player;

import android.media.MediaDataSource;
import androidx.annotation.RequiresApi;
import com.meishu.sdk.core.utils.LogUtil;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

@RequiresApi(api = 23)
/* loaded from: classes4.dex */
public class d extends MediaDataSource {

    /* renamed from: a, reason: collision with root package name */
    public final com.meishu.sdk.meishu_ad.view.player.media.datasouce.b f32742a;

    public d(String str) {
        this.f32742a = new com.meishu.sdk.meishu_ad.view.player.media.datasouce.b(str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.meishu.sdk.meishu_ad.view.player.media.datasouce.b bVar = this.f32742a;
        bVar.getClass();
        try {
            LogUtil.d("b", "close");
            RandomAccessFile randomAccessFile = bVar.f32758a;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            RandomAccessFile randomAccessFile2 = bVar.f32759b;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        File file;
        com.meishu.sdk.meishu_ad.view.player.media.datasouce.b bVar = this.f32742a;
        bVar.getClass();
        try {
            file = bVar.f32760c;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (file != null && file.exists()) {
            bVar.f32763f = bVar.f32760c.length();
            return bVar.f32763f;
        }
        File file2 = bVar.f32762e;
        if (file2 != null && file2.exists() && bVar.f32762e.length() > 0) {
            return bVar.f32762e.length();
        }
        File file3 = bVar.f32761d;
        if (file3 != null && file3.exists() && bVar.f32761d.length() > 0) {
            return bVar.f32761d.length();
        }
        if (bVar.f32763f == -2147483648L) {
            return -1L;
        }
        return bVar.f32763f;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j2, byte[] bArr, int i2, int i3) throws IOException {
        int i4;
        com.meishu.sdk.meishu_ad.view.player.media.datasouce.b bVar = this.f32742a;
        bVar.getClass();
        try {
            if (j2 == bVar.f32763f) {
                return -1;
            }
            if (j2 < bVar.f32758a.length()) {
                LogUtil.d("b", "readAt from randomAccessFile");
                bVar.f32758a.seek(j2);
                i4 = bVar.f32758a.read(bArr, i2, i3);
            } else if (j2 < bVar.f32759b.length()) {
                LogUtil.d("b", "readAt from randomAccessLastMetaFile");
                bVar.f32759b.seek(j2);
                i4 = bVar.f32759b.read(bArr, i2, i3);
            } else {
                i4 = 0;
            }
            if (i4 > 0) {
                return i4;
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }
}

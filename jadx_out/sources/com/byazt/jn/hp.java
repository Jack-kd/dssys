package com.byazt.jn;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import androidx.core.view.PointerIconCompat;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_VERTICAL_TEXT, 28})
/* loaded from: classes.dex */
public class hp implements com.byazt.nke.l, Cloneable {
    public static volatile com.byazt.nke.l eb;

    /* renamed from: a, reason: collision with root package name */
    public File f21611a;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21612j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f21613l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f21614w;

    public hp(int i2, long j2, File file) {
        this(i2, 524288, j2, i2 != 0, j2 != 0, file);
    }

    public static void hp(Context context, com.byazt.nke.l lVar) {
        if (lVar != null) {
            eb = lVar;
        } else {
            eb = hp(new File(com.byazt.rz.l.l(context), "image"));
        }
    }

    private static long l() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    @Override // com.byazt.nke.l
    public File getCacheDir() {
        return this.f21611a;
    }

    @Override // com.byazt.nke.l
    public long getFileCacheSize() {
        return this.hp;
    }

    @Override // com.byazt.nke.l
    public int getMemoryCacheSize() {
        return this.f21613l;
    }

    @Override // com.byazt.nke.l
    public int getRawMemoryCacheSize() {
        return this.jx;
    }

    @Override // com.byazt.nke.l
    public boolean isDiskCache() {
        return this.f21614w;
    }

    @Override // com.byazt.nke.l
    public boolean isMemoryCache() {
        return this.f21612j;
    }

    @Override // com.byazt.nke.l
    public boolean isQueryAll() {
        return true;
    }

    @Override // com.byazt.nke.l
    public boolean isRawMemoryCache() {
        return this.jx > 0;
    }

    public hp(int i2, int i3, long j2, boolean z2, boolean z3, File file) {
        this.hp = j2;
        this.f21613l = i2;
        this.jx = i3;
        this.f21612j = z2;
        this.f21614w = z3;
        this.f21611a = file;
    }

    public static com.byazt.nke.l hp(File file) {
        int iMin;
        long jMin;
        file.mkdirs();
        if (eb == null) {
            iMin = Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 10485760);
            jMin = Math.min(l() / 16, 31457280L);
        } else {
            iMin = Math.min(eb.getMemoryCacheSize() / 2, 10485760);
            jMin = Math.min(eb.getFileCacheSize() / 2, 31457280L);
        }
        return new hp(Math.max(iMin, AVMDLDataLoaderConfigure.DEFAULT_MAX_FACTORY_MEMORY_SIZE), Math.max(jMin, 10485760L), file);
    }

    public static com.byazt.nke.l hp() {
        return eb;
    }
}

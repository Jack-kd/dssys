package com.kwad.sdk.core.imageloader.cache.disc.impl.ext;

import android.graphics.Bitmap;
import androidx.core.location.LocationRequestCompat;
import com.kwad.sdk.core.diskcache.a.a;
import com.kwad.sdk.core.imageloader.cache.disc.DiskCache;
import com.kwad.sdk.core.imageloader.cache.disc.naming.FileNameGenerator;
import com.kwad.sdk.core.imageloader.utils.IoUtils;
import com.kwad.sdk.core.imageloader.utils.L;
import com.kwad.sdk.crash.utils.b;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class LruDiskCache implements DiskCache {
    public static final int DEFAULT_BUFFER_SIZE = 32768;
    public static final Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT = Bitmap.CompressFormat.PNG;
    public static final int DEFAULT_COMPRESS_QUALITY = 100;
    private static final String ERROR_ARG_NEGATIVE = " argument must be positive number";
    private static final String ERROR_ARG_NULL = " argument must be not null";
    protected int bufferSize;
    protected a cache;
    protected Bitmap.CompressFormat compressFormat;
    protected int compressQuality;
    protected final FileNameGenerator fileNameGenerator;
    private File reserveCacheDir;

    public LruDiskCache(File file, FileNameGenerator fileNameGenerator, long j2) {
        this(file, null, fileNameGenerator, j2, 0);
    }

    private String getKey(String str) {
        return this.fileNameGenerator.generate(str);
    }

    private void initCache(File file, File file2, long j2, int i2) throws IOException {
        LruDiskCache lruDiskCache;
        try {
            this.cache = a.a(file, 1, 1, j2, i2);
        } catch (IOException e2) {
            L.e(e2);
            if (file2 != null) {
                lruDiskCache = this;
                lruDiskCache.initCache(file2, null, j2, i2);
            } else {
                lruDiskCache = this;
            }
            if (lruDiskCache.cache == null) {
                throw e2;
            }
        }
    }

    @Override // com.kwad.sdk.core.imageloader.cache.disc.DiskCache
    public void clear() {
        try {
            this.cache.delete();
        } catch (IOException e2) {
            L.e(e2);
        }
        try {
            initCache(this.cache.getDirectory(), this.reserveCacheDir, this.cache.getMaxSize(), this.cache.Lr());
        } catch (IOException e3) {
            L.e(e3);
        }
    }

    @Override // com.kwad.sdk.core.imageloader.cache.disc.DiskCache
    public void close() {
        b.closeQuietly(this.cache);
        this.cache = null;
    }

    @Override // com.kwad.sdk.core.imageloader.cache.disc.DiskCache
    public File get(String str) throws Throwable {
        Throwable th;
        a.c cVarEn;
        File fileEv = null;
        try {
            cVarEn = this.cache.en(getKey(str));
            if (cVarEn != null) {
                try {
                    try {
                        fileEv = cVarEn.ev(0);
                    } catch (IOException e2) {
                        e = e2;
                        L.e(e);
                        b.closeQuietly(cVarEn);
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    b.closeQuietly(cVarEn);
                    throw th;
                }
            }
            b.closeQuietly(cVarEn);
            return fileEv;
        } catch (IOException e3) {
            e = e3;
            cVarEn = null;
        } catch (Throwable th3) {
            th = th3;
            cVarEn = null;
            b.closeQuietly(cVarEn);
            throw th;
        }
    }

    @Override // com.kwad.sdk.core.imageloader.cache.disc.DiskCache
    public File getDirectory() {
        return this.cache.getDirectory();
    }

    @Override // com.kwad.sdk.core.imageloader.cache.disc.DiskCache
    public boolean remove(String str) {
        try {
            return this.cache.remove(getKey(str));
        } catch (IOException e2) {
            L.e(e2);
            return false;
        }
    }

    @Override // com.kwad.sdk.core.imageloader.cache.disc.DiskCache
    public boolean save(String str, InputStream inputStream, IoUtils.CopyListener copyListener) {
        a.C0604a c0604aEo = this.cache.eo(getKey(str));
        if (c0604aEo == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(c0604aEo.es(0), this.bufferSize);
        try {
            boolean zCopyStream = IoUtils.copyStream(inputStream, bufferedOutputStream, copyListener, this.bufferSize);
            b.closeQuietly(bufferedOutputStream);
            if (zCopyStream) {
                c0604aEo.commit();
                return zCopyStream;
            }
            c0604aEo.abort();
            return zCopyStream;
        } catch (Throwable th) {
            b.closeQuietly(bufferedOutputStream);
            c0604aEo.abort();
            throw th;
        }
    }

    public void setBufferSize(int i2) {
        this.bufferSize = i2;
    }

    public void setCompressFormat(Bitmap.CompressFormat compressFormat) {
        this.compressFormat = compressFormat;
    }

    public void setCompressQuality(int i2) {
        this.compressQuality = i2;
    }

    public LruDiskCache(File file, File file2, FileNameGenerator fileNameGenerator, long j2, int i2) throws IOException {
        this.bufferSize = 32768;
        this.compressFormat = DEFAULT_COMPRESS_FORMAT;
        this.compressQuality = 100;
        if (file == null) {
            throw new IllegalArgumentException("cacheDir argument must be not null");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
        }
        if (fileNameGenerator == null) {
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        }
        long j3 = j2 == 0 ? LocationRequestCompat.PASSIVE_INTERVAL : j2;
        i2 = i2 == 0 ? Integer.MAX_VALUE : i2;
        this.reserveCacheDir = file2;
        this.fileNameGenerator = fileNameGenerator;
        initCache(file, file2, j3, i2);
    }

    @Override // com.kwad.sdk.core.imageloader.cache.disc.DiskCache
    public boolean save(String str, Bitmap bitmap) {
        a.C0604a c0604aEo = this.cache.eo(getKey(str));
        if (c0604aEo == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(c0604aEo.es(0), this.bufferSize);
        try {
            boolean zCompress = bitmap.compress(this.compressFormat, this.compressQuality, bufferedOutputStream);
            if (zCompress) {
                c0604aEo.commit();
                return zCompress;
            }
            c0604aEo.abort();
            return zCompress;
        } finally {
            b.closeQuietly(bufferedOutputStream);
        }
    }
}

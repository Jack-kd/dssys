package com.smartdigimkt.e0;

import android.media.MediaMetadataRetriever;
import java.io.File;
import java.util.concurrent.ExecutorService;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExecutorService f39988a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f39989b;

    public e(f fVar, ExecutorService executorService) {
        this.f39989b = fVar;
        this.f39988a = executorService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            String strB = com.smartdigimkt.t3.n.a().b(4, com.smartdigimkt.c5.i.b(this.f39989b.f39990a.f40015f.f41818i));
            if (new File(strB).exists()) {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(strB);
                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(9);
                mediaMetadataRetriever.release();
                this.f39989b.f39990a.f40015f.f41790K = Integer.parseInt(strExtractMetadata);
                this.f39989b.f39990a.f40015f.f41791L = Integer.parseInt(strExtractMetadata2);
                this.f39989b.f39990a.f40015f.f41792M = Long.parseLong(strExtractMetadata3);
                com.smartdigimkt.y3.b bVarA = com.smartdigimkt.y3.b.a();
                com.smartdigimkt.l3.a aVar = this.f39989b.f39990a.f40017h;
                bVarA.getClass();
                String str = aVar.f41632f + "_ " + aVar.f41631e;
                com.smartdigimkt.y3.b.a().a(str).f42043g = System.currentTimeMillis();
                com.smartdigimkt.y3.b.a().a(str);
            }
            synchronized (this.f39988a) {
                this.f39988a.notifyAll();
            }
        } catch (Throwable unused) {
            this.f39989b.f39990a.a(4);
        }
    }
}

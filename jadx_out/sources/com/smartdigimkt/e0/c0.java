package com.smartdigimkt.e0;

import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;

/* loaded from: classes5.dex */
public abstract class c0 {
    public static b0 a(String str) throws IOException, IllegalArgumentException {
        b0 b0Var = null;
        try {
            if (TextUtils.isEmpty(str) || !new File(str).exists()) {
                return null;
            }
            b0 b0Var2 = new b0();
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(str);
                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                mediaMetadataRetriever.release();
                b0Var2.f39984a = Integer.parseInt(strExtractMetadata);
                b0Var2.f39985b = Integer.parseInt(strExtractMetadata2);
                return b0Var2;
            } catch (Exception e2) {
                e = e2;
                b0Var = b0Var2;
                e.printStackTrace();
                return b0Var;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.m3.e eVar) {
        if (cVar == null) {
            return;
        }
        synchronized (cVar) {
            try {
                if (!cVar.f41786G && !TextUtils.isEmpty(cVar.f41818i)) {
                    cVar.f41786G = true;
                    if (cVar.f41790K <= 0 && cVar.f41791L <= 0) {
                        if (eVar != null && eVar.f41915a == 3 && cVar.f41823n == 1 && TextUtils.equals(eVar.f41981w, "2")) {
                            com.smartdigimkt.b4.e.a().c(new a0(cVar));
                        }
                    }
                }
            } finally {
            }
        }
    }
}

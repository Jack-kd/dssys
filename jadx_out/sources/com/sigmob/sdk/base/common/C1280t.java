package com.sigmob.sdk.base.common;

import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.volley.toolbox.FileDownloader;

/* renamed from: com.sigmob.sdk.base.common.t, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1280t {

    /* renamed from: a, reason: collision with root package name */
    private static FileDownloader f36031a;

    public static FileDownloader a() {
        if (f36031a == null) {
            synchronized (C1280t.class) {
                try {
                    SigmobRequestQueue downloadRequestQueue = Networking.getDownloadRequestQueue();
                    if (f36031a == null && downloadRequestQueue != null) {
                        f36031a = new FileDownloader(downloadRequestQueue, 3);
                    }
                } finally {
                }
            }
        }
        return f36031a;
    }
}

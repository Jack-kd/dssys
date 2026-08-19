package com.ubix.ssp.ad.e.v;

import android.graphics.Bitmap;
import android.util.LruCache;
import android.widget.ImageView;
import com.ubix.ssp.ad.e.v.e;

/* loaded from: classes5.dex */
public interface a {
    LruCache<String, Bitmap> a();

    void a(String str, int i2, e.b bVar);

    void a(String str, ImageView imageView);

    void a(String str, ImageView imageView, int i2, e.b bVar);

    void a(String str, e.b bVar);

    Bitmap b(String str);

    void b(String str, ImageView imageView);

    boolean c(String str);

    boolean d(String str);
}

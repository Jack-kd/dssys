package com.byazt.nke;

import android.graphics.Bitmap;
import android.widget.ImageView;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public interface k {
    k cache(l lVar);

    k cacheDir(String str);

    k config(Bitmap.Config config);

    k converter(e eVar);

    k from(String str);

    k headers(boolean z2);

    k height(int i2);

    k isLocalRes(boolean z2);

    k key(String str);

    k loadSetp(sz szVar);

    k maxHeight(int i2);

    k maxWidth(int i2);

    k requestTime(boolean z2);

    k runIn(ExecutorService executorService);

    k scaleType(ImageView.ScaleType scaleType);

    k sync(boolean z2);

    jl to(ImageView imageView);

    jl to(b bVar);

    jl to(b bVar, int i2);

    k track(lv lvVar);

    k type(int i2);

    k width(int i2);
}

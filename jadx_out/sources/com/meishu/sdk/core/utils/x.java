package com.meishu.sdk.core.utils;

import android.graphics.Bitmap;
import com.meishu.sdk.core.domain.HttpResponse;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public interface x {
    void a(HttpResponse<byte[]> httpResponse, Bitmap bitmap, Bitmap bitmap2) throws IOException;

    void onFailure(@NotNull IOException iOException);
}

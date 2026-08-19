package com.meishu.sdk.core.utils;

import com.meishu.sdk.core.domain.HttpResponse;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public interface y {
    void onFailure(@NotNull IOException iOException);

    void onResponse(HttpResponse<byte[]> httpResponse) throws IOException;
}

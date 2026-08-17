package com.meishu.sdk.core.utils;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public interface z<response> {
    void a(response response) throws IOException;

    void onFailure(@NotNull IOException iOException);
}

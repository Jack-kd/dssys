package com.kwad.components.offline.api.core.adInnerEc;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public interface IHostUploadListener {
    void onFailed(int i2, String str);

    void onProgress(float f2);

    void onSuccess(String str);
}

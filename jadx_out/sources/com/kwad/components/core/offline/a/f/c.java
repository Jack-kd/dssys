package com.kwad.components.core.offline.a.f;

import android.content.Context;
import com.kwad.components.offline.api.tk.ITkOfflineCompo;
import com.kwad.components.offline.api.tk.TKDownloadListener;
import com.kwad.components.offline.api.tk.model.StyleTemplate;
import com.kwad.sdk.components.t;

/* loaded from: classes4.dex */
public interface c extends com.kwad.sdk.components.b {
    t a(Context context, String str, int i2, int i3, boolean z2);

    StyleTemplate checkStyleTemplateById(Context context, String str, String str2, String str3, int i2);

    String getJsBaseDir(Context context, String str);

    ITkOfflineCompo.TKState getState();

    void loadTkFileByTemplateId(Context context, String str, String str2, String str3, int i2, TKDownloadListener tKDownloadListener);

    void onDestroy();
}

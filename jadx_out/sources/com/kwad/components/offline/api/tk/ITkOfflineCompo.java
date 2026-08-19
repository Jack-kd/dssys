package com.kwad.components.offline.api.tk;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.IOfflineCompo;
import com.kwad.components.offline.api.tk.model.StyleTemplate;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public interface ITkOfflineCompo extends IOfflineCompo<ITkOfflineCompoInitConfig> {
    public static final String IMPL = "com.kwad.tachikoma.TkOfflineCompoImpl";
    public static final String PACKAGE_NAME = "com.kwad.components.tachikoma";

    public enum TKState {
        READY,
        SO_FAIL
    }

    StyleTemplate checkStyleTemplateById(Context context, String str, String str2, String str3, int i2);

    IOfflineCompoTachikomaContext getContext(Context context, String str, int i2, int i3, boolean z2);

    String getJsBaseDir(Context context, String str);

    TKState getState();

    String getTKVersion();

    void loadTkFileByTemplateId(Context context, String str, String str2, String str3, int i2, TKDownloadListener tKDownloadListener);

    void onConfigRefresh(Context context, @NonNull JSONObject jSONObject);

    void onDestroy();
}

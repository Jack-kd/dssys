package com.byazt.po;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import com.byazt.fu.DownloadInfo;
import com.byazt.yy.DownloadModel;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface j {
    AlertDialog hp(Activity activity, boolean z2, hp hpVar);

    String hp(boolean z2);

    JSONObject hp();

    void hp(int i2, String str, Map<String, Object> map, w wVar);

    void hp(Activity activity, String[] strArr, a aVar);

    void hp(s sVar, boolean z2);

    void hp(String str, byte[] bArr, String str2, w wVar);

    void hp(WeakReference<Context> weakReference, boolean z2, hp hpVar);

    void hp(JSONObject jSONObject, String str);

    boolean hp(Context context, String str);

    boolean hp(DownloadModel downloadModel);

    boolean hp(DownloadModel downloadModel, DownloadInfo downloadInfo);

    boolean hp(String str);

    boolean jx();

    eb l();

    void l(String str);

    boolean l(DownloadModel downloadModel, DownloadInfo downloadInfo);
}

package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import android.provider.Settings;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public enum e {
    instance;


    /* renamed from: a, reason: collision with root package name */
    private VideoEventEngineUploader f28803a;

    /* renamed from: b, reason: collision with root package name */
    private Context f28804b;

    public void a(Context context) {
        this.f28804b = context.getApplicationContext();
    }

    public synchronized void a(VideoEventEngineUploader videoEventEngineUploader) {
        this.f28803a = videoEventEngineUploader;
    }

    private void a(JSONObject jSONObject) {
        if (((TTVideoEngineLog.LogTurnOn >> 1) & 1) == 1) {
            Context context = this.f28804b;
            String string = context != null ? Settings.Global.getString(context.getContentResolver(), "engine.debug") : "";
            if (string != null) {
                for (String str : string.split(",", -1)) {
                    if (jSONObject.opt(str) != null) {
                        jSONObject.opt(str);
                    }
                }
            }
        }
    }

    public void a(boolean z2, JSONObject jSONObject) {
        synchronized (e.class) {
            if (jSONObject != null) {
                try {
                    a(jSONObject);
                    VideoEventEngineUploader videoEventEngineUploader = this.f28803a;
                    if (videoEventEngineUploader != null) {
                        videoEventEngineUploader.onEvent("video_playq", jSONObject);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}

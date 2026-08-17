package com.bykv.vk.component.ttvideo;

/* loaded from: classes3.dex */
public class PreloaderURLItem {

    /* renamed from: a, reason: collision with root package name */
    private String f28702a;

    /* renamed from: b, reason: collision with root package name */
    private String f28703b;

    /* renamed from: c, reason: collision with root package name */
    private final String f28704c;

    /* renamed from: d, reason: collision with root package name */
    private final long f28705d;

    /* renamed from: e, reason: collision with root package name */
    private String[] f28706e;

    /* renamed from: f, reason: collision with root package name */
    private IPreLoaderItemCallBackListener f28707f;

    public PreloaderURLItem(String str, String str2, long j2, String[] strArr) {
        this.f28703b = null;
        this.f28707f = null;
        this.f28702a = str;
        this.f28704c = str2;
        this.f28705d = j2;
        this.f28706e = strArr;
    }

    public IPreLoaderItemCallBackListener getCallBackListener() {
        return this.f28707f;
    }

    public String getFilePath() {
        return this.f28703b;
    }

    public String getKey() {
        return this.f28702a;
    }

    public long getPreloadSize() {
        return this.f28705d;
    }

    public String[] getUrls() {
        return this.f28706e;
    }

    public String getVideoId() {
        return this.f28704c;
    }

    public void setCallBackListener(IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener) {
        this.f28707f = iPreLoaderItemCallBackListener;
    }

    public void setKey(String str) {
        this.f28702a = str;
    }

    public PreloaderURLItem(String str, String str2, long j2, String[] strArr, String str3) {
        this.f28707f = null;
        this.f28702a = str;
        this.f28703b = str3;
        this.f28704c = str2;
        this.f28705d = j2;
        this.f28706e = strArr;
    }
}

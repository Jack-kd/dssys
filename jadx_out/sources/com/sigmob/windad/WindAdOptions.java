package com.sigmob.windad;

import com.sigmob.sdk.base.utils.s;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class WindAdOptions {

    /* renamed from: a, reason: collision with root package name */
    private String f39157a;

    /* renamed from: b, reason: collision with root package name */
    private String f39158b;

    /* renamed from: c, reason: collision with root package name */
    private HashMap<String, String> f39159c;

    /* renamed from: d, reason: collision with root package name */
    private WindCustomController f39160d;

    public WindAdOptions(String str, String str2) {
        if (s.b(str)) {
            this.f39157a = str.trim();
        }
        this.f39158b = str2;
    }

    public String getAppId() {
        return this.f39157a;
    }

    public String getAppKey() {
        return this.f39158b;
    }

    public WindCustomController getCustomController() {
        return this.f39160d;
    }

    public HashMap<String, String> getExtData() {
        return this.f39159c;
    }

    public WindAdOptions setCustomController(WindCustomController windCustomController) {
        this.f39160d = windCustomController;
        return this;
    }

    public WindAdOptions setExtData(HashMap<String, String> map) {
        this.f39159c = map;
        return this;
    }
}

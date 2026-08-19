package com.sigmob.sdk.base.mta;

/* loaded from: classes4.dex */
public class PointEntityActive extends PointEntitySigmobSuper {

    /* renamed from: a, reason: collision with root package name */
    private String f36331a;

    /* renamed from: b, reason: collision with root package name */
    private String f36332b;

    /* renamed from: c, reason: collision with root package name */
    private String f36333c;

    /* renamed from: d, reason: collision with root package name */
    private String f36334d;

    public static PointEntityActive ActiveTracking(String str, String str2, String str3, String str4) {
        PointEntityActive pointEntityActive = new PointEntityActive();
        pointEntityActive.setAc_type(PointType.WIND_ACTIVE);
        pointEntityActive.setCategory(str);
        pointEntityActive.setActive_id(str2);
        pointEntityActive.setDuration(str3);
        pointEntityActive.setTimestamp(str4);
        pointEntityActive.commit();
        return pointEntityActive;
    }

    public String getActive_id() {
        return this.f36331a;
    }

    public String getDuration() {
        return this.f36334d;
    }

    public String getRequest_id() {
        return this.f36332b;
    }

    public String getVid() {
        return this.f36333c;
    }

    public void setActive_id(String str) {
        this.f36331a = str;
    }

    public void setDuration(String str) {
        this.f36334d = str;
    }

    public void setRequest_id(String str) {
        this.f36332b = str;
    }

    public void setVid(String str) {
        this.f36333c = str;
    }
}

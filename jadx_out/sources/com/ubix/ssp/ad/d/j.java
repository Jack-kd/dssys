package com.ubix.ssp.ad.d;

import android.text.TextUtils;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.nativee.UBiXImage;
import com.ubix.ssp.open.nativee.UBiXVideo;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class j extends ParamsReview {

    /* renamed from: a, reason: collision with root package name */
    private String f45962a;

    /* renamed from: b, reason: collision with root package name */
    private ArrayList<String> f45963b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f45964c;

    /* renamed from: d, reason: collision with root package name */
    private String f45965d;

    /* renamed from: e, reason: collision with root package name */
    private String f45966e;

    /* renamed from: f, reason: collision with root package name */
    private String f45967f;

    /* renamed from: g, reason: collision with root package name */
    private String f45968g;

    /* renamed from: h, reason: collision with root package name */
    private String f45969h;

    /* renamed from: i, reason: collision with root package name */
    private String f45970i;

    /* renamed from: j, reason: collision with root package name */
    private String f45971j;

    /* renamed from: k, reason: collision with root package name */
    private ArrayList<UBiXImage> f45972k = new ArrayList<>();

    /* renamed from: l, reason: collision with root package name */
    private UBiXVideo f45973l = new UBiXVideo();

    /* renamed from: m, reason: collision with root package name */
    private String f45974m;

    private j(com.ubix.ssp.ad.e.y.a.a aVar, boolean z2, boolean z3, boolean z4) {
        String str;
        String str2;
        String str3;
        String str4;
        this.f45963b = new ArrayList<>();
        String str5 = "";
        this.f45974m = "";
        if (z3) {
            a.b bVar = aVar.f47442d;
            str2 = bVar.f47485o;
            str3 = bVar.f47484n;
            str = bVar.f47483m;
        } else {
            str = "";
            str2 = str;
            str3 = str2;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        if (!z2) {
            boolean z5 = aVar.f47442d.f47489s == 2005;
            int i2 = 0;
            while (true) {
                if (i2 >= (!z5 ? 1 : aVar.f47442d.f47480j.length)) {
                    break;
                }
                a.b.C0834b c0834b = aVar.f47442d.f47480j[i2];
                if (z4) {
                    if (!TextUtils.isEmpty(c0834b.f47502f)) {
                        str4 = c0834b.f47502f;
                        arrayList.add(str4);
                    }
                } else if (!TextUtils.isEmpty(c0834b.f47499c)) {
                    str4 = c0834b.f47499c;
                    arrayList.add(str4);
                }
                UBiXImage uBiXImage = new UBiXImage();
                uBiXImage.setUrl(c0834b.f47499c);
                uBiXImage.setWidth(c0834b.f47500d);
                uBiXImage.setHeight(c0834b.f47501e);
                uBiXImage.setMaterialId(c0834b.f47502f);
                this.f45972k.add(uBiXImage);
                i2++;
            }
            if (!arrayList.isEmpty()) {
                this.f45962a = arrayList.get(0);
            }
        } else if (z4) {
            if (!TextUtils.isEmpty(aVar.f47442d.f47481k.f47545k)) {
                str5 = aVar.f47442d.f47481k.f47545k;
                arrayList.add(str5);
            }
            this.f45973l.setWidth(aVar.f47442d.f47481k.f47540f);
            this.f45973l.setHeight(aVar.f47442d.f47481k.f47541g);
            this.f45973l.setVideoUrl(aVar.f47442d.f47481k.f47536b);
            this.f45973l.setCoverUrl(aVar.f47442d.f47481k.f47537c);
            this.f45973l.setMaterialId(aVar.f47442d.f47481k.f47545k);
            this.f45973l.setDuration((long) (aVar.f47442d.f47481k.f47538d * 1000.0f));
            this.f45962a = str5;
        } else {
            if (!TextUtils.isEmpty(aVar.f47442d.f47481k.f47537c)) {
                arrayList.add(aVar.f47442d.f47481k.f47537c);
            }
            if (!TextUtils.isEmpty(aVar.f47442d.f47481k.f47536b)) {
                str5 = aVar.f47442d.f47481k.f47536b;
                arrayList.add(str5);
            }
            this.f45973l.setWidth(aVar.f47442d.f47481k.f47540f);
            this.f45973l.setHeight(aVar.f47442d.f47481k.f47541g);
            this.f45973l.setVideoUrl(aVar.f47442d.f47481k.f47536b);
            this.f45973l.setCoverUrl(aVar.f47442d.f47481k.f47537c);
            this.f45973l.setMaterialId(aVar.f47442d.f47481k.f47545k);
            this.f45973l.setDuration((long) (aVar.f47442d.f47481k.f47538d * 1000.0f));
            this.f45962a = str5;
        }
        this.f45974m = aVar.f47451m;
        this.f45963b = arrayList;
        this.f45964c = z2;
        a.b bVar2 = aVar.f47442d;
        this.f45965d = bVar2.f47475e;
        this.f45966e = bVar2.f47476f;
        this.f45967f = bVar2.f47472b;
        this.f45971j = bVar2.f47478h;
        this.f45968g = str2;
        this.f45970i = str3;
        this.f45969h = str;
    }

    public static ParamsReview a(com.ubix.ssp.ad.e.y.a.a aVar, boolean z2, boolean z3, boolean z4) {
        return new j(aVar, z2, z3, z4);
    }

    private String getPR() {
        return this.f45974m;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public String getAppPackageName() {
        return this.f45971j;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public String getCreativeId() {
        return this.f45967f;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public String getDeeplinkUrl() {
        return this.f45968g;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public String getDesc() {
        return this.f45966e;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public String getDownloadUrl() {
        return this.f45970i;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public String getLandingPageUrl() {
        return this.f45969h;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public String getTitle() {
        return this.f45965d;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public ArrayList<UBiXImage> getUBiXImageList() {
        return this.f45972k;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public UBiXVideo getUBiXVideo() {
        return this.f45973l;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public String getUrl() {
        return TextUtils.isEmpty(this.f45962a) ? "" : this.f45962a;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public ArrayList<String> getUrlList() {
        return this.f45963b;
    }

    @Override // com.ubix.ssp.open.ParamsReview
    public boolean isVideo() {
        return this.f45964c;
    }
}

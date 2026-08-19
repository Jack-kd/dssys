package com.sigmob.sdk.base;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1286z;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.db.a;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.WindAdMetaData;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmobRequest;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.WindAds;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public abstract class m {

    /* renamed from: b, reason: collision with root package name */
    private static final HashMap<String, h> f36304b = new HashMap<>();

    /* renamed from: a, reason: collision with root package name */
    private h f36305a;

    /* renamed from: d, reason: collision with root package name */
    private boolean f36307d;

    /* renamed from: e, reason: collision with root package name */
    private String f36308e;

    /* renamed from: g, reason: collision with root package name */
    private int f36310g;

    /* renamed from: l, reason: collision with root package name */
    protected WindAdRequest f36315l;

    /* renamed from: h, reason: collision with root package name */
    protected AdStatus f36311h = AdStatus.AdStatusNone;

    /* renamed from: i, reason: collision with root package name */
    protected int f36312i = 0;

    /* renamed from: j, reason: collision with root package name */
    protected int f36313j = 0;

    /* renamed from: k, reason: collision with root package name */
    protected int f36314k = 0;

    /* renamed from: c, reason: collision with root package name */
    private int f36306c = 0;

    /* renamed from: f, reason: collision with root package name */
    private int f36309f = 0;

    /* renamed from: m, reason: collision with root package name */
    private String f36316m = "CNY";

    public m(WindAdRequest windAdRequest, boolean z2) {
        this.f36315l = windAdRequest;
        windAdRequest.setHalfInterstitial(z2);
    }

    private void b(String str) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return;
        }
        try {
            com.sigmob.sdk.base.db.a.a().getWritableDatabase().delete(com.sigmob.sdk.base.db.a.f36075f, "adslot_id=?", new String[]{str});
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public abstract void a(WindAdError windAdError);

    public abstract void a(String str, String str2);

    public abstract Map<String, BiddingResponse> b();

    public abstract com.sigmob.sdk.manager.b c();

    public String d() {
        WindAdRequest windAdRequest = this.f36315l;
        if (windAdRequest == null) {
            return null;
        }
        return windAdRequest.getPlacementId();
    }

    public Integer e() {
        WindAdRequest windAdRequest = this.f36315l;
        if (windAdRequest == null) {
            return null;
        }
        return Integer.valueOf(windAdRequest.getAdType());
    }

    public boolean f() {
        String strD = d();
        com.sigmob.sdk.manager.b bVarC = c();
        return !com.sigmob.sdk.base.utils.s.a((CharSequence) strD) && bVarC != null && this.f36311h == AdStatus.AdStatusReady && bVarC.c();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean g() {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.m.g():boolean");
    }

    public int getBidFloor() {
        return this.f36310g;
    }

    public String getBid_token() {
        return this.f36308e;
    }

    public abstract String getCurrency();

    public abstract String getEcpm();

    public Map<String, String> getSaasOptions() {
        com.sigmob.sdk.manager.b bVarC = c();
        if (bVarC == null) {
            return null;
        }
        BaseAdUnit baseAdUnitI = bVarC.i();
        BaseAdUnit baseAdUnitE = bVarC.e();
        if (baseAdUnitI == null) {
            baseAdUnitI = baseAdUnitE;
        }
        if (baseAdUnitI == null) {
            return null;
        }
        return baseAdUnitI.getSaasOptions();
    }

    public WindAdMetaData getWindAdMetaData() {
        com.sigmob.sdk.manager.b bVarC = c();
        if (bVarC == null) {
            return null;
        }
        BaseAdUnit baseAdUnitI = bVarC.i();
        if (baseAdUnitI == null) {
            baseAdUnitI = bVarC.e();
        }
        return WindAdMetaData.create(baseAdUnitI);
    }

    public String h() {
        return this.f36316m;
    }

    public boolean loadAd() {
        this.f36307d = false;
        this.f36308e = null;
        return false;
    }

    public void sendLossNotificationWithInfo(Map<String, Object> map) {
        String strValueOf;
        try {
            Map<String, BiddingResponse> mapB = b();
            if (mapB == null) {
                return;
            }
            Set<String> setKeySet = mapB.keySet();
            if (com.sigmob.sdk.base.utils.f.a(setKeySet)) {
                return;
            }
            for (String str : setKeySet) {
                BiddingResponse biddingResponse = mapB.get(str);
                if (biddingResponse != null) {
                    String strReplace = biddingResponse.lose_url;
                    if (!com.sigmob.sdk.base.utils.s.a((CharSequence) strReplace)) {
                        if (com.sigmob.sdk.base.utils.f.b(map)) {
                            if (map.get(WindAds.AUCTION_PRICE) != null) {
                                a(SigMacroCommon._PUBLISHERPRICE_, String.valueOf(map.get(WindAds.AUCTION_PRICE)));
                                strReplace = strReplace.replace("__AUCTION_PRICE__", String.valueOf(map.get(WindAds.AUCTION_PRICE)));
                            }
                            if (map.get(WindAds.CURRENCY) != null) {
                                a(SigMacroCommon._CURRENCY_, String.valueOf(map.get(WindAds.CURRENCY)));
                                strValueOf = String.valueOf(map.get(WindAds.CURRENCY));
                            } else {
                                a(SigMacroCommon._CURRENCY_, this.f36316m);
                                strValueOf = this.f36316m;
                            }
                            strReplace = strReplace.replace("__CURRENCY__", strValueOf);
                            if (map.get(WindAds.LOSS_REASON) != null) {
                                strReplace = strReplace.replace("_BIDLOSSCODE_", String.valueOf(map.get(WindAds.LOSS_REASON)));
                            }
                            if (map.get(WindAds.ADN_ID) != null) {
                                strReplace = strReplace.replace("_WINADNID_", String.valueOf(map.get(WindAds.ADN_ID)));
                            }
                        }
                        com.sigmob.sdk.base.network.b.a(strReplace, PointCategory.LOSE, this.f36315l, str);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void sendWinNotificationWithInfo(Map<String, Object> map) {
        String strValueOf;
        try {
            Map<String, BiddingResponse> mapB = b();
            if (mapB == null) {
                return;
            }
            Set<String> setKeySet = mapB.keySet();
            if (com.sigmob.sdk.base.utils.f.a(setKeySet)) {
                return;
            }
            for (String str : setKeySet) {
                BiddingResponse biddingResponse = mapB.get(str);
                if (biddingResponse != null) {
                    String strReplace = biddingResponse.win_url;
                    if (!com.sigmob.sdk.base.utils.s.a((CharSequence) strReplace)) {
                        if (com.sigmob.sdk.base.utils.f.b(map)) {
                            if (map.get(WindAds.AUCTION_PRICE) != null) {
                                a(SigMacroCommon._PUBLISHERPRICE_, String.valueOf(map.get(WindAds.AUCTION_PRICE)));
                                strReplace = strReplace.replace("__AUCTION_PRICE__", String.valueOf(map.get(WindAds.AUCTION_PRICE)));
                            }
                            if (map.get(WindAds.HIGHEST_LOSS_PRICE) != null) {
                                a(SigMacroCommon._HIGHESTLOSSPRICE_, String.valueOf(map.get(WindAds.HIGHEST_LOSS_PRICE)));
                                strReplace = strReplace.replace("__HIGHEST_LOSS_PRICE__", String.valueOf(map.get(WindAds.HIGHEST_LOSS_PRICE)));
                            }
                            if (map.get(WindAds.CURRENCY) != null) {
                                a(SigMacroCommon._CURRENCY_, String.valueOf(map.get(WindAds.CURRENCY)));
                                strValueOf = String.valueOf(map.get(WindAds.CURRENCY));
                            } else {
                                a(SigMacroCommon._CURRENCY_, this.f36316m);
                                strValueOf = this.f36316m;
                            }
                            strReplace = strReplace.replace("__CURRENCY__", strValueOf);
                        }
                        com.sigmob.sdk.base.network.b.a(strReplace, PointCategory.WIN, this.f36315l, str);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setBidEcpm(int i2) {
        a(SigMacroCommon._PUBLISHERPRICE_, String.valueOf(i2));
    }

    public void setBidFloor(int i2) {
        this.f36310g = i2;
        com.sigmob.sdk.manager.b bVarC = c();
        if (bVarC == null) {
            return;
        }
        bVarC.d(Integer.valueOf(i2));
    }

    public void setCurrency(String str) {
        this.f36316m = str;
        com.sigmob.sdk.manager.b bVarC = c();
        if (bVarC == null) {
            return;
        }
        bVarC.a(str);
    }

    private h a(String str) {
        boolean zIsClosed;
        h hVar = new h();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = com.sigmob.sdk.base.db.a.a().getReadableDatabase().rawQuery("select error_code, count(*) as num from adload_event where adslot_id = ? group by adslot_id", new String[]{str});
            a(hVar, cursorRawQuery);
            if (cursorRawQuery != null) {
                if (!zIsClosed) {
                    return hVar;
                }
            }
        } catch (Throwable th) {
            try {
                SigmobLog.e(th.getMessage());
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            } finally {
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            }
        }
        return hVar;
    }

    public boolean loadAd(String str) {
        this.f36307d = true;
        this.f36308e = str;
        SigmobLog.d("loadAd: bidToken = " + str);
        return false;
    }

    private void a() {
        this.f36312i = 0;
        b(d());
        this.f36305a.a();
    }

    public void a(final C1286z c1286z, final String str) {
        ad.a("request", "init", this.f36315l, (LoadAdRequest) null, new ad.a() { // from class: com.sigmob.sdk.base.q
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f36537a.a(str, c1286z, obj);
            }
        });
    }

    private void a(h hVar, Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        int i2 = cursor.getInt(cursor.getColumnIndexOrThrow("error_code"));
        int i3 = cursor.getInt(cursor.getColumnIndexOrThrow("num"));
        do {
            if (i2 != 0) {
                hVar.f36251a = i3;
            }
            hVar.f36252b += i3;
            switch (i2) {
                case 600200:
                case 600201:
                case 600203:
                case 600204:
                    hVar.f36257g = i3;
                    break;
                case 600900:
                    hVar.f36255e = i3;
                    break;
                case 600905:
                    hVar.f36253c = i3;
                    break;
                case 610012:
                    hVar.f36258h = i3;
                    break;
                case 610013:
                    hVar.f36254d = i3;
                    break;
            }
        } while (cursor.moveToNext());
    }

    private void a(final String str, final int i2) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = com.sigmob.sdk.base.db.a.a().getWritableDatabase();
            SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
            builder.setTableName(com.sigmob.sdk.base.db.a.f36075f);
            HashMap map = new HashMap();
            map.put("adslot_id", str);
            map.put("error_code", Integer.valueOf(i2));
            map.put("timestamp", Long.valueOf(System.currentTimeMillis()));
            builder.setColumnValues(map);
            com.sigmob.sdk.base.db.a.a().a(writableDatabase, builder.build(), new a.InterfaceC0766a() { // from class: com.sigmob.sdk.base.m.1
                @Override // com.sigmob.sdk.base.db.a.InterfaceC0766a
                public void a() {
                    SigmobLog.d(str + " insert load error event " + i2 + " onSuccess: ");
                }

                @Override // com.sigmob.sdk.base.db.a.InterfaceC0766a
                public void a(Throwable th) {
                    SigmobLog.e(str + " insert load error event " + i2 + " onFailed: ", th);
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, C1286z c1286z, Object obj) {
        if (obj instanceof PointEntitySigmobRequest) {
            PointEntitySigmobRequest pointEntitySigmobRequest = (PointEntitySigmobRequest) obj;
            pointEntitySigmobRequest.setLoad_count(String.valueOf(this.f36305a.f36252b));
            pointEntitySigmobRequest.setInvalid_load_count(String.valueOf(this.f36305a.f36251a));
            pointEntitySigmobRequest.setGdpr_filters(String.valueOf(this.f36305a.f36253c));
            pointEntitySigmobRequest.setInterval_filters(String.valueOf(this.f36305a.f36254d));
            pointEntitySigmobRequest.setPldempty_filters(String.valueOf(this.f36312i));
            pointEntitySigmobRequest.setInit_filters(String.valueOf(this.f36305a.f36255e));
            pointEntitySigmobRequest.setLoading_filters(String.valueOf(this.f36305a.f36258h));
            pointEntitySigmobRequest.setProguard_filters(String.valueOf(this.f36305a.f36257g));
            pointEntitySigmobRequest.setAdx_id(null);
            if (com.sigmob.sdk.base.utils.s.b(this.f36308e)) {
                pointEntitySigmobRequest.setBid_token(this.f36308e);
            }
            if (com.sigmob.sdk.base.utils.s.b(str)) {
                pointEntitySigmobRequest.setTrace_id(str);
            }
            Map<String, String> options = pointEntitySigmobRequest.getOptions();
            if (v.b(c1286z)) {
                options.put(PointParamKey.FEED_PRE_REQUEST_COUNT, String.valueOf(c1286z.f36059a));
                options.put(PointParamKey.FEED_PRE_READY_COUNT, String.valueOf(c1286z.f36060b));
            }
            options.put(PointParamKey.IS_MINOR, i.a().d() ? "0" : "1");
            options.put(PointParamKey.IS_UNPERSONALIZED, i.a().e() ? "0" : "1");
            options.put(PointParamKey.PERSONALIZED_FILTERS, String.valueOf(this.f36305a.f36256f));
            options.put(PointParamKey.REQUEST_SCENE_TYPE, String.valueOf(j.NormalRequest.a()));
            pointEntitySigmobRequest.setOptions(options);
        }
        a();
    }

    public void a(boolean z2) {
        this.f36307d = z2;
    }
}

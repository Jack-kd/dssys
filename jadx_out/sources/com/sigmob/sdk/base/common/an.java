package com.sigmob.sdk.base.common;

import android.content.Context;
import android.net.Uri;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.MiMarketManager;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.models.rtb.WXProgramRes;

/* loaded from: classes4.dex */
public enum an {
    IGNORE_ABOUT_SCHEME(0 == true ? 1 : 0) { // from class: com.sigmob.sdk.base.common.an.1
        @Override // com.sigmob.sdk.base.common.an
        public String a(BaseAdUnit baseAdUnit) {
            return null;
        }

        @Override // com.sigmob.sdk.base.common.an
        public void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) {
            an.b(this, "performAction", baseAdUnit, null);
            SigmobLog.d("Link to about page ignored.");
        }

        @Override // com.sigmob.sdk.base.common.an
        public boolean a(Uri uri, int i2) {
            return "about".equalsIgnoreCase(uri.getScheme());
        }
    },
    MINI_PROGRAM(0 == true ? 1 : 0) { // from class: com.sigmob.sdk.base.common.an.2
        @Override // com.sigmob.sdk.base.common.an
        public String a(BaseAdUnit baseAdUnit) {
            WXProgramRes wXProgramRes;
            if (baseAdUnit == null || (wXProgramRes = baseAdUnit.getWXProgramRes()) == null) {
                return null;
            }
            return wXProgramRes.wx_app_id;
        }

        @Override // com.sigmob.sdk.base.common.an
        public void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) throws Exception {
            an.b(this, "performAction", baseAdUnit, null);
            int interactionType = baseAdUnit.getInteractionType();
            if (interactionType == 7) {
                WXProgramRes wXProgramRes = baseAdUnit.getWXProgramRes();
                if (wXProgramRes == null) {
                    return;
                }
                com.sigmob.sdk.base.utils.h.a(com.sigmob.sdk.b.e(), wXProgramRes.wx_app_id, wXProgramRes.wx_app_username, wXProgramRes.wx_app_path, wXProgramRes.wx_business_type.intValue(), wXProgramRes.wx_ext_msg);
                return;
            }
            String str = "performAction interaction_type is not right with " + interactionType;
            an.b(this, "performAction", baseAdUnit, str);
            throw new Exception(str);
        }

        @Override // com.sigmob.sdk.base.common.an
        public boolean a(Uri uri, int i2) {
            String scheme = uri.getScheme();
            return ("HTTP".equalsIgnoreCase(scheme) || "HTTPS".equalsIgnoreCase(scheme) || i2 != 7) ? false : true;
        }
    },
    FOLLOW_DEEP_LINK(1 == true ? 1 : 0) { // from class: com.sigmob.sdk.base.common.an.3
        @Override // com.sigmob.sdk.base.common.an
        public String a(BaseAdUnit baseAdUnit) {
            if (baseAdUnit == null) {
                return null;
            }
            return baseAdUnit.getDeeplinkUrl();
        }

        @Override // com.sigmob.sdk.base.common.an
        public void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) throws Exception {
            an.b(this, "performAction", baseAdUnit, null);
            try {
                int interactionType = baseAdUnit.getInteractionType();
                C1258h.d(baseAdUnit);
                baseAdUnit.setDeeplinkUri(uri);
                String host = uri.getHost();
                if (interactionType != 8 && (!com.sigmob.sdk.base.utils.s.b(host) || !host.equalsIgnoreCase("hapjs.org"))) {
                    com.sigmob.sdk.base.utils.h.a(context, uri, com.sigmob.sdk.base.utils.h.a(context, uri, baseAdUnit.getMarketPackageNameList()), baseAdUnit.enableSmallWindow(Integer.valueOf(interactionType)));
                    return;
                }
                com.sigmob.sdk.base.utils.h.a(context, uri, com.sigmob.sdk.b.a());
            } catch (Exception e2) {
                C1258h.d((BaseAdUnit) null);
                baseAdUnit.setDeeplinkUri(null);
                throw e2;
            }
        }

        @Override // com.sigmob.sdk.base.common.an
        public boolean a(Uri uri, int i2) {
            String scheme = uri.getScheme();
            String host = uri.getHost();
            return (i2 == 8 || (com.sigmob.sdk.base.utils.s.b(host) && host.equalsIgnoreCase("hapjs.org"))) ? "HTTP".equalsIgnoreCase(scheme) || "HTTPS".equalsIgnoreCase(scheme) || "HAP".equalsIgnoreCase(scheme) : ("HTTP".equalsIgnoreCase(scheme) || "HTTPS".equalsIgnoreCase(scheme)) ? false : true;
        }
    },
    FOLLOW_PACKAGE_NAME(1 == true ? 1 : 0) { // from class: com.sigmob.sdk.base.common.an.4
        @Override // com.sigmob.sdk.base.common.an
        public String a(BaseAdUnit baseAdUnit) {
            if (baseAdUnit == null) {
                return null;
            }
            return com.sigmob.sdk.base.utils.s.a((CharSequence) baseAdUnit.getApkPackageName()) ? baseAdUnit.getProductId() : baseAdUnit.getApkPackageName();
        }

        @Override // com.sigmob.sdk.base.common.an
        public void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) throws Exception {
            an.b(this, "performAction", baseAdUnit, null);
            String apkPackageName = baseAdUnit.getApkPackageName();
            if (baseAdUnit.getsubInteractionType() == 2 || com.sigmob.sdk.base.utils.s.b(apkPackageName)) {
                if (!com.sigmob.sdk.base.utils.s.b(apkPackageName)) {
                    apkPackageName = baseAdUnit.getProductId();
                }
                if (com.sigmob.sdk.base.utils.s.b(apkPackageName)) {
                    boolean zA = com.sigmob.sdk.base.utils.v.a(baseAdUnit.enableSmallWindow());
                    try {
                        C1258h.c(baseAdUnit);
                        com.sigmob.sdk.base.utils.h.a(context, (Uri) null, apkPackageName, zA);
                        return;
                    } catch (Throwable th) {
                        an.b(this, "performAction", baseAdUnit, th.getMessage());
                        C1258h.c((BaseAdUnit) null);
                    }
                }
            }
            throw new Exception("can't launch application for packageName " + baseAdUnit.getProductId());
        }

        @Override // com.sigmob.sdk.base.common.an
        public boolean a(Uri uri, int i2) {
            return i2 == 2;
        }
    },
    MARKET_SCHEME(0 == true ? 1 : 0) { // from class: com.sigmob.sdk.base.common.an.5
        @Override // com.sigmob.sdk.base.common.an
        public String a(BaseAdUnit baseAdUnit) {
            AndroidMarket androidMarket;
            if (baseAdUnit == null || (androidMarket = baseAdUnit.getAndroidMarket()) == null) {
                return null;
            }
            return androidMarket.market_url;
        }

        @Override // com.sigmob.sdk.base.common.an
        public void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) throws Exception {
            String strA = null;
            an.b(this, "performAction", baseAdUnit, null);
            AndroidMarket androidMarket = baseAdUnit.getAndroidMarket();
            if (androidMarket == null) {
                return;
            }
            int iIntValue = ((Integer) Wire.get(androidMarket.type, 0)).intValue();
            if (com.sigmob.sdk.base.utils.s.b(androidMarket.appstore_package_name)) {
                try {
                    if (AppPackageUtil.getPackageVersionCode(context, androidMarket.appstore_package_name) != -1) {
                        strA = androidMarket.appstore_package_name;
                    }
                } catch (Throwable th) {
                    an.b(this, "performAction", baseAdUnit, th.getMessage());
                    SigmobLog.e("get store package error " + th.getMessage());
                }
            }
            Uri uri2 = Uri.parse(androidMarket.market_url);
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) strA)) {
                strA = com.sigmob.sdk.base.utils.h.a(context, uri2, baseAdUnit.getMarketPackageNameList());
            }
            if (iIntValue == 1) {
                new MiMarketManager.DirectMailStatusReceiver().a(com.sigmob.sdk.b.e(), baseAdUnit);
            }
            com.sigmob.sdk.base.utils.h.a(context, uri2, strA);
        }

        @Override // com.sigmob.sdk.base.common.an
        public boolean a(Uri uri, int i2) {
            String scheme = uri.getScheme();
            return ("HTTP".equalsIgnoreCase(scheme) || "HTTPS".equalsIgnoreCase(scheme)) ? false : true;
        }
    },
    DOWNLOAD_APK(1 == true ? 1 : 0) { // from class: com.sigmob.sdk.base.common.an.6
        @Override // com.sigmob.sdk.base.common.an
        public String a(BaseAdUnit baseAdUnit) {
            if (baseAdUnit == null) {
                return null;
            }
            return baseAdUnit.getLanding_page();
        }

        @Override // com.sigmob.sdk.base.common.an
        public void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) throws Exception {
            int interactionType;
            an.b(this, "performAction", baseAdUnit, null);
            if (baseAdUnit == null || (interactionType = baseAdUnit.getInteractionType()) == 2 || interactionType == 3) {
                return;
            }
            String str = "Could not handle download Scheme url: " + uri;
            an.b(this, "performAction", baseAdUnit, str);
            throw new Exception(str);
        }

        @Override // com.sigmob.sdk.base.common.an
        public boolean a(Uri uri, int i2) {
            String scheme = uri.getScheme();
            return "HTTP".equalsIgnoreCase(scheme) || "HTTPS".equalsIgnoreCase(scheme);
        }
    },
    OPEN_WITH_BROWSER(1 == true ? 1 : 0) { // from class: com.sigmob.sdk.base.common.an.7
        @Override // com.sigmob.sdk.base.common.an
        public String a(BaseAdUnit baseAdUnit) {
            if (baseAdUnit == null) {
                return null;
            }
            return baseAdUnit.getLanding_page();
        }

        @Override // com.sigmob.sdk.base.common.an
        public void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) throws Exception {
            an.b(this, "performAction", baseAdUnit, null);
            if (baseAdUnit.getInteractionType() != 8) {
                if (aoVar.a()) {
                    com.sigmob.sdk.base.utils.h.a(context, uri);
                    return;
                } else {
                    C1258h.a(baseAdUnit);
                    BaseAdActivity.a(context, (Class<? extends BaseAdActivity>) AdActivity.class, baseAdUnit.getUuid());
                    return;
                }
            }
            try {
                C1258h.d(baseAdUnit);
                baseAdUnit.setDeeplinkUri(uri);
                com.sigmob.sdk.base.utils.h.a(context, uri, com.sigmob.sdk.b.a());
            } catch (Exception e2) {
                an.b(this, "performAction", baseAdUnit, e2.getMessage());
                C1258h.d((BaseAdUnit) null);
                baseAdUnit.setDeeplinkUri(null);
                throw e2;
            }
        }

        @Override // com.sigmob.sdk.base.common.an
        public boolean a(Uri uri, int i2) {
            if (uri != null) {
                return "HTTP".equalsIgnoreCase(uri.getScheme()) || "HTTPS".equalsIgnoreCase(uri.getScheme());
            }
            return false;
        }
    },
    NOOP(0 == true ? 1 : 0) { // from class: com.sigmob.sdk.base.common.an.8
        @Override // com.sigmob.sdk.base.common.an
        public String a(BaseAdUnit baseAdUnit) {
            return null;
        }

        @Override // com.sigmob.sdk.base.common.an
        public void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) {
            an.b(this, "performAction", baseAdUnit, null);
        }

        @Override // com.sigmob.sdk.base.common.an
        public boolean a(Uri uri, int i2) {
            return false;
        }
    };


    /* renamed from: i, reason: collision with root package name */
    private final boolean f35804i;

    an(boolean z2) {
        this.f35804i = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(an anVar, String str, BaseAdUnit baseAdUnit, String str2) {
        if (anVar == null || baseAdUnit == null) {
            return;
        }
        String strName = anVar.name();
        String deeplinkUrl = baseAdUnit.getDeeplinkUrl();
        int interactionType = baseAdUnit.getInteractionType();
        if (com.sigmob.sdk.base.utils.s.b(str2)) {
            SigmobLogger.e(strName, str + ": error = " + str2, new Object[0]);
            return;
        }
        SigmobLogger.d(strName, str + ": deeplinkUrl = " + deeplinkUrl + ", interactionType = " + interactionType, new Object[0]);
    }

    public abstract String a(BaseAdUnit baseAdUnit);

    public abstract void a(Context context, Uri uri, ao aoVar, BaseAdUnit baseAdUnit) throws Exception;

    public abstract boolean a(Uri uri, int i2);

    public void a(ao aoVar, Context context, Uri uri, boolean z2, BaseAdUnit baseAdUnit) throws Exception {
        SigmobLog.d("Ad event URL: " + uri);
        if (this.f35804i && !z2) {
            throw new Exception("Attempted to handle action without user interaction.");
        }
        a(context, uri, aoVar, baseAdUnit);
    }
}

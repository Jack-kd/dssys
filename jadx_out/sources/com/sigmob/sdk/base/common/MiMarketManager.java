package com.sigmob.sdk.base.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.MiMarketManager;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class MiMarketManager {

    /* renamed from: a, reason: collision with root package name */
    private static final int f35614a = 0;

    /* renamed from: b, reason: collision with root package name */
    private static final int f35615b = 1;

    /* renamed from: c, reason: collision with root package name */
    private static final int f35616c = 2;

    /* renamed from: d, reason: collision with root package name */
    private static final int f35617d = 3;

    public static class DirectMailStatusReceiver extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        private static final String f35618a = "com.xiaomi.market.DIRECT_MAIL_CHECK_RESULT";

        /* renamed from: b, reason: collision with root package name */
        private static final String f35619b = "com.xiaomi.market.DIRECT_MAIL_STATUS";

        /* renamed from: c, reason: collision with root package name */
        private static final String f35620c = "com.xiaomi.market.DIRECT_MAIL_DOWNLOAD_PROGRESS";

        /* renamed from: d, reason: collision with root package name */
        private BaseAdUnit f35621d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("packageName", str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("packageName", str);
            }
        }

        public void a(Context context, BaseAdUnit baseAdUnit) {
            if (context == null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(f35618a);
            intentFilter.addAction(f35619b);
            intentFilter.addAction(f35620c);
            this.f35621d = baseAdUnit;
            com.sigmob.sdk.base.utils.h.a(context, this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (TextUtils.isEmpty(action) || extras == null) {
                return;
            }
            action.getClass();
            switch (action) {
                case "com.xiaomi.market.DIRECT_MAIL_STATUS":
                    int i2 = extras.getInt("statusCode");
                    final String string = extras.getString("packageName");
                    SigmobLog.d("MiMarketManager: statusCode:" + i2 + " packageName:" + string);
                    ad.a("mimarket_status", String.valueOf(i2), this.f35621d, new ad.a() { // from class: com.sigmob.sdk.base.common.F
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            MiMarketManager.DirectMailStatusReceiver.b(string, obj);
                        }
                    });
                    break;
                case "com.xiaomi.market.DIRECT_MAIL_DOWNLOAD_PROGRESS":
                    int i3 = extras.getInt("downloadProgress");
                    final String string2 = extras.getString("packageName");
                    ad.a("mimarket_download_progress", String.valueOf(i3), this.f35621d, new ad.a() { // from class: com.sigmob.sdk.base.common.G
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            MiMarketManager.DirectMailStatusReceiver.a(string2, obj);
                        }
                    });
                    SigmobLog.d("MiMarketManager: downloadProgress:" + i3 + " packageName:" + string2);
                    break;
                case "com.xiaomi.market.DIRECT_MAIL_CHECK_RESULT":
                    int i4 = extras.getInt("styleCheckResult");
                    final String string3 = extras.getString("packageName");
                    ad.a("mimarket_check_result", i4 == 0 ? "1" : "0", this.f35621d, new ad.a() { // from class: com.sigmob.sdk.base.common.E
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            MiMarketManager.DirectMailStatusReceiver.c(string3, obj);
                        }
                    });
                    SigmobLog.d("MiMarketManager: styleResult:" + i4 + " packageName:" + string3);
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("packageName", str);
            }
        }
    }

    public static void a(Context context, ArrayList<String> arrayList) {
        Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.xiaomi.market.provider.DirectMailProvider/referrer"), null, null, null, null);
        while (cursorQuery != null) {
            try {
                if (!cursorQuery.moveToFirst()) {
                    break;
                }
                cursorQuery.getString(0);
                cursorQuery.getString(1);
                cursorQuery.getString(2);
                cursorQuery.getString(3);
            } finally {
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
    }

    public static void b(Context context, ArrayList<String> arrayList) {
        ArrayList parcelableArrayList;
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("packageNames", arrayList);
        Bundle bundleCall = context.getContentResolver().call(Uri.parse("content://com.xiaomi.market.provider.DirectMailProvider/status"), "queryDownloadStatus", (String) null, bundle);
        if (bundleCall == null || (parcelableArrayList = bundleCall.getParcelableArrayList("packageNames")) == null || parcelableArrayList.isEmpty()) {
            return;
        }
        int size = parcelableArrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = parcelableArrayList.get(i2);
            i2++;
            if (obj != null && (obj instanceof Bundle)) {
                Bundle bundle2 = (Bundle) obj;
                SigmobLog.d("packageName = " + bundle2.getString("packageName") + ", status = " + bundle2.getInt("status") + ", progress = " + bundle2.getInt("progress"));
            }
        }
    }
}

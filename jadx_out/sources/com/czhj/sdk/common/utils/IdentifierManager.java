package com.czhj.sdk.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.utils.PlayServicesUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import java.util.Calendar;

/* loaded from: classes3.dex */
public class IdentifierManager {

    /* renamed from: b, reason: collision with root package name */
    private static final String f29461b = "com.Sigmob.settings.identifier";

    /* renamed from: c, reason: collision with root package name */
    private static final String f29462c = "privacy.identifier.ifa";

    /* renamed from: d, reason: collision with root package name */
    private static final String f29463d = "privacy.identifier.ifa_aes_gcm";

    /* renamed from: e, reason: collision with root package name */
    private static final String f29464e = "privacy.identifier.Sigmob";

    /* renamed from: f, reason: collision with root package name */
    private static final String f29465f = "privacy.identifier.time";

    /* renamed from: g, reason: collision with root package name */
    private static final String f29466g = "privacy.limit.ad.tracking";

    /* renamed from: h, reason: collision with root package name */
    private static final int f29467h = -1;

    /* renamed from: a, reason: collision with root package name */
    private long f29468a;

    /* renamed from: i, reason: collision with root package name */
    private AdvertisingId f29469i;

    /* renamed from: j, reason: collision with root package name */
    private Context f29470j;

    /* renamed from: k, reason: collision with root package name */
    private AdvertisingIdChangeListener f29471k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f29472l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f29473m;

    /* renamed from: n, reason: collision with root package name */
    private SdkInitializationListener f29474n;

    public interface AdvertisingIdChangeListener {
        void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2);
    }

    public class RefreshAdvertisingInfoAsyncTask extends AsyncTask<Void, Void, Void> {
        private RefreshAdvertisingInfoAsyncTask() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            IdentifierManager.this.b();
            IdentifierManager.this.f29472l = false;
            return null;
        }
    }

    public interface SdkInitializationListener {
        void onInitializationFinished();
    }

    public IdentifierManager(Context context, AdvertisingIdChangeListener advertisingIdChangeListener) {
    }

    private static synchronized AdvertisingId a(Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        Calendar calendar = Calendar.getInstance();
        try {
            SharedPreferences sharedPreferences = SharedPreferencesUtil.getSharedPreferences(context, f29461b);
            String string = sharedPreferences.getString(f29463d, "");
            String strDecryptString = !TextUtils.isEmpty(string) ? AESUtil.DecryptString(string, Constants.AESKEY) : sharedPreferences.getString(f29462c, "");
            String string2 = sharedPreferences.getString(f29464e, "");
            long j2 = sharedPreferences.getLong(f29465f, calendar.getTimeInMillis());
            boolean z2 = sharedPreferences.getBoolean(f29466g, false);
            if (!TextUtils.isEmpty(strDecryptString) && !TextUtils.isEmpty(string2)) {
                return new AdvertisingId(strDecryptString, string2, z2, j2);
            }
        } catch (Throwable unused) {
            SigmobLog.e("Cannot read identifier from shared preferences");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        PlayServicesUtil.AdvertisingInfo advertisingIdInfo;
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (d()) {
            try {
                advertisingIdInfo = PlayServicesUtil.getAdvertisingIdInfo(this.f29470j);
            } catch (Throwable unused) {
                advertisingIdInfo = null;
            }
            if (advertisingIdInfo != null) {
                AdvertisingId advertisingId = this.f29469i;
                if (advertisingIdInfo.limitAdTracking && advertisingId.b()) {
                    a(advertisingIdInfo.advertisingId, AdvertisingId.a(), advertisingIdInfo.limitAdTracking, timeInMillis);
                } else {
                    a(advertisingIdInfo.advertisingId, advertisingId.f29425b, advertisingIdInfo.limitAdTracking, advertisingId.f29424a.getTimeInMillis());
                }
            }
        }
    }

    private void c() {
        SdkInitializationListener sdkInitializationListener = this.f29474n;
        if (sdkInitializationListener != null) {
            sdkInitializationListener.onInitializationFinished();
            this.f29474n = null;
        }
        this.f29473m = true;
    }

    private boolean d() {
        return true;
    }

    public AdvertisingId getAdvertisingInfo() {
        AdvertisingId advertisingId = this.f29469i;
        this.f29468a = System.currentTimeMillis();
        return advertisingId;
    }

    private void a() {
        if (this.f29472l) {
            return;
        }
        this.f29472l = true;
        new RefreshAdvertisingInfoAsyncTask().execute(new Void[0]);
    }

    private static synchronized void a(Context context, AdvertisingId advertisingId) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(advertisingId);
        SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(context, f29461b).edit();
        editorEdit.putBoolean(f29466g, advertisingId.mDoNotTrack);
        editorEdit.remove(f29462c);
        editorEdit.putString(f29463d, AESUtil.EncryptString(advertisingId.mAdvertisingId, Constants.AESKEY));
        editorEdit.putString(f29464e, advertisingId.f29425b);
        editorEdit.putLong(f29465f, advertisingId.f29424a.getTimeInMillis());
        editorEdit.apply();
    }

    private void a(AdvertisingId advertisingId) {
        AdvertisingId advertisingId2 = this.f29469i;
        this.f29469i = advertisingId;
        a(this.f29470j, advertisingId);
        if (!this.f29469i.equals(advertisingId2) || !this.f29473m) {
            a(advertisingId2, this.f29469i);
        }
        if (this.f29473m) {
            return;
        }
        c();
    }

    private void a(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
        Preconditions.NoThrow.checkNotNull(advertisingId2);
        AdvertisingIdChangeListener advertisingIdChangeListener = this.f29471k;
        if (advertisingIdChangeListener != null) {
            advertisingIdChangeListener.onIdChanged(advertisingId, advertisingId2);
        }
    }

    private void a(String str, String str2, boolean z2, long j2) {
        Preconditions.NoThrow.checkNotNull(str);
        Preconditions.NoThrow.checkNotNull(str2);
        a(new AdvertisingId(str, str2, z2, j2));
    }
}

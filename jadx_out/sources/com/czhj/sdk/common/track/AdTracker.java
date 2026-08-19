package com.czhj.sdk.common.track;

import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.czhj.sdk.common.Database.DBOperator;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.common.Database.SQLiteLisenter;
import com.czhj.sdk.common.Database.SQLiteTrackHelper;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.n;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class AdTracker implements Serializable {
    private static final long serialVersionUID = 1;
    private String extInfo;
    private boolean mCalled;
    private final String mEvent;
    private Long mId;
    private final MessageType mMessageType;
    private final String mRequest_id;
    private String mSource = "native";
    private String mUrl;
    private Integer retryCount;
    private Integer retryNum;
    private Long timestamp;

    /* renamed from: com.czhj.sdk.common.track.AdTracker$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType;

        static {
            int[] iArr = new int[MessageType.values().length];
            $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType = iArr;
            try {
                iArr[MessageType.QUARTILE_EVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType[MessageType.TOBID_TRACKING_URL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType[MessageType.TRACKING_URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT,
        TOBID_TRACKING_URL
    }

    public AdTracker(MessageType messageType, String str, String str2, String str3) {
        this.mRequest_id = str3;
        this.mMessageType = messageType;
        this.mUrl = str;
        this.mEvent = str2;
    }

    public static void cleanExpiredAdTracker(long j2) {
        try {
            DBOperator.getInstance().delete(SQLiteTrackHelper.getInstance().getWritableDatabase(), "tracks", "timestamp < ?", new String[]{String.valueOf(System.currentTimeMillis() - j2)}, new SQLiteLisenter() { // from class: com.czhj.sdk.common.track.AdTracker.1
                @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                public void onFailed(Error error) {
                    SigmobLog.e(error.getMessage());
                }

                @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                public void onSuccess(List list) {
                }
            });
        } catch (Throwable th) {
            SigmobLog.e("cleanExpiredAdTracker error", th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.Long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void cleanLimitAdTracker(long r8) {
        /*
            r1 = 0
            com.czhj.sdk.common.Database.SQLiteTrackHelper r0 = com.czhj.sdk.common.Database.SQLiteTrackHelper.getInstance()     // Catch: java.lang.Throwable -> L81
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch: java.lang.Throwable -> L81
            java.lang.String r2 = "select * from tracks"
            android.database.Cursor r2 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L81
            if (r2 == 0) goto L1f
            int r3 = r2.getCount()     // Catch: java.lang.Throwable -> L1b
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L1b
            r2.close()     // Catch: java.lang.Throwable -> L1b
            r2 = r1
            goto L21
        L1b:
            r0 = move-exception
            r8 = r0
            r1 = r2
            goto L83
        L1f:
            r3 = 0
        L21:
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 <= 0) goto L52
            java.lang.String r3 = "select * from tracks order by id desc limit ?"
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L1b
            java.lang.String[] r8 = new java.lang.String[]{r8}     // Catch: java.lang.Throwable -> L1b
            android.database.Cursor r8 = r0.rawQuery(r3, r8)     // Catch: java.lang.Throwable -> L1b
            java.lang.String r9 = "id"
            int r9 = r8.getColumnIndex(r9)     // Catch: java.lang.Throwable -> L4d
            boolean r0 = r8.moveToLast()     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L53
            long r2 = r8.getLong(r9)     // Catch: java.lang.Throwable -> L4d
            java.lang.Long r9 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4d
            r8.close()     // Catch: java.lang.Throwable -> L4d
            r8 = r1
            r1 = r9
            goto L53
        L4d:
            r0 = move-exception
            r9 = r0
            r1 = r8
            r8 = r9
            goto L83
        L52:
            r8 = r2
        L53:
            if (r1 != 0) goto L5b
            if (r8 == 0) goto L8d
            r8.close()
            return
        L5b:
            java.lang.String r5 = "id < ?"
            com.czhj.sdk.common.Database.DBOperator r2 = com.czhj.sdk.common.Database.DBOperator.getInstance()     // Catch: java.lang.Throwable -> L4d
            com.czhj.sdk.common.Database.SQLiteTrackHelper r9 = com.czhj.sdk.common.Database.SQLiteTrackHelper.getInstance()     // Catch: java.lang.Throwable -> L4d
            android.database.sqlite.SQLiteDatabase r3 = r9.getWritableDatabase()     // Catch: java.lang.Throwable -> L4d
            java.lang.String r4 = "tracks"
            java.lang.String r9 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L4d
            java.lang.String[] r6 = new java.lang.String[]{r9}     // Catch: java.lang.Throwable -> L4d
            com.czhj.sdk.common.track.AdTracker$2 r7 = new com.czhj.sdk.common.track.AdTracker$2     // Catch: java.lang.Throwable -> L4d
            r7.<init>()     // Catch: java.lang.Throwable -> L4d
            r2.delete(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L4d
            if (r8 == 0) goto L8d
            r8.close()
            return
        L81:
            r0 = move-exception
            r8 = r0
        L83:
            java.lang.String r9 = "cleanLimitAdTracker "
            com.czhj.sdk.logger.SigmobLog.e(r9, r8)     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8d
            r1.close()
        L8d:
            return
        L8e:
            r0 = move-exception
            r8 = r0
            if (r1 == 0) goto L95
            r1.close()
        L95:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.sdk.common.track.AdTracker.cleanLimitAdTracker(long):void");
    }

    public static SQLiteBuider.CreateTable createTable() {
        SQLiteBuider.CreateTable.Builder builder = new SQLiteBuider.CreateTable.Builder();
        builder.setTableName("tracks");
        builder.setPrimaryKey("id", "long");
        builder.autoincrement(true);
        HashMap map = new HashMap();
        map.put("url", com.baidu.mobads.sdk.internal.a.f10878b);
        map.put(NotificationCompat.CATEGORY_EVENT, com.baidu.mobads.sdk.internal.a.f10878b);
        map.put("request_id", com.baidu.mobads.sdk.internal.a.f10878b);
        map.put("timestamp", "long");
        map.put(n.f36449l, com.baidu.mobads.sdk.internal.a.f10878b);
        map.put("retryNum", IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL);
        map.put("extInfo", com.baidu.mobads.sdk.internal.a.f10878b);
        map.put("messageType", IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL);
        builder.setColumns(map);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x014a A[EDGE_INSN: B:118:0x014a->B:80:0x014a BREAK  A[LOOP:0: B:9:0x0068->B:49:0x00f4], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0143 A[PHI: r2
      0x0143: PHI (r2v14 android.database.Cursor) = (r2v3 android.database.Cursor), (r2v3 android.database.Cursor), (r2v4 android.database.Cursor) binds: [B:4:0x0026, B:6:0x002c, B:117:0x0143] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.czhj.sdk.common.track.AdTracker> getAdTrackerFromDB(int r23, long r24) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.sdk.common.track.AdTracker.getAdTrackerFromDB(int, long):java.util.List");
    }

    private void setId(Long l2) {
        this.mId = l2;
    }

    private void setRetryCount(int i2) {
        this.retryCount = Integer.valueOf(i2);
    }

    public void deleteDB() {
        if (this.mId == null) {
            return;
        }
        try {
            DBOperator.getInstance().delete(SQLiteTrackHelper.getInstance().getWritableDatabase(), "tracks", "id = ?", new String[]{String.valueOf(this.mId)}, new SQLiteLisenter() { // from class: com.czhj.sdk.common.track.AdTracker.4
                @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                public void onFailed(Error error) {
                    SigmobLog.e(error.getMessage());
                }

                @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                public void onSuccess(List list) {
                    SigmobLog.d("delete id " + AdTracker.this.mId);
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public String getEvent() {
        return this.mEvent;
    }

    public String getExtInfo() {
        return this.extInfo;
    }

    public Long getId() {
        return this.mId;
    }

    public MessageType getMessageType() {
        return this.mMessageType;
    }

    public String getRequest_id() {
        return this.mRequest_id;
    }

    public int getRetryCount() {
        return this.retryCount.intValue();
    }

    public Integer getRetryNum() {
        Integer num = this.retryNum;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getSource() {
        return this.mSource;
    }

    public long getTimestamp() {
        Long l2 = this.timestamp;
        if (l2 == null) {
            return 0L;
        }
        return l2.longValue();
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void insertToDB(final SQLiteTrackHelper.ExecCallBack execCallBack) {
        try {
            SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
            builder.setTableName("tracks");
            HashMap map = new HashMap();
            int i2 = AnonymousClass5.$SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType[this.mMessageType.ordinal()];
            int i3 = 1;
            if (i2 != 1) {
                i3 = 2;
                if (i2 != 2) {
                    i3 = 0;
                }
            }
            map.put("url", this.mUrl);
            map.put("request_id", this.mRequest_id);
            map.put(NotificationCompat.CATEGORY_EVENT, this.mEvent);
            map.put(n.f36449l, this.mSource);
            map.put("retryNum", this.retryCount);
            map.put("timestamp", Long.valueOf(System.currentTimeMillis()));
            map.put("extInfo", this.extInfo);
            map.put("messageType", Integer.valueOf(i3));
            builder.setColumnValues(map);
            SQLiteTrackHelper.insert(SQLiteTrackHelper.getInstance().getWritableDatabase(), builder.build(), new SQLiteTrackHelper.ExecCallBack() { // from class: com.czhj.sdk.common.track.AdTracker.3
                @Override // com.czhj.sdk.common.Database.SQLiteTrackHelper.ExecCallBack
                public void onFailed(Throwable th) {
                    SQLiteTrackHelper.ExecCallBack execCallBack2 = execCallBack;
                    if (execCallBack2 != null) {
                        execCallBack2.onFailed(th);
                    }
                    SigmobLog.e(th.getMessage());
                }

                @Override // com.czhj.sdk.common.Database.SQLiteTrackHelper.ExecCallBack
                public void onSuccess() {
                    SigmobLog.d("event: " + AdTracker.this.mEvent + " url " + AdTracker.this.mUrl + " mRequest_id: " + AdTracker.this.mRequest_id + " insert success! ");
                    SQLiteTrackHelper.ExecCallBack execCallBack2 = execCallBack;
                    if (execCallBack2 != null) {
                        execCallBack2.onSuccess();
                    }
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public boolean isTracked() {
        return this.mCalled;
    }

    public void setExtInfo(String str) {
        this.extInfo = str;
    }

    public void setRetryCountInc() {
        this.retryCount = Integer.valueOf(this.retryCount.intValue() + 1);
    }

    public void setRetryNum(Integer num) {
        this.retryNum = num;
    }

    public void setSource(String str) {
        this.mSource = str;
    }

    public void setTimestamp(Long l2) {
        this.timestamp = l2;
    }

    public void setTracked() {
        this.mCalled = true;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public void updateToDB() {
        try {
            SQLiteBuider.Update.Builder builder = new SQLiteBuider.Update.Builder();
            builder.setTableName("tracks");
            builder.setWhere(" where id=" + this.mId.toString());
            HashMap map = new HashMap();
            map.put("retryNum", this.retryCount);
            builder.setColumnValues(map);
            SQLiteTrackHelper.getInstance().transactionWriteExecSQL(SQLiteTrackHelper.getInstance().getWritableDatabase(), builder.build().getSql(), null);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }
}

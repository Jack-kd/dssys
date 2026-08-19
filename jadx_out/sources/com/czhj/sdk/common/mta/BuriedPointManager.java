package com.czhj.sdk.common.mta;

import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Base64;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import com.czhj.sdk.common.ThreadPool.RepeatingHandlerRunnable;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.network.BuriedPointRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.VolleyError;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.zip.DeflaterOutputStream;

/* loaded from: classes3.dex */
public class BuriedPointManager {

    /* renamed from: a, reason: collision with root package name */
    private static final int f29317a = 500000;

    /* renamed from: f, reason: collision with root package name */
    private static volatile BuriedPointManager f29318f;

    /* renamed from: e, reason: collision with root package name */
    private volatile boolean f29322e;

    /* renamed from: h, reason: collision with root package name */
    private volatile SQLiteDatabase f29324h;

    /* renamed from: i, reason: collision with root package name */
    private int f29325i;

    /* renamed from: j, reason: collision with root package name */
    private volatile RepeatingHandlerRunnable f29326j;

    /* renamed from: b, reason: collision with root package name */
    private final ReadWriteLock f29319b = new ReentrantReadWriteLock();

    /* renamed from: c, reason: collision with root package name */
    private HashMap<Integer, String> f29320c = null;

    /* renamed from: d, reason: collision with root package name */
    private List<String> f29321d = null;

    /* renamed from: g, reason: collision with root package name */
    private final Set<Integer> f29323g = new HashSet();

    private BuriedPointManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            this.f29324h.execSQL("delete from point where item is null");
        } catch (Throwable th) {
            SigmobLog.e("clearLogDB fail", th);
        }
    }

    private String c() {
        StringBuilder sb = new StringBuilder();
        List<String> list = this.f29321d;
        if (list != null && !list.isEmpty()) {
            this.f29325i = this.f29321d.size();
            Iterator<String> it = this.f29321d.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                if (it.hasNext()) {
                    sb.append(",");
                }
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f29319b.writeLock().lock();
        HashMap<Integer, String> map = this.f29320c;
        if (map != null && !map.isEmpty()) {
            a(this.f29320c.keySet());
            this.f29322e = false;
            this.f29320c = null;
        }
        this.f29319b.writeLock().unlock();
    }

    public static String deflateAndBase64(String str) throws IOException {
        if (str == null || str.isEmpty()) {
            return str;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
        deflaterOutputStream.write(str.getBytes(Charset.forName("UTF-8")));
        deflaterOutputStream.flush();
        deflaterOutputStream.close();
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    private void e() {
        List<String> list = this.f29321d;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f29321d.size();
        int i2 = this.f29325i;
        if (size > i2) {
            this.f29321d = this.f29321d.subList(i2, r0.size() - 1);
        } else {
            this.f29321d.clear();
        }
        this.f29325i = 0;
    }

    public static BuriedPointManager getInstance() {
        if (f29318f == null) {
            synchronized (BuriedPointManager.class) {
                try {
                    if (f29318f == null) {
                        f29318f = new BuriedPointManager();
                    }
                } finally {
                }
            }
        }
        return f29318f;
    }

    public void addWaitSend(String str) {
        if (this.f29321d == null) {
            this.f29321d = new LinkedList();
        }
        this.f29321d.add(str);
    }

    public void clearLogDB() {
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.mta.BuriedPointManager.2
            @Override // java.lang.Runnable
            public void run() {
                BuriedPointManager.this.b();
                BuriedPointManager.this.a();
            }
        });
    }

    public Set<Integer> getLogBlackList() {
        return this.f29323g;
    }

    public String sendPoint() {
        HashMap<Integer, String> map;
        String uRLEncoded = null;
        try {
            this.f29319b.readLock().lock();
        } finally {
            try {
                return uRLEncoded;
            } finally {
            }
        }
        if (!this.f29322e && ((map = this.f29320c) == null || map.isEmpty())) {
            StringBuilder sb = new StringBuilder();
            HashMap<Integer, String> mapA = a(Config.sharedInstance().getMax_send_log_records());
            this.f29320c = mapA;
            if (!mapA.isEmpty()) {
                sb.append("[");
                Iterator<String> it = this.f29320c.values().iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    if (it.hasNext()) {
                        sb.append(",");
                    }
                }
                sb.append("]");
                String string = sb.toString();
                String str = "_batch_value=" + string;
                try {
                    SigmobLog.d("_batch_value: " + string);
                    SigmobLog.d("BPLog_Count: " + this.f29320c.size());
                    uRLEncoded = PointEntitySuper.toURLEncoded(deflateAndBase64(str));
                    a(uRLEncoded, true);
                } catch (IOException e2) {
                    SigmobLog.e(e2.getMessage());
                }
                return uRLEncoded;
            }
        }
        return null;
    }

    public synchronized void start() {
        try {
            if (this.f29324h == null || this.f29326j == null) {
                this.f29324h = SQLiteMTAHelper.getInstance().getWritableDatabase();
                clearLogDB();
                HandlerThread handlerThread = new HandlerThread("sendLog");
                handlerThread.start();
                this.f29326j = new RepeatingHandlerRunnable(new Handler(handlerThread.getLooper())) { // from class: com.czhj.sdk.common.mta.BuriedPointManager.1
                    @Override // com.czhj.sdk.common.ThreadPool.RepeatingHandlerRunnable
                    public void doWork() {
                        try {
                            BuriedPointManager.this.sendPoint();
                            BuriedPointManager.this.f29326j.startRepeating(Config.sharedInstance().getSend_log_interval() * 1000);
                        } catch (Throwable th) {
                            SigmobLog.e("retryFaildTracking error " + th.getMessage());
                        }
                    }
                };
                this.f29326j.startRepeating(Config.sharedInstance().getSend_log_interval() * 1000);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized HashMap<Integer, String> a(int i2) {
        HashMap<Integer, String> map;
        Cursor cursorRawQuery;
        map = new HashMap<>();
        try {
            cursorRawQuery = this.f29324h.rawQuery("select * from point where item not null order by point_id", null);
        } catch (Throwable th) {
            SigmobLog.e("getlogs fail", th);
        }
        if (cursorRawQuery != null) {
            try {
                if (cursorRawQuery.moveToFirst()) {
                    int columnIndex = cursorRawQuery.getColumnIndex("item");
                    int columnIndex2 = cursorRawQuery.getColumnIndex("point_id");
                    int columnIndex3 = cursorRawQuery.getColumnIndex("encryption");
                    for (int i3 = 0; i3 < i2; i3++) {
                        String string = cursorRawQuery.getString(columnIndex);
                        Integer numValueOf = Integer.valueOf(cursorRawQuery.getInt(columnIndex2));
                        int i4 = cursorRawQuery.getInt(columnIndex3);
                        if (!TextUtils.isEmpty(string)) {
                            if (i4 != 1) {
                                map.put(numValueOf, string);
                            } else if (!TextUtils.isEmpty(AESUtil.DecryptString(string, Constants.AESKEY))) {
                                string = AESUtil.DecryptString(string, Constants.AESKEY);
                                map.put(numValueOf, string);
                            }
                        }
                        if (!cursorRawQuery.moveToNext()) {
                            break;
                        }
                    }
                }
            } finally {
            }
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            long jQueryNumEntries = DatabaseUtils.queryNumEntries(this.f29324h, SQLiteMTAHelper.TABLE_POINT);
            if (jQueryNumEntries <= 500000) {
                return;
            }
            a(jQueryNumEntries - 500000);
        } catch (Throwable th) {
            SigmobLog.e("clearLogDB fail", th);
        }
    }

    private void a(long j2) {
        try {
            this.f29324h.execSQL("delete from point where point_id in (  select point_id from point order by point_id  limit " + j2 + " )");
        } catch (Throwable th) {
            SigmobLog.e("clearLogDB fail", th);
        }
    }

    private void a(String str, final boolean z2) {
        this.f29322e = true;
        BuriedPointRequest.BuriedPointSend(str, new BuriedPointRequest.RequestListener() { // from class: com.czhj.sdk.common.mta.BuriedPointManager.3
            @Override // com.czhj.sdk.common.network.BuriedPointRequest.RequestListener
            public void onErrorResponse(VolleyError volleyError) {
                BuriedPointManager.this.f29322e = false;
                BuriedPointManager.this.f29320c = null;
                SigmobLog.e(volleyError.getMessage());
            }

            @Override // com.czhj.sdk.common.network.BuriedPointRequest.RequestListener
            public void onSuccess() {
                if (z2) {
                    ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.mta.BuriedPointManager.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BuriedPointManager.this.d();
                        }
                    });
                }
            }
        });
    }

    private void a(Set<Integer> set) {
        try {
            Iterator<Integer> it = set.iterator();
            if (!it.hasNext()) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("delete from ");
            sb.append(SQLiteMTAHelper.TABLE_POINT);
            sb.append(" where point_id in ( ");
            while (true) {
                sb.append(it.next());
                if (!it.hasNext()) {
                    sb.append(" )");
                    this.f29324h.execSQL(sb.toString());
                    return;
                } else {
                    sb.append(',');
                    sb.append(' ');
                }
            }
        } catch (Throwable th) {
            SigmobLog.e("clearLogDB fail", th);
        }
    }
}

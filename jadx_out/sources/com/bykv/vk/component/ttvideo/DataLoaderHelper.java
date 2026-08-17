package com.bykv.vk.component.ttvideo;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLStartCompleteListener;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes3.dex */
public class DataLoaderHelper implements AVMDLDataLoaderListener, AVMDLStartCompleteListener {
    public static final int DATALOADER_KEY_ENABLE_ALOG = 512;
    public static final int DATALOADER_KEY_INT_MAXCACHESIZE = 1;
    public static final int DATALOADER_KEY_INT_OPENTIMEOUT = 3;
    public static final int DATALOADER_KEY_INT_PARALLEL_NUM = 11;
    public static final int DATALOADER_KEY_INT_RWTIMEOUT = 2;
    public static final int DATALOADER_KEY_INT_TRYCOUNT = 4;
    public static final int DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE = 1005;
    public static final int DATALOADER_KEY_STRING_CACHEDIR = 0;
    public static final int IsClose = 1;
    public static final int IsPlayTask = 1;
    public static final int IsPreloadTask = 2;
    public static final int IsStart = 0;
    public static final int IsUnknown = 0;
    public static final String MDL_PREFIX = "mdl://";

    /* renamed from: p, reason: collision with root package name */
    private static final DataLoaderHelper f28652p = new DataLoaderHelper();

    /* renamed from: q, reason: collision with root package name */
    private static int f28653q = 0;

    /* renamed from: r, reason: collision with root package name */
    private static int f28654r = 0;

    /* renamed from: s, reason: collision with root package name */
    private static int f28655s = 0;

    /* renamed from: b, reason: collision with root package name */
    private final d f28657b;

    /* renamed from: c, reason: collision with root package name */
    private final d f28658c;

    /* renamed from: d, reason: collision with root package name */
    private final d f28659d;

    /* renamed from: e, reason: collision with root package name */
    private final d f28660e;

    /* renamed from: i, reason: collision with root package name */
    private AVMDLDataLoader f28664i;

    /* renamed from: k, reason: collision with root package name */
    private VideoEventEngineUploader f28666k;

    /* renamed from: m, reason: collision with root package name */
    private boolean f28668m;

    /* renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<String, c> f28661f = new ConcurrentHashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private final HashMap<String, ArrayList<TTVideoEngine>> f28662g = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    private final ReentrantLock f28663h = new ReentrantLock();

    /* renamed from: l, reason: collision with root package name */
    private boolean f28667l = true;

    /* renamed from: n, reason: collision with root package name */
    private int f28669n = 0;

    /* renamed from: o, reason: collision with root package name */
    private final ReentrantLock f28670o = new ReentrantLock();

    /* renamed from: a, reason: collision with root package name */
    private volatile int f28656a = 1;

    /* renamed from: j, reason: collision with root package name */
    private AVMDLDataLoaderConfigure f28665j = AVMDLDataLoaderConfigure.getDefaultonfigure();

    public class DataLoaderCacheInfo {
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;
        public String mLocalFilePath = null;

        public DataLoaderCacheInfo(DataLoaderHelper dataLoaderHelper) {
        }
    }

    public static class DataLoaderTaskProgressInfo {
        public String mKey = null;
        public String mVideoId = null;
        public String mLocalFilePath = null;
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;
        public int mTaskType = 0;
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        public String f28671a = null;

        /* renamed from: b, reason: collision with root package name */
        public long f28672b = 0;

        /* renamed from: c, reason: collision with root package name */
        public PreloaderURLItem f28673c = null;

        /* renamed from: d, reason: collision with root package name */
        public boolean f28674d = false;

        /* renamed from: e, reason: collision with root package name */
        public List<a> f28675e = new CopyOnWriteArrayList();

        public class a {

            /* renamed from: a, reason: collision with root package name */
            public String f28676a = null;

            /* renamed from: b, reason: collision with root package name */
            public String f28677b = null;

            /* renamed from: c, reason: collision with root package name */
            public String[] f28678c = null;

            /* renamed from: d, reason: collision with root package name */
            public String f28679d = null;

            /* renamed from: e, reason: collision with root package name */
            public long f28680e = 0;

            /* renamed from: f, reason: collision with root package name */
            public long f28681f = 0;

            /* renamed from: g, reason: collision with root package name */
            public long f28682g = 0;

            /* renamed from: h, reason: collision with root package name */
            public long f28683h = 0;

            /* renamed from: i, reason: collision with root package name */
            public long f28684i = 0;

            public a(b bVar) {
            }
        }

        public b(DataLoaderHelper dataLoaderHelper) {
        }

        public a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            a aVarB = b(str);
            if (aVarB != null) {
                return aVarB;
            }
            a aVar = new a(this);
            aVar.f28676a = str;
            this.f28675e.add(aVar);
            return aVar;
        }

        public a b(String str) {
            if (this.f28675e.size() <= 0) {
                return null;
            }
            for (int i2 = 0; i2 < this.f28675e.size(); i2++) {
                a aVar = this.f28675e.get(i2);
                if (aVar.f28676a.equals(str)) {
                    return aVar;
                }
            }
            return null;
        }

        public IPreLoaderItemCallBackListener a() {
            PreloaderURLItem preloaderURLItem = this.f28673c;
            if (preloaderURLItem == null || preloaderURLItem.getCallBackListener() == null) {
                return null;
            }
            return this.f28673c.getCallBackListener();
        }

        public void a(int i2) {
            if (a() != null) {
                DataLoaderHelper.c();
                int unused = DataLoaderHelper.f28655s;
                PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, i2);
                a().preloadItemInfo(preLoaderItemCallBackInfo);
            }
        }

        public void a(String str, long j2) {
            if (this.f28675e.size() == 0) {
                a aVar = new a(this);
                aVar.f28676a = str;
                aVar.f28682g = j2;
                this.f28675e.add(aVar);
            } else {
                TTVideoEngineLog.e("DataLoaderHelper", "[preload] DataLoaderTaskItem setup fail");
            }
            this.f28672b = j2;
        }
    }

    public class c {

        /* renamed from: a, reason: collision with root package name */
        public String f28685a;

        /* renamed from: b, reason: collision with root package name */
        public int f28686b = 0;

        /* renamed from: c, reason: collision with root package name */
        public List<a> f28687c = null;

        public class a {

            /* renamed from: e, reason: collision with root package name */
            public String f28692e;

            /* renamed from: a, reason: collision with root package name */
            public String f28688a = null;

            /* renamed from: b, reason: collision with root package name */
            public long f28689b = 0;

            /* renamed from: c, reason: collision with root package name */
            public long f28690c = 0;

            /* renamed from: d, reason: collision with root package name */
            public List<C0442a> f28691d = null;

            /* renamed from: f, reason: collision with root package name */
            public Error f28693f = null;

            /* renamed from: com.bykv.vk.component.ttvideo.DataLoaderHelper$c$a$a, reason: collision with other inner class name */
            public class C0442a {

                /* renamed from: a, reason: collision with root package name */
                public long f28694a = 0;

                /* renamed from: b, reason: collision with root package name */
                public long f28695b = 0;

                public C0442a(a aVar) {
                }
            }

            public a(c cVar) {
            }

            public void a(long j2) {
                if (this.f28691d == null) {
                    this.f28691d = new ArrayList();
                }
                if (this.f28691d.size() == 0) {
                    this.f28691d.add(new C0442a(this));
                }
                this.f28691d.get(0).f28694a = 0L;
                this.f28691d.get(0).f28695b = j2;
            }

            public long b() {
                List<C0442a> list = this.f28691d;
                if (list == null || list.size() <= 0) {
                    return 0L;
                }
                return this.f28691d.get(r0.size() - 1).f28695b;
            }

            public boolean a() {
                long j2 = this.f28690c;
                long jMin = j2 > 0 ? Math.min(j2, this.f28689b) : this.f28689b;
                List<C0442a> list = this.f28691d;
                C0442a c0442a = list != null ? list.get(list.size() - 1) : null;
                return this.f28693f != null || (c0442a != null && this.f28689b > 0 && c0442a.f28694a + c0442a.f28695b >= jMin);
            }
        }

        public c(DataLoaderHelper dataLoaderHelper) {
        }

        public long a() {
            long jB = 0;
            if (this.f28687c != null) {
                for (int i2 = 0; i2 < this.f28687c.size(); i2++) {
                    jB += this.f28687c.get(i2).b();
                }
            }
            return jB;
        }

        public boolean b() {
            int i2;
            boolean z2 = true;
            if (this.f28687c != null) {
                i2 = 0;
                for (int i3 = 0; i3 < this.f28687c.size(); i3++) {
                    a aVar = this.f28687c.get(i3);
                    if (aVar == null || aVar.a()) {
                        i2++;
                    } else {
                        z2 = false;
                    }
                }
            } else {
                i2 = 0;
            }
            return z2 || (i2 >= 2 && this.f28686b == 1);
        }

        public boolean c() {
            if (this.f28686b != 2) {
                return false;
            }
            if (this.f28687c == null) {
                return true;
            }
            for (int i2 = 0; i2 < this.f28687c.size(); i2++) {
                a aVar = this.f28687c.get(i2);
                if (aVar != null && !aVar.a()) {
                    return false;
                }
            }
            return true;
        }

        private a a(String str) {
            List<a> list;
            if (TextUtils.isEmpty(str) || (list = this.f28687c) == null) {
                return null;
            }
            for (a aVar : list) {
                if (aVar.f28688a.equals(str)) {
                    return aVar;
                }
            }
            return null;
        }

        public void a(b bVar) {
            boolean z2;
            if (this.f28687c == null) {
                this.f28687c = new ArrayList();
            }
            for (b.a aVar : bVar.f28675e) {
                a aVarA = a(aVar.f28676a);
                if (aVarA == null) {
                    aVarA = new a(this);
                    z2 = false;
                } else {
                    z2 = true;
                }
                aVarA.f28688a = aVar.f28676a;
                aVarA.f28689b = aVar.f28683h;
                aVarA.a(aVar.f28684i);
                aVarA.f28690c = aVar.f28682g;
                aVarA.f28692e = aVar.f28679d;
                if (!z2) {
                    this.f28687c.add(aVarA);
                }
            }
        }

        public void a(String str, Error error) {
            a aVarA = a(str);
            if (aVarA != null) {
                aVarA.f28693f = error;
            }
        }
    }

    public class d {

        /* renamed from: a, reason: collision with root package name */
        private final ReentrantLock f28696a;

        /* renamed from: b, reason: collision with root package name */
        private final ArrayList<b> f28697b;

        /* renamed from: c, reason: collision with root package name */
        private long f28698c;

        private d(DataLoaderHelper dataLoaderHelper) {
            this.f28696a = new ReentrantLock();
            this.f28697b = new ArrayList<>();
            this.f28698c = 0L;
        }

        private Boolean e() {
            if (this.f28698c >= 1) {
                return Boolean.valueOf(((long) this.f28697b.size()) >= this.f28698c);
            }
            return Boolean.FALSE;
        }

        public b a() {
            this.f28696a.lock();
            if (this.f28697b.size() == 0) {
                this.f28696a.unlock();
                return null;
            }
            b bVar = this.f28697b.get(r0.size() - 1);
            this.f28696a.unlock();
            return bVar;
        }

        public long b() {
            this.f28696a.lock();
            long size = this.f28697b.size();
            this.f28696a.unlock();
            return size;
        }

        public b c() {
            this.f28696a.lock();
            if (this.f28697b.size() == 0) {
                this.f28696a.unlock();
                return null;
            }
            b bVar = this.f28697b.get(r0.size() - 1);
            this.f28697b.remove(bVar);
            this.f28696a.unlock();
            return bVar;
        }

        public b d(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f28696a.lock();
            int i2 = 0;
            while (true) {
                if (i2 >= this.f28697b.size()) {
                    break;
                }
                b bVar2 = this.f28697b.get(i2);
                if (!TextUtils.isEmpty(bVar2.f28671a) && bVar2.f28671a.equals(str)) {
                    bVar = bVar2;
                    break;
                }
                i2++;
            }
            if (bVar != null) {
                this.f28697b.remove(bVar);
            }
            this.f28696a.unlock();
            return bVar;
        }

        public void a(long j2) {
            this.f28698c = j2;
        }

        public b b(b bVar) {
            b bVarC;
            if (TextUtils.isEmpty(bVar.f28671a)) {
                bVarC = null;
            } else {
                bVarC = d(bVar.f28671a);
                if (bVarC != null) {
                    return bVarC;
                }
            }
            Iterator<b.a> it = bVar.f28675e.iterator();
            while (it.hasNext() && (bVarC = c(it.next().f28676a)) == null) {
            }
            return bVarC;
        }

        public b c(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f28696a.lock();
            int i2 = 0;
            while (true) {
                if (i2 >= this.f28697b.size()) {
                    break;
                }
                b bVar2 = this.f28697b.get(i2);
                if (bVar2.b(str) != null) {
                    bVar = bVar2;
                    break;
                }
                i2++;
            }
            if (bVar != null) {
                this.f28697b.remove(bVar);
            }
            this.f28696a.unlock();
            return bVar;
        }

        public ArrayList<b> d() {
            try {
                this.f28696a.lock();
                return new ArrayList<>(this.f28697b);
            } finally {
                this.f28696a.unlock();
            }
        }

        public boolean a(b bVar) {
            Boolean bool;
            if (bVar == null || bVar.f28675e.size() == 0) {
                return false;
            }
            this.f28696a.lock();
            if (e().booleanValue()) {
                bool = Boolean.FALSE;
            } else {
                this.f28697b.add(bVar);
                bool = Boolean.TRUE;
            }
            this.f28696a.unlock();
            return bool.booleanValue();
        }

        public b b(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f28696a.lock();
            int i2 = 0;
            while (true) {
                if (i2 >= this.f28697b.size()) {
                    break;
                }
                b bVar2 = this.f28697b.get(i2);
                if (bVar2.b(str) != null) {
                    bVar = bVar2;
                    break;
                }
                i2++;
            }
            this.f28696a.unlock();
            return bVar;
        }

        public boolean a(String str) {
            int i2 = 0;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Boolean bool = Boolean.FALSE;
            this.f28696a.lock();
            while (true) {
                if (i2 >= this.f28697b.size()) {
                    break;
                }
                if (this.f28697b.get(i2).b(str) != null) {
                    bool = Boolean.TRUE;
                    break;
                }
                i2++;
            }
            this.f28696a.unlock();
            return bool.booleanValue();
        }
    }

    private DataLoaderHelper() {
        this.f28657b = new d();
        this.f28658c = new d();
        this.f28659d = new d();
        this.f28660e = new d();
    }

    private String a(String str, String str2, long j2, long j3, String[] strArr, String str3) throws UnsupportedEncodingException {
        String strEncode;
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = (String[]) strArr.clone();
        if (j3 <= 0) {
            j3 = 0;
        }
        for (String str4 : strArr2) {
            if (!c(str4)) {
                return null;
            }
        }
        String[] strArrA = a(strArr2);
        String strEncodeUrl = encodeUrl(str);
        if (TextUtils.isEmpty(strEncodeUrl)) {
            return null;
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        String strEncodeUrl2 = encodeUrl(str);
        if (TextUtils.isEmpty(strEncodeUrl2)) {
            strEncodeUrl2 = "videoId";
        }
        StringBuffer stringBuffer = new StringBuffer("?rk=");
        stringBuffer.append(strEncodeUrl2);
        stringBuffer.append("&k=");
        stringBuffer.append(strEncodeUrl);
        if (j3 > 0) {
            stringBuffer.append("&s=");
            stringBuffer.append(j2 + j3);
        }
        if (!TextUtils.isEmpty(str3)) {
            try {
                strEncode = URLEncoder.encode(str3, "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                strEncode = null;
            }
            if (!TextUtils.isEmpty(strEncode)) {
                stringBuffer.append("&p=");
                stringBuffer.append(strEncode);
            }
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        for (int i2 = 0; i2 < strArrA.length; i2++) {
            String strEncodeUrlByQuery = encodeUrlByQuery(strArrA[i2]);
            StringBuffer stringBuffer3 = new StringBuffer();
            if (!TextUtils.isEmpty(strEncodeUrlByQuery)) {
                stringBuffer3.append("&u");
                stringBuffer3.append(i2);
                stringBuffer3.append("=");
                stringBuffer3.append(strEncodeUrlByQuery);
            }
            if (stringBuffer.length() + stringBuffer2.length() + stringBuffer3.length() + 32 > 3096) {
                break;
            }
            stringBuffer2.append(stringBuffer3);
        }
        if (stringBuffer2.length() <= 0) {
            return null;
        }
        stringBuffer.append(stringBuffer2);
        return stringBuffer.toString();
    }

    public static /* synthetic */ int c() {
        int i2 = f28655s;
        f28655s = i2 + 1;
        return i2;
    }

    private boolean d() {
        if (this.f28664i != null) {
            return true;
        }
        if (AVMDLDataLoader.init(false, false) != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "library has not been loaded");
            return false;
        }
        try {
            AVMDLDataLoader aVMDLDataLoader = AVMDLDataLoader.getInstance();
            this.f28664i = aVMDLDataLoader;
            aVMDLDataLoader.setConfigure(this.f28665j);
            this.f28664i.setListener(this);
            this.f28664i.setStartCompleteListener(this);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String encodeUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static String encodeUrlByQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            String strQueryComponentEncode = AVMDLDataLoader.queryComponentEncode(str);
            return TextUtils.isEmpty(strQueryComponentEncode) ? URLEncoder.encode(str, "UTF-8") : strQueryComponentEncode;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static DataLoaderHelper getDataLoader() {
        return f28652p;
    }

    public void _addEngine(TTVideoEngine tTVideoEngine, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f28663h.lock();
            ArrayList<TTVideoEngine> arrayList = this.f28662g.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f28662g.put(str, arrayList);
            }
            if (!arrayList.contains(tTVideoEngine)) {
                arrayList.add(tTVideoEngine);
                arrayList.size();
            }
            this.f28663h.unlock();
        } catch (Throwable th) {
            this.f28663h.unlock();
            throw th;
        }
    }

    public String _proxyUrl(String str, String str2, long j2, String[] strArr, String str3) {
        if (this.f28656a != 0 || TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (String str4 : strArr2) {
            if (!c(str4)) {
                return str4;
            }
        }
        if (this.f28664i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "start mdl first");
            return null;
        }
        this.f28670o.lock();
        try {
            String localAddr = this.f28664i.getLocalAddr();
            if (TextUtils.isEmpty(localAddr)) {
                TTVideoEngineLog.e("DataLoaderHelper", "local host error");
                return null;
            }
            String strA = a(str, str2, 0L, j2, strArr2, str3);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer();
            int i2 = this.f28669n;
            this.f28669n = i2 + 1;
            StringBuffer stringBuffer2 = new StringBuffer();
            if (this.f28667l || !this.f28668m) {
                stringBuffer.append("http://");
                stringBuffer.append(localAddr);
                stringBuffer.append(ServiceReference.DELIMITER);
                stringBuffer.append(i2);
            } else {
                stringBuffer.append("mdl://id");
                stringBuffer.append(i2);
                stringBuffer.append(ServiceReference.DELIMITER);
            }
            stringBuffer.append(strA);
            stringBuffer2.append(strA);
            String auth = this.f28664i.getAuth(strA);
            if (!TextUtils.isEmpty(auth)) {
                stringBuffer.append("&ah=");
                stringBuffer.append(auth);
                stringBuffer.append("&ah=");
                stringBuffer.append(auth);
            }
            String string = stringBuffer.toString();
            this.f28670o.unlock();
            b bVarD = this.f28660e.d(str2);
            if (bVarD == null) {
                bVarD = new b(this);
            }
            b.a aVarA = bVarD.a(str);
            if (aVarA != null) {
                aVarA.f28676a = str;
                bVarD.f28671a = str2;
                aVarA.f28677b = string;
                aVarA.f28678c = strArr2;
                aVarA.f28679d = str3;
                this.f28660e.a(bVarD);
            }
            return string;
        } finally {
            this.f28670o.unlock();
        }
    }

    public void _removeEngine(TTVideoEngine tTVideoEngine, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f28663h.lock();
            ArrayList<TTVideoEngine> arrayList = this.f28662g.get(str);
            if (arrayList != null) {
                arrayList.remove(tTVideoEngine);
                arrayList.size();
                if (arrayList.size() == 0) {
                    this.f28662g.remove(str);
                }
            }
        } finally {
            this.f28663h.unlock();
        }
    }

    public void _removePlayTask(String str) {
        this.f28660e.c(str);
    }

    public void addTask(PreloaderURLItem preloaderURLItem) {
        DataLoaderHelper dataLoaderHelper;
        f28653q++;
        if (preloaderURLItem == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] url item invalid");
            return;
        }
        this.f28670o.lock();
        try {
            dataLoaderHelper = this;
            try {
                dataLoaderHelper.a(preloaderURLItem.getKey(), preloaderURLItem.getVideoId(), preloaderURLItem.getPreloadSize(), preloaderURLItem);
                dataLoaderHelper.f28670o.unlock();
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                dataLoaderHelper.f28670o.unlock();
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            dataLoaderHelper = this;
        }
    }

    public void cancelAllTasks() {
        if (this.f28664i == null || this.f28656a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "need start mdl first");
            return;
        }
        this.f28670o.lock();
        try {
            cancelAllTasksInternal();
            this.f28670o.unlock();
        } catch (Throwable unused) {
            this.f28670o.unlock();
        }
    }

    public void cancelAllTasksInternal() {
        a(this.f28658c);
        a(this.f28657b);
        if (a(this.f28659d)) {
            this.f28664i.cancelAll();
        }
    }

    public void cancelTask(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f28664i == null || this.f28656a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "need start mdl first");
            return;
        }
        this.f28670o.lock();
        try {
            b bVarC = this.f28657b.c(str);
            if (bVarC == null && (bVarC = this.f28658c.c(str)) == null) {
                bVarC = this.f28659d.c(str);
                if (bVarC != null) {
                    this.f28664i.cancel(str);
                    c(bVarC);
                }
            } else {
                c(bVarC);
            }
            this.f28670o.unlock();
        } catch (Throwable unused) {
            this.f28670o.unlock();
        }
    }

    public void clearAllCaches() {
        if (this.f28656a != 0) {
            return;
        }
        this.f28670o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.f28664i;
            if (aVMDLDataLoader == null) {
                TTVideoEngineLog.e("DataLoaderHelper", "mInnerDataLoader == null");
            } else {
                aVMDLDataLoader.clearAllCaches();
            }
        } catch (Throwable unused) {
        }
        this.f28670o.unlock();
    }

    public void close() {
        this.f28670o.lock();
        try {
            if (this.f28656a == 1) {
                TTVideoEngineLog.e("DataLoaderHelper", "DataLoader not started, not need close");
            } else {
                this.f28664i.close();
                cancelAllTasksInternal();
                this.f28656a = 1;
            }
        } finally {
            this.f28670o.unlock();
        }
    }

    public DataLoaderCacheInfo getCacheInfoByFilePath(String str, String str2) {
        this.f28670o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.f28664i;
            if (aVMDLDataLoader != null) {
                DataLoaderCacheInfo dataLoaderCacheInfoB = b(aVMDLDataLoader.getStringCacheInfo(str, str2));
                this.f28670o.unlock();
                return dataLoaderCacheInfoB;
            }
        } catch (Throwable unused) {
        }
        this.f28670o.unlock();
        return null;
    }

    public long getCacheSize(String str) {
        long j2 = 0;
        if (this.f28656a != 0) {
            return 0L;
        }
        this.f28670o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.f28664i;
            if (aVMDLDataLoader != null) {
                long cacheSize = aVMDLDataLoader.getCacheSize(str);
                if (cacheSize > 0) {
                    j2 = cacheSize;
                }
            }
        } catch (Throwable unused) {
        }
        this.f28670o.unlock();
        return j2;
    }

    public long getCacheSizeByFilePath(String str, String str2) {
        this.f28670o.lock();
        long j2 = 0;
        try {
            DataLoaderCacheInfo cacheInfoByFilePath = getCacheInfoByFilePath(str, str2);
            if (cacheInfoByFilePath != null) {
                j2 = cacheInfoByFilePath.mCacheSizeFromZero;
            }
        } catch (Throwable unused) {
        }
        this.f28670o.unlock();
        return j2;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public String getCheckSumInfo(String str) {
        return null;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public long getInt64Value(int i2, long j2) {
        return 0L;
    }

    public c getLoadProgressByRawKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            return this.f28661f.get(str);
        }
        TTVideoEngineLog.e("DataLoaderHelper", "[preload] get, param is invalid key is null");
        return null;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public String getStringValue(int i2, long j2, String str) {
        return null;
    }

    public void notifyPreloadError(PreloaderURLItem preloaderURLItem, int i2) {
        IPreLoaderItemCallBackListener callBackListener = preloaderURLItem.getCallBackListener();
        if (callBackListener != null) {
            f28655s++;
            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
            preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, i2);
            callBackListener.preloadItemInfo(preLoaderItemCallBackInfo);
        }
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public void onNotify(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str;
        b bVarB;
        if (aVMDLDataLoaderNotifyInfo == null) {
            return;
        }
        int i2 = aVMDLDataLoaderNotifyInfo.what;
        if (i2 != 0 && i2 != 15) {
            if (i2 != 20) {
                if (i2 == 3 || i2 == 4) {
                    if (i2 == 4) {
                        f28654r++;
                    }
                    if (aVMDLDataLoaderNotifyInfo.logInfo != null) {
                        long j2 = aVMDLDataLoaderNotifyInfo.parameter;
                        if (j2 != 3) {
                            a(aVMDLDataLoaderNotifyInfo, j2 == 2, i2 == 4);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i2 == 7) {
                    f28654r++;
                    if (TextUtils.isEmpty(aVMDLDataLoaderNotifyInfo.logInfo)) {
                        return;
                    }
                    String[] strArrSplit = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
                    if (strArrSplit.length < 4) {
                        return;
                    }
                    String str2 = strArrSplit[2];
                    b bVarB2 = this.f28659d.b(str2);
                    this.f28659d.c(str2);
                    c(bVarB2);
                    return;
                }
                if (i2 != 8) {
                    if (i2 != 10 && i2 != 11) {
                        return;
                    }
                }
            }
            if (i2 == 8) {
                f28654r++;
            }
            String str3 = aVMDLDataLoaderNotifyInfo.logInfo;
            if ((str3 == null || aVMDLDataLoaderNotifyInfo.parameter != 3) && str3 != null) {
                String[] strArrSplit2 = str3.split(",");
                if (strArrSplit2.length > 0 && (bVarB = this.f28659d.b((str = strArrSplit2[0]))) != null) {
                    d dVar = this.f28659d;
                    Error error = new Error(Error.DataLoaderPreload, (int) aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.logInfo);
                    String str4 = TextUtils.isEmpty(bVarB.f28671a) ? str : bVarB.f28671a;
                    c loadProgressByRawKey = getLoadProgressByRawKey(str4);
                    if (loadProgressByRawKey == null) {
                        loadProgressByRawKey = new c(this);
                    }
                    loadProgressByRawKey.f28685a = bVarB.f28671a;
                    loadProgressByRawKey.f28686b = (int) aVMDLDataLoaderNotifyInfo.parameter;
                    loadProgressByRawKey.a(bVarB);
                    loadProgressByRawKey.a(str, error);
                    putByRawKey(str4, loadProgressByRawKey);
                    if (!loadProgressByRawKey.b() && !loadProgressByRawKey.c()) {
                        loadProgressByRawKey.b();
                        loadProgressByRawKey.c();
                        return;
                    }
                    dVar.c(str);
                    removeLoadProgressByRawKey(str4);
                    if (bVarB.a() == null || aVMDLDataLoaderNotifyInfo.parameter != 2) {
                        return;
                    }
                    PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                    preLoaderItemCallBackInfo.preloadError = error;
                    preLoaderItemCallBackInfo.loadProgress = loadProgressByRawKey;
                    preLoaderItemCallBackInfo.preloadDataInfo = null;
                    f28655s++;
                    bVarB.a().preloadItemInfo(preLoaderItemCallBackInfo);
                    return;
                }
                return;
            }
            return;
        }
        VideoEventEngineUploader videoEventEngineUploader = this.f28666k;
        if (videoEventEngineUploader != null) {
            videoEventEngineUploader.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
        }
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLStartCompleteListener
    public void onStartComplete() {
    }

    public void putByRawKey(String str, c cVar) {
        if (TextUtils.isEmpty(str) || cVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] param is invalid");
        } else {
            this.f28661f.put(str, cVar);
        }
    }

    public void removeCacheFile(String str, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f28670o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.f28664i;
            if (aVMDLDataLoader == null) {
                TTVideoEngineLog.e("DataLoaderHelper", "mInnerDataLoader == null");
            } else if (z2) {
                aVMDLDataLoader.forceRemoveFileCache(str);
            } else {
                aVMDLDataLoader.removeFileCache(str);
            }
        } catch (Throwable unused) {
        }
        this.f28670o.unlock();
    }

    public void removeLoadProgressByRawKey(String str) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] remove, param is invalid key is null");
        } else {
            this.f28661f.remove(str);
        }
    }

    public void setCacheInfoLists(String[] strArr, long[] jArr) {
        Arrays.toString(strArr);
        Arrays.toString(jArr);
        this.f28670o.lock();
        try {
            this.f28665j.setCacheInfoList(strArr, jArr);
        } finally {
            this.f28670o.unlock();
        }
    }

    public void setContext(Context context) {
        this.f28670o.lock();
        this.f28670o.unlock();
    }

    public synchronized void setEngineUploader(VideoEventEngineUploader videoEventEngineUploader) {
        this.f28666k = videoEventEngineUploader;
    }

    public void setIntValue(int i2, int i3) {
        this.f28670o.lock();
        try {
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f28670o.unlock();
            throw th;
        }
        if (i2 == 11) {
            this.f28665j.mPreloadParallelNum = i3;
            AVMDLDataLoader aVMDLDataLoader = this.f28664i;
            if (aVMDLDataLoader != null) {
                aVMDLDataLoader.setIntValue(102, i3);
            }
        } else if (i2 != 512) {
            boolean z2 = true;
            if (i2 == 1005) {
                if (i3 != 1) {
                    z2 = false;
                }
                this.f28668m = z2;
            } else if (i2 == 1) {
                this.f28665j.mMaxCacheSize = i3;
            } else if (i2 == 2) {
                this.f28665j.mRWTimeOut = i3;
            } else {
                if (i2 != 3) {
                    if (i2 == 4) {
                        this.f28665j.mTryCount = i3;
                    }
                    this.f28670o.unlock();
                }
                this.f28665j.mOpenTimeOut = i3;
            }
        } else {
            this.f28665j.mAlogEnable = i3;
            AVMDLDataLoader aVMDLDataLoader2 = this.f28664i;
            if (aVMDLDataLoader2 != null) {
                aVMDLDataLoader2.setIntValue(AVMDLDataLoader.KeyIsAlogEnable, i3);
            }
        }
        this.f28670o.unlock();
    }

    public void setStringValue(int i2, String str) {
        this.f28670o.lock();
        if (i2 == 0) {
            try {
                this.f28665j.mCacheDir = str;
            } catch (Exception unused) {
            } catch (Throwable th) {
                this.f28670o.unlock();
                throw th;
            }
        }
        this.f28670o.unlock();
    }

    public void start() {
        this.f28670o.lock();
        try {
            if (this.f28656a == 0) {
                TTVideoEngineLog.e("DataLoaderHelper", "DataLoader has started not need start");
            } else {
                if (!d()) {
                    throw new Exception("init data loader fail");
                }
                this.f28658c.a(4L);
                if (this.f28665j == null) {
                    this.f28665j = AVMDLDataLoaderConfigure.getDefaultonfigure();
                }
                if (this.f28666k != null) {
                    this.f28665j.mEnableReportTaskLog = 1;
                }
                this.f28664i.setConfigure(this.f28665j);
                if (this.f28664i.start() < 0) {
                    throw new Exception("start data loader fail");
                }
                if (this.f28664i.getLongValue(AVMDLDataLoader.KeyIsGetMdlProtocolHandle) == -1) {
                    this.f28667l = true;
                }
                this.f28656a = 0;
            }
        } finally {
            this.f28670o.unlock();
        }
    }

    private ArrayList<TTVideoEngine> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            this.f28663h.lock();
            ArrayList<TTVideoEngine> arrayList = this.f28662g.get(str);
            if (arrayList == null) {
                return null;
            }
            ArrayList<TTVideoEngine> arrayList2 = new ArrayList<>(arrayList);
            arrayList2.size();
            return arrayList2;
        } finally {
            this.f28663h.unlock();
        }
    }

    private DataLoaderCacheInfo b(String str) {
        DataLoaderCacheInfo dataLoaderCacheInfo = null;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length >= 4) {
            dataLoaderCacheInfo = new DataLoaderCacheInfo(this);
            dataLoaderCacheInfo.mLocalFilePath = strArrSplit[3];
            if (!TextUtils.isEmpty(strArrSplit[0])) {
                dataLoaderCacheInfo.mCacheSizeFromZero = Long.parseLong(strArrSplit[0]);
            }
            if (!TextUtils.isEmpty(strArrSplit[1])) {
                dataLoaderCacheInfo.mMediaSize = Long.parseLong(strArrSplit[1]);
            }
        }
        return dataLoaderCacheInfo;
    }

    private void c(b bVar) {
        if (bVar == null || bVar.f28674d) {
            return;
        }
        bVar.f28674d = true;
        if (bVar.a() != null) {
            f28655s++;
            bVar.a().preloadItemInfo(new PreLoaderItemCallBackInfo(5));
        }
    }

    private void a() throws UnsupportedEncodingException {
        if (this.f28664i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            return;
        }
        b bVarA = this.f28657b.a();
        if (bVarA != null && this.f28658c.a(bVarA)) {
            this.f28657b.c();
            if (bVarA.f28673c != null) {
                b(bVarA);
            }
        }
    }

    private void b(b bVar) throws UnsupportedEncodingException {
        if (bVar == null) {
            a();
            return;
        }
        if (this.f28664i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            return;
        }
        this.f28658c.b(bVar);
        long j2 = bVar.f28672b;
        PreloaderURLItem preloaderURLItem = bVar.f28673c;
        if (preloaderURLItem != null && preloaderURLItem.getUrls() != null && bVar.f28673c.getUrls().length > 0) {
            b.a aVar = bVar.f28675e.get(0);
            aVar.f28678c = bVar.f28673c.getUrls();
            aVar.f28682g = bVar.f28672b;
            aVar.f28679d = bVar.f28673c.getFilePath();
            a(bVar, aVar);
        }
        if (bVar.a() != null) {
            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(6);
            preLoaderItemCallBackInfo.preloadType = 0;
            preLoaderItemCallBackInfo.videoPreloadSize = j2;
            preLoaderItemCallBackInfo.audioPreloadSize = 0L;
            bVar.a().preloadItemInfo(preLoaderItemCallBackInfo);
        }
        a();
    }

    private boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return (lowerCase.startsWith("http://127.0.0.1") || lowerCase.startsWith("http://localhost") || lowerCase.startsWith(MDL_PREFIX) || lowerCase.startsWith("file://") || lowerCase.startsWith(ServiceReference.DELIMITER) || lowerCase.endsWith(".mpd") || lowerCase.contains(".mpd?")) ? false : true;
    }

    private void a(b bVar) {
        ArrayList<b> arrayListD = this.f28660e.d();
        for (int i2 = 0; i2 < arrayListD.size(); i2++) {
            b bVar2 = arrayListD.get(i2);
            if (!TextUtils.isEmpty(bVar2.f28671a) && !TextUtils.isEmpty(bVar.f28671a) && bVar2.f28671a.equals(bVar.f28671a)) {
                return;
            }
        }
        ArrayList<TTVideoEngine> arrayListA = a(bVar.f28671a);
        if (arrayListA == null || arrayListA.size() == 0) {
            return;
        }
        for (int i3 = 0; i3 < arrayListA.size(); i3++) {
            arrayListA.get(i3).a();
        }
    }

    private void a(b bVar, b.a aVar) throws UnsupportedEncodingException {
        if (bVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] start mdl preload task fail. item is null");
            return;
        }
        if (aVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] start mdl preload task fail. track is null");
            notifyPreloadError(bVar.f28673c, -100004);
            return;
        }
        String str = aVar.f28676a;
        String[] strArr = aVar.f28678c;
        if (strArr != null) {
            String strA = a(str, bVar.f28671a, aVar.f28681f, 0L, strArr, aVar.f28679d);
            aVar.f28677b = strA;
            if (!TextUtils.isEmpty(strA)) {
                this.f28659d.a(bVar);
                if (aVar.f28681f > 0) {
                    long j2 = aVar.f28680e;
                    if (j2 > 0) {
                        this.f28664i.preloadResource(aVar.f28677b, (int) j2);
                    }
                    this.f28664i.preloadResource(aVar.f28677b, (int) aVar.f28681f, (int) aVar.f28682g);
                } else {
                    this.f28664i.preloadResource(aVar.f28677b, (int) aVar.f28682g);
                }
                String.format("[preload] exect preload task ,key is %s; videoId = %s", aVar.f28676a, bVar.f28671a);
                return;
            }
        }
        bVar.a(-100001);
    }

    private void a(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo, boolean z2, boolean z3) {
        b bVarB;
        d dVar;
        if (aVMDLDataLoaderNotifyInfo == null || TextUtils.isEmpty(aVMDLDataLoaderNotifyInfo.logInfo)) {
            return;
        }
        String[] strArrSplit = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
        if (strArrSplit.length < 4) {
            return;
        }
        boolean z4 = false;
        try {
            long jLongValue = Long.valueOf(strArrSplit[0]).longValue();
            long jLongValue2 = Long.valueOf(strArrSplit[1]).longValue();
            if (jLongValue2 > 0 || z3) {
                String str = strArrSplit[2];
                String str2 = strArrSplit[3];
                if (z2 || z3) {
                    bVarB = this.f28659d.b(str);
                    if (bVarB == null) {
                        return;
                    }
                    dVar = this.f28659d;
                    z4 = true;
                } else {
                    bVarB = this.f28660e.b(str);
                    if (bVarB == null) {
                        return;
                    } else {
                        dVar = this.f28660e;
                    }
                }
                b.a aVarB = bVarB.b(str);
                if (aVarB != null) {
                    aVarB.f28683h = jLongValue2;
                    aVarB.f28684i = jLongValue;
                    aVarB.f28679d = str2;
                }
                String str3 = TextUtils.isEmpty(bVarB.f28671a) ? str : bVarB.f28671a;
                c loadProgressByRawKey = getLoadProgressByRawKey(str3);
                if (loadProgressByRawKey == null) {
                    loadProgressByRawKey = new c(this);
                }
                loadProgressByRawKey.f28685a = bVarB.f28671a;
                loadProgressByRawKey.f28686b = z2 ? 2 : 1;
                loadProgressByRawKey.a(bVarB);
                putByRawKey(str3, loadProgressByRawKey);
                if (loadProgressByRawKey.b() || z3) {
                    if (!z4) {
                        dVar.c(str);
                    }
                    removeLoadProgressByRawKey(str3);
                    if (!z2) {
                        a(bVarB);
                    }
                    if (bVarB.a() == null || !z3) {
                        return;
                    }
                    f28655s++;
                    dVar.c(str);
                    DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo = new DataLoaderTaskProgressInfo();
                    dataLoaderTaskProgressInfo.mCacheSizeFromZero = jLongValue;
                    dataLoaderTaskProgressInfo.mMediaSize = jLongValue2;
                    dataLoaderTaskProgressInfo.mKey = str;
                    dataLoaderTaskProgressInfo.mLocalFilePath = str2;
                    dataLoaderTaskProgressInfo.mVideoId = bVarB.f28671a;
                    dataLoaderTaskProgressInfo.mTaskType = loadProgressByRawKey.f28686b;
                    PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(2);
                    preLoaderItemCallBackInfo.preloadDataInfo = dataLoaderTaskProgressInfo;
                    preLoaderItemCallBackInfo.loadProgress = loadProgressByRawKey;
                    bVarB.a().preloadItemInfo(preLoaderItemCallBackInfo);
                    loadProgressByRawKey.a();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void a(String str, String str2, long j2, PreloaderURLItem preloaderURLItem) throws UnsupportedEncodingException {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] key invalid.");
            notifyPreloadError(preloaderURLItem, -100001);
            return;
        }
        if (this.f28664i == null || this.f28656a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            notifyPreloadError(preloaderURLItem, -100002);
        } else {
            if (this.f28658c.a(str) || this.f28657b.a(str)) {
                notifyPreloadError(preloaderURLItem, -100003);
                return;
            }
            b bVar = new b(this);
            bVar.a(str, j2);
            bVar.f28671a = str2;
            bVar.f28673c = preloaderURLItem;
            this.f28657b.a(bVar);
            a();
        }
    }

    private boolean a(d dVar) {
        boolean z2 = false;
        if (dVar.b() > 0) {
            while (true) {
                b bVarC = dVar.c();
                if (bVarC == null) {
                    break;
                }
                c(bVarC);
                z2 = true;
            }
        }
        return z2;
    }

    private String[] a(String[] strArr) {
        if (strArr == null || strArr.length <= 1) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(strArr[0]);
        for (int i2 = 1; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            Boolean bool = Boolean.TRUE;
            int size = arrayList.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                if (((String) arrayList.get(size)).equals(str)) {
                    bool = Boolean.FALSE;
                    break;
                }
                size--;
            }
            if (bool.booleanValue()) {
                arrayList.add(str);
            }
        }
        String[] strArr2 = new String[arrayList.size()];
        arrayList.toArray(strArr2);
        return strArr2;
    }
}

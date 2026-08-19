package org.eclipse.jetty.client;

import L1.e;
import W1.e;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.concurrent.atomic.AtomicInteger;
import org.eclipse.jetty.http.m;
import org.eclipse.jetty.http.o;
import org.eclipse.jetty.http.p;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public abstract class j {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final R1.c LOG = R1.b.a(j.class);
    public static final int STATUS_CANCELLED = 11;
    public static final int STATUS_CANCELLING = 10;
    public static final int STATUS_COMPLETED = 7;
    public static final int STATUS_EXCEPTED = 9;
    public static final int STATUS_EXPIRED = 8;
    public static final int STATUS_PARSING_CONTENT = 6;
    public static final int STATUS_PARSING_HEADERS = 5;
    public static final int STATUS_SENDING_COMPLETED = 14;
    public static final int STATUS_SENDING_PARSING_CONTENT = 13;
    public static final int STATUS_SENDING_PARSING_HEADERS = 12;
    public static final int STATUS_SENDING_REQUEST = 3;
    public static final int STATUS_START = 0;
    public static final int STATUS_WAITING_FOR_COMMIT = 2;
    public static final int STATUS_WAITING_FOR_CONNECTION = 1;
    public static final int STATUS_WAITING_FOR_RESPONSE = 4;
    private org.eclipse.jetty.client.b _address;
    private volatile org.eclipse.jetty.client.a _connection;
    boolean _onDone;
    boolean _onRequestCompleteDone;
    boolean _onResponseCompleteDone;
    private L1.d _requestContent;
    private InputStream _requestContentSource;
    private volatile e.a _timeoutTask;
    private String _uri;
    private String _method = "GET";
    private L1.d _scheme = m.f52330a;
    private int _version = 11;
    private final org.eclipse.jetty.http.g _requestFields = new org.eclipse.jetty.http.g();
    private AtomicInteger _status = new AtomicInteger(0);
    private boolean _retryStatus = false;
    private boolean _configureListeners = true;
    private h _listener = new b(this, null);
    private org.eclipse.jetty.client.b _localAddress = null;
    private long _timeout = -1;
    private long _lastStateChange = System.currentTimeMillis();
    private long _sent = -1;
    private int _lastState = -1;
    private int _lastStatePeriod = -1;

    public class a extends e.a {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ HttpDestination f52116g;

        public a(HttpDestination httpDestination) {
            this.f52116g = httpDestination;
        }

        @Override // W1.e.a
        public void e() {
            j.this.expire(this.f52116g);
        }
    }

    public class b implements h {
        public b() {
        }

        @Override // org.eclipse.jetty.client.h
        public void a(Throwable th) {
            try {
                j.this.onConnectionFailed(th);
            } finally {
                j.this.b();
            }
        }

        @Override // org.eclipse.jetty.client.h
        public void b() {
            j.this.setRetryStatus(true);
            try {
                j.this.onRetry();
            } catch (IOException e2) {
                j.LOG.a(e2);
            }
        }

        @Override // org.eclipse.jetty.client.h
        public void c() throws IOException {
            j.this.onResponseHeaderComplete();
        }

        @Override // org.eclipse.jetty.client.h
        public void d(Throwable th) {
            try {
                j.this.onException(th);
            } finally {
                j.this.b();
            }
        }

        @Override // org.eclipse.jetty.client.h
        public void e() {
            try {
                j.this.onRequestComplete();
                synchronized (j.this) {
                    try {
                        j jVar = j.this;
                        jVar._onRequestCompleteDone = true;
                        boolean z2 = jVar._onDone | jVar._onResponseCompleteDone;
                        jVar._onDone = z2;
                        if (z2) {
                            jVar.disassociate();
                        }
                        j.this.notifyAll();
                    } finally {
                    }
                }
            } catch (Throwable th) {
                synchronized (j.this) {
                    try {
                        j jVar2 = j.this;
                        jVar2._onRequestCompleteDone = true;
                        boolean z3 = jVar2._onDone | jVar2._onResponseCompleteDone;
                        jVar2._onDone = z3;
                        if (z3) {
                            jVar2.disassociate();
                        }
                        j.this.notifyAll();
                        throw th;
                    } finally {
                    }
                }
            }
        }

        @Override // org.eclipse.jetty.client.h
        public void f() {
            try {
                j.this.onExpire();
            } finally {
                j.this.b();
            }
        }

        @Override // org.eclipse.jetty.client.h
        public void g() throws IOException {
            j.this.onRequestCommitted();
        }

        @Override // org.eclipse.jetty.client.h
        public void h(L1.d dVar, L1.d dVar2) {
            j.this.onResponseHeader(dVar, dVar2);
        }

        @Override // org.eclipse.jetty.client.h
        public void i(L1.d dVar, int i2, L1.d dVar2) {
            j.this.onResponseStatus(dVar, i2, dVar2);
        }

        @Override // org.eclipse.jetty.client.h
        public void j(L1.d dVar) {
            j.this.onResponseContent(dVar);
        }

        @Override // org.eclipse.jetty.client.h
        public void k() {
            try {
                j.this.onResponseComplete();
                synchronized (j.this) {
                    try {
                        j jVar = j.this;
                        jVar._onResponseCompleteDone = true;
                        boolean z2 = jVar._onDone | jVar._onRequestCompleteDone;
                        jVar._onDone = z2;
                        if (z2) {
                            jVar.disassociate();
                        }
                        j.this.notifyAll();
                    } finally {
                    }
                }
            } catch (Throwable th) {
                synchronized (j.this) {
                    try {
                        j jVar2 = j.this;
                        jVar2._onResponseCompleteDone = true;
                        boolean z3 = jVar2._onDone | jVar2._onRequestCompleteDone;
                        jVar2._onDone = z3;
                        if (z3) {
                            jVar2.disassociate();
                        }
                        j.this.notifyAll();
                        throw th;
                    } finally {
                    }
                }
            }
        }

        public /* synthetic */ b(j jVar, a aVar) {
            this();
        }
    }

    public static String toState(int i2) {
        switch (i2) {
            case 0:
                return "START";
            case 1:
                return "CONNECTING";
            case 2:
                return "CONNECTED";
            case 3:
                return "SENDING";
            case 4:
                return "WAITING";
            case 5:
                return "HEADERS";
            case 6:
                return "CONTENT";
            case 7:
                return "COMPLETED";
            case 8:
                return "EXPIRED";
            case 9:
                return "EXCEPTED";
            case 10:
                return "CANCELLING";
            case 11:
                return "CANCELLED";
            case 12:
                return "SENDING+HEADERS";
            case 13:
                return "SENDING+CONTENT";
            case 14:
                return "SENDING+COMPLETED";
            default:
                return "UNKNOWN";
        }
    }

    public final void a() {
        org.eclipse.jetty.client.a aVar = this._connection;
        try {
            if (aVar != null) {
                aVar.k();
            }
        } catch (IOException e2) {
            LOG.a(e2);
        } finally {
            disassociate();
        }
    }

    public void addRequestHeader(String str, String str2) {
        getRequestFields().e(str, str2);
    }

    public void associate(org.eclipse.jetty.client.a aVar) {
        if (aVar.e().d() != null) {
            this._localAddress = new org.eclipse.jetty.client.b(aVar.e().d(), aVar.e().getLocalPort());
        }
        this._connection = aVar;
        if (getStatus() == 10) {
            a();
        }
    }

    public final void b() {
        synchronized (this) {
            disassociate();
            this._onDone = true;
            notifyAll();
        }
    }

    public final boolean c() {
        boolean z2;
        synchronized (this) {
            z2 = this._onResponseCompleteDone;
        }
        return z2;
    }

    public void cancel() {
        setStatus(10);
        a();
    }

    public void cancelTimeout(g gVar) {
        e.a aVar = this._timeoutTask;
        if (aVar != null) {
            gVar.c0(aVar);
        }
        this._timeoutTask = null;
    }

    public boolean configureListeners() {
        return this._configureListeners;
    }

    public final boolean d(int i2, int i3) {
        boolean zCompareAndSet = this._status.compareAndSet(i3, i2);
        if (zCompareAndSet) {
            getEventListener().f();
        }
        return zCompareAndSet;
    }

    public org.eclipse.jetty.client.a disassociate() {
        org.eclipse.jetty.client.a aVar = this._connection;
        this._connection = null;
        if (getStatus() == 10) {
            setStatus(11);
        }
        return aVar;
    }

    public void expire(HttpDestination httpDestination) {
        org.eclipse.jetty.client.a aVar = this._connection;
        int status = getStatus();
        if (status < 7 || status == 12 || status == 13 || status == 14) {
            setStatus(8);
        }
        httpDestination.d(this);
        if (aVar != null) {
            aVar.n(this);
        }
    }

    public org.eclipse.jetty.client.b getAddress() {
        return this._address;
    }

    public h getEventListener() {
        return this._listener;
    }

    public org.eclipse.jetty.client.b getLocalAddress() {
        return this._localAddress;
    }

    public String getMethod() {
        return this._method;
    }

    public L1.d getRequestContent() {
        return this._requestContent;
    }

    public L1.d getRequestContentChunk(L1.d dVar) throws IOException {
        synchronized (this) {
            try {
                if (this._requestContentSource != null) {
                    if (dVar == null) {
                        dVar = new L1.h(8192);
                    }
                    int i2 = this._requestContentSource.read(dVar.p0(), dVar.n0(), dVar.f0());
                    if (i2 >= 0) {
                        dVar.q0(dVar.n0() + i2);
                        return dVar;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public InputStream getRequestContentSource() {
        return this._requestContentSource;
    }

    public org.eclipse.jetty.http.g getRequestFields() {
        return this._requestFields;
    }

    public String getRequestURI() {
        return this._uri;
    }

    public boolean getRetryStatus() {
        return this._retryStatus;
    }

    public L1.d getScheme() {
        return this._scheme;
    }

    public int getStatus() {
        return this._status.get();
    }

    public long getTimeout() {
        return this._timeout;
    }

    @Deprecated
    public String getURI() {
        return getRequestURI();
    }

    public int getVersion() {
        return this._version;
    }

    public boolean isAssociated() {
        return this._connection != null;
    }

    public boolean isDone() {
        boolean z2;
        synchronized (this) {
            z2 = this._onDone;
        }
        return z2;
    }

    public abstract void onConnectionFailed(Throwable th);

    public abstract void onException(Throwable th);

    public void onExpire() {
        LOG.g("EXPIRED " + this, new Object[0]);
    }

    public void onRequestCommitted() throws IOException {
    }

    public void onRequestComplete() throws IOException {
    }

    public void onResponseComplete() throws IOException {
    }

    public void onResponseHeaderComplete() throws IOException {
    }

    public void onRetry() throws IOException {
        InputStream inputStream = this._requestContentSource;
        if (inputStream != null) {
            if (!inputStream.markSupported()) {
                throw new IOException("Unsupported retry attempt");
            }
            this._requestContent = null;
            this._requestContentSource.reset();
        }
    }

    public L1.j onSwitchProtocol(L1.k kVar) throws IOException {
        return null;
    }

    public void reset() {
        synchronized (this) {
            this._timeoutTask = null;
            this._onRequestCompleteDone = false;
            this._onResponseCompleteDone = false;
            this._onDone = false;
            setStatus(0);
        }
    }

    public void scheduleTimeout(HttpDestination httpDestination) {
        this._timeoutTask = new a(httpDestination);
        g gVarG = httpDestination.g();
        long timeout = getTimeout();
        if (timeout > 0) {
            gVarG.u0(this._timeoutTask, timeout);
        } else {
            gVarG.t0(this._timeoutTask);
        }
    }

    public void setAddress(org.eclipse.jetty.client.b bVar) {
        this._address = bVar;
    }

    public void setConfigureListeners(boolean z2) {
        this._configureListeners = z2;
    }

    public void setEventListener(h hVar) {
        this._listener = hVar;
    }

    public void setMethod(String str) {
        this._method = str;
    }

    public void setRequestContent(L1.d dVar) {
        this._requestContent = dVar;
    }

    public void setRequestContentSource(InputStream inputStream) {
        this._requestContentSource = inputStream;
        if (inputStream == null || !inputStream.markSupported()) {
            return;
        }
        this._requestContentSource.mark(Integer.MAX_VALUE);
    }

    public void setRequestContentType(String str) {
        getRequestFields().w(org.eclipse.jetty.http.j.f52296z, str);
    }

    public void setRequestHeader(String str, String str2) {
        getRequestFields().x(str, str2);
    }

    public void setRequestURI(String str) {
        this._uri = str;
    }

    public void setRetryStatus(boolean z2) {
        this._retryStatus = z2;
    }

    public void setScheme(L1.d dVar) {
        this._scheme = dVar;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0046. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01c5 A[Catch: IOException -> 0x001e, TryCatch #1 {IOException -> 0x001e, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x001b, B:13:0x002c, B:14:0x0043, B:16:0x0046, B:129:0x0200, B:130:0x021f, B:131:0x0220, B:18:0x004a, B:20:0x0054, B:21:0x0059, B:30:0x0073, B:31:0x007a, B:32:0x007f, B:36:0x0091, B:44:0x00ab, B:45:0x00b2, B:46:0x00b7, B:50:0x00c9, B:59:0x00e4, B:66:0x00f7, B:67:0x00fc, B:70:0x0108, B:72:0x010c, B:74:0x0112, B:75:0x011b, B:76:0x0123, B:77:0x012b, B:79:0x0131, B:80:0x0139, B:81:0x013f, B:87:0x0154, B:88:0x015c, B:89:0x0162, B:96:0x0179, B:97:0x017f, B:100:0x018b, B:102:0x018f, B:103:0x0197, B:104:0x019d, B:105:0x01a7, B:112:0x01bf, B:113:0x01c5, B:115:0x01cf, B:117:0x01d4, B:118:0x01da, B:122:0x01e8, B:124:0x01ed, B:125:0x01f3), top: B:138:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01da A[Catch: IOException -> 0x001e, TryCatch #1 {IOException -> 0x001e, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x001b, B:13:0x002c, B:14:0x0043, B:16:0x0046, B:129:0x0200, B:130:0x021f, B:131:0x0220, B:18:0x004a, B:20:0x0054, B:21:0x0059, B:30:0x0073, B:31:0x007a, B:32:0x007f, B:36:0x0091, B:44:0x00ab, B:45:0x00b2, B:46:0x00b7, B:50:0x00c9, B:59:0x00e4, B:66:0x00f7, B:67:0x00fc, B:70:0x0108, B:72:0x010c, B:74:0x0112, B:75:0x011b, B:76:0x0123, B:77:0x012b, B:79:0x0131, B:80:0x0139, B:81:0x013f, B:87:0x0154, B:88:0x015c, B:89:0x0162, B:96:0x0179, B:97:0x017f, B:100:0x018b, B:102:0x018f, B:103:0x0197, B:104:0x019d, B:105:0x01a7, B:112:0x01bf, B:113:0x01c5, B:115:0x01cf, B:117:0x01d4, B:118:0x01da, B:122:0x01e8, B:124:0x01ed, B:125:0x01f3), top: B:138:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01f3 A[Catch: IOException -> 0x001e, TryCatch #1 {IOException -> 0x001e, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x001b, B:13:0x002c, B:14:0x0043, B:16:0x0046, B:129:0x0200, B:130:0x021f, B:131:0x0220, B:18:0x004a, B:20:0x0054, B:21:0x0059, B:30:0x0073, B:31:0x007a, B:32:0x007f, B:36:0x0091, B:44:0x00ab, B:45:0x00b2, B:46:0x00b7, B:50:0x00c9, B:59:0x00e4, B:66:0x00f7, B:67:0x00fc, B:70:0x0108, B:72:0x010c, B:74:0x0112, B:75:0x011b, B:76:0x0123, B:77:0x012b, B:79:0x0131, B:80:0x0139, B:81:0x013f, B:87:0x0154, B:88:0x015c, B:89:0x0162, B:96:0x0179, B:97:0x017f, B:100:0x018b, B:102:0x018f, B:103:0x0197, B:104:0x019d, B:105:0x01a7, B:112:0x01bf, B:113:0x01c5, B:115:0x01cf, B:117:0x01d4, B:118:0x01da, B:122:0x01e8, B:124:0x01ed, B:125:0x01f3), top: B:138:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01fd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x017f A[Catch: IOException -> 0x001e, TryCatch #1 {IOException -> 0x001e, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x001b, B:13:0x002c, B:14:0x0043, B:16:0x0046, B:129:0x0200, B:130:0x021f, B:131:0x0220, B:18:0x004a, B:20:0x0054, B:21:0x0059, B:30:0x0073, B:31:0x007a, B:32:0x007f, B:36:0x0091, B:44:0x00ab, B:45:0x00b2, B:46:0x00b7, B:50:0x00c9, B:59:0x00e4, B:66:0x00f7, B:67:0x00fc, B:70:0x0108, B:72:0x010c, B:74:0x0112, B:75:0x011b, B:76:0x0123, B:77:0x012b, B:79:0x0131, B:80:0x0139, B:81:0x013f, B:87:0x0154, B:88:0x015c, B:89:0x0162, B:96:0x0179, B:97:0x017f, B:100:0x018b, B:102:0x018f, B:103:0x0197, B:104:0x019d, B:105:0x01a7, B:112:0x01bf, B:113:0x01c5, B:115:0x01cf, B:117:0x01d4, B:118:0x01da, B:122:0x01e8, B:124:0x01ed, B:125:0x01f3), top: B:138:0x0001 }] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v17, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v22, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v23, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v25, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v28, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v29, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v31, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v33, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v36, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v39, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v42, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v45, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v47, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v48, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v50, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v52, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v54, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v55, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v57, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v63, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v64, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v66, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v68 */
    /* JADX WARN: Type inference failed for: r2v69 */
    /* JADX WARN: Type inference failed for: r2v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v70 */
    /* JADX WARN: Type inference failed for: r2v71 */
    /* JADX WARN: Type inference failed for: r2v72 */
    /* JADX WARN: Type inference failed for: r2v73 */
    /* JADX WARN: Type inference failed for: r2v74 */
    /* JADX WARN: Type inference failed for: r2v75 */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r2v9, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean setStatus(int r11) {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.j.setStatus(int):boolean");
    }

    public void setTimeout(long j2) {
        this._timeout = j2;
    }

    @Deprecated
    public void setURI(String str) {
        setRequestURI(str);
    }

    public void setURL(String str) {
        setURI(URI.create(str));
    }

    public void setVersion(int i2) {
        this._version = i2;
    }

    public String toString() {
        String state = toState(getStatus());
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = jCurrentTimeMillis - this._lastStateChange;
        String str = this._lastState >= 0 ? String.format("%s@%x=%s//%s%s#%s(%dms)->%s(%dms)", getClass().getSimpleName(), Integer.valueOf(hashCode()), this._method, this._address, this._uri, toState(this._lastState), Integer.valueOf(this._lastStatePeriod), state, Long.valueOf(j2)) : String.format("%s@%x=%s//%s%s#%s(%dms)", getClass().getSimpleName(), Integer.valueOf(hashCode()), this._method, this._address, this._uri, state, Long.valueOf(j2));
        if (getStatus() < 3 || this._sent <= 0) {
            return str;
        }
        return str + "sent=" + (jCurrentTimeMillis - this._sent) + "ms";
    }

    public int waitForDone() throws InterruptedException {
        int i2;
        synchronized (this) {
            while (!isDone()) {
                try {
                    wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            i2 = this._status.get();
        }
        return i2;
    }

    @Deprecated
    public void waitForStatus(int i2) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    public void addRequestHeader(L1.d dVar, L1.d dVar2) {
        getRequestFields().d(dVar, dVar2);
    }

    public void setRequestHeader(L1.d dVar, L1.d dVar2) {
        getRequestFields().v(dVar, dVar2);
    }

    public void setScheme(String str) {
        if (str != null) {
            if ("http".equalsIgnoreCase(str)) {
                setScheme(m.f52330a);
            } else if ("https".equalsIgnoreCase(str)) {
                setScheme(m.f52331b);
            } else {
                setScheme(new L1.h(str));
            }
        }
    }

    public void setURI(URI uri) {
        if (!uri.isAbsolute()) {
            throw new IllegalArgumentException("!Absolute URI: " + uri);
        }
        if (uri.isOpaque()) {
            throw new IllegalArgumentException("Opaque URI: " + uri);
        }
        R1.c cVar = LOG;
        if (cVar.f()) {
            cVar.i("URI = {}", uri.toASCIIString());
        }
        String scheme = uri.getScheme();
        int port = uri.getPort();
        if (port <= 0) {
            port = "https".equalsIgnoreCase(scheme) ? 443 : 80;
        }
        setScheme(scheme);
        setAddress(new org.eclipse.jetty.client.b(uri.getHost(), port));
        String strB = new o(uri).b();
        if (strB == null) {
            strB = ServiceReference.DELIMITER;
        }
        setRequestURI(strB);
    }

    public void setVersion(String str) {
        e.a aVarC = p.f52349a.c(str);
        if (aVarC == null) {
            this._version = 10;
        } else {
            this._version = aVarC.h();
        }
    }

    @Deprecated
    public boolean isDone(int i2) {
        return isDone();
    }

    public void onResponseContent(L1.d dVar) {
    }

    public void onResponseHeader(L1.d dVar, L1.d dVar2) {
    }

    public void onResponseStatus(L1.d dVar, int i2, L1.d dVar2) {
    }
}

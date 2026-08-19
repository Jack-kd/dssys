package com.byazt.ml;

import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.byazt.uhg.gu;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.q;
import com.byazt.uhg.u;
import com.byazt.uhg.v;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 449, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.uhg.l {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f23077a;
    public k hp;

    /* renamed from: l, reason: collision with root package name */
    public j f23079l;

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f23080w = new AtomicBoolean(false);
    public final String jx = com.byazt.ndb.j.hp(UUID.randomUUID().toString()).hp();

    /* renamed from: j, reason: collision with root package name */
    public gu f23078j = new gu();

    @com.byazt.kj.hp(hp = {0, 1, 449, 170})
    /* renamed from: com.byazt.ml.hp$hp, reason: collision with other inner class name */
    public final class C0310hp extends com.byazt.ndb.w {

        /* renamed from: j, reason: collision with root package name */
        public final hp f23081j;
        public final com.byazt.uhg.jx jx;

        public C0310hp(com.byazt.uhg.jx jxVar, hp hpVar) {
            super("net-async-call", new Object[0]);
            this.jx = jxVar;
            this.f23081j = hpVar;
        }

        public void hp() {
            gu guVar;
            hp hpVar = this.f23081j;
            if (hpVar == null || (guVar = hpVar.f23078j) == null) {
                return;
            }
            guVar.j();
        }

        @Override // com.byazt.ndb.w
        public void l() {
            gu guVar;
            try {
                try {
                    hp hpVar = this.f23081j;
                    if (hpVar != null && (guVar = hpVar.f23078j) != null) {
                        guVar.hp();
                    }
                    u uVarW = hp.this.w();
                    if (uVarW == null) {
                        this.jx.onFailure(hp.this, new IOException("response is null"));
                    } else {
                        this.jx.onResponse(hp.this, uVarW);
                    }
                    this.f23081j.f23079l.l(this);
                } catch (Throwable th) {
                    try {
                        if (th instanceof IOException) {
                            this.jx.onFailure(hp.this, th);
                        } else {
                            this.jx.onFailure(hp.this, new IOException(th));
                        }
                        this.f23081j.f23079l.l(this);
                    } finally {
                        try {
                            this.f23081j.f23079l.l(this);
                        } catch (Throwable unused) {
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
        }
    }

    public hp(k kVar, j jVar) {
        this.hp = kVar;
        this.f23079l = jVar;
    }

    private boolean eb() {
        if (this.hp.j() == null) {
            return false;
        }
        return this.hp.j().containsKey(AbstractC1114b.f5589g);
    }

    private boolean jx(v vVar) {
        k kVar;
        return (vVar == null || (kVar = this.hp) == null || !"POST".equalsIgnoreCase(kVar.jx()) || vVar.f26219a != v.hp.STRING_TYPE || TextUtils.isEmpty(vVar.f26220j)) ? false : true;
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.byazt.uhg.l clone() {
        return new hp(this.hp, this.f23079l);
    }

    @Override // com.byazt.uhg.l
    public k hp() {
        return this.hp;
    }

    @Override // com.byazt.uhg.l
    public boolean j() {
        return this.f23080w.get();
    }

    @Override // com.byazt.uhg.l
    public u l() throws IOException {
        synchronized (this) {
            if (this.f23077a) {
                throw new IllegalStateException("Already Executed");
            }
            this.f23077a = true;
        }
        try {
            this.f23079l.hp(this);
            return w();
        } finally {
            this.f23079l.l(this);
        }
    }

    public u w() {
        List<q> list;
        if (this.f23080w.get()) {
            return null;
        }
        try {
            jl jlVar = this.hp.hp;
            if (jlVar == null || (list = jlVar.hp) == null || list.size() <= 0) {
                return hp(this.hp);
            }
            ArrayList arrayList = new ArrayList(this.hp.hp.hp);
            arrayList.add(new q() { // from class: com.byazt.ml.hp.1
                @Override // com.byazt.uhg.q
                public u hp(q.hp hpVar) throws IOException {
                    return hp.this.hp(hpVar.hp());
                }
            });
            return ((q) arrayList.get(0)).hp(new l(arrayList, this.hp));
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.uhg.l
    public void hp(com.byazt.uhg.jx jxVar) {
        try {
            synchronized (this) {
                if (this.f23077a) {
                    throw new IllegalStateException("Already Executed");
                }
                this.f23077a = true;
            }
            this.f23079l.hp(new C0310hp(jxVar, this));
        } catch (Throwable th) {
            if (jxVar != null) {
                jxVar.onFailure(this, new IOException(th.getMessage()));
            }
        }
    }

    @Override // com.byazt.uhg.l
    public void jx() {
        this.f23080w.set(true);
    }

    public u hp(k kVar) throws IOException {
        try {
            gu guVar = this.f23078j;
            if (guVar != null) {
                guVar.l();
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(kVar.l().hp().toString()).openConnection();
            if (kVar.j() != null && kVar.j().size() > 0) {
                for (Map.Entry<String, List<String>> entry : kVar.j().entrySet()) {
                    Iterator<String> it = entry.getValue().iterator();
                    while (it.hasNext()) {
                        httpURLConnection.addRequestProperty(entry.getKey(), it.next());
                    }
                }
            }
            jl jlVar = kVar.hp;
            if (jlVar != null) {
                TimeUnit timeUnit = jlVar.jx;
                if (timeUnit != null) {
                    httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(jlVar.f26204l));
                }
                jl jlVar2 = kVar.hp;
                TimeUnit timeUnit2 = jlVar2.f26206w;
                if (timeUnit2 != null) {
                    httpURLConnection.setReadTimeout((int) timeUnit2.toMillis(jlVar2.f26203j));
                }
            }
            if (kVar.a() == null) {
                httpURLConnection.setRequestMethod("GET");
            } else {
                if (!eb() && kVar.a().jx != null) {
                    httpURLConnection.addRequestProperty(AbstractC1114b.f5589g, kVar.a().jx.toString());
                }
                httpURLConnection.setRequestMethod(kVar.jx());
                if (hp(kVar.a())) {
                    hp(httpURLConnection);
                }
                if ("POST".equalsIgnoreCase(kVar.jx())) {
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    if (jx(kVar.a())) {
                        outputStream.write(kVar.a().f26220j.getBytes());
                    } else if (hp(kVar.a())) {
                        hp(kVar.a().f26222w, outputStream, kVar.a().l(), kVar.a().hp());
                    } else if (l(kVar.a())) {
                        outputStream.write(kVar.a().f26222w);
                    }
                    outputStream.flush();
                    outputStream.close();
                }
            }
            httpURLConnection.connect();
            long jCurrentTimeMillis = System.currentTimeMillis();
            gu guVar2 = this.f23078j;
            if (guVar2 != null) {
                guVar2.jx();
                this.f23078j.hp(jCurrentTimeMillis);
            }
            httpURLConnection.getResponseCode();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (this.f23080w.get()) {
                httpURLConnection.disconnect();
                return null;
            }
            a aVar = new a(httpURLConnection, kVar);
            aVar.f23073j = jCurrentTimeMillis;
            aVar.jx = jCurrentTimeMillis2;
            gu guVar3 = this.f23078j;
            if (guVar3 != null) {
                guVar3.l(jCurrentTimeMillis2);
            }
            aVar.f23075w = this.f23078j;
            return aVar;
        } catch (Exception e2) {
            throw new IOException(e2);
        }
    }

    private boolean l(v vVar) {
        k kVar;
        byte[] bArr;
        return vVar != null && (kVar = this.hp) != null && "POST".equalsIgnoreCase(kVar.jx()) && vVar.f26219a == v.hp.BYTE_ARRAY_TYPE && (bArr = vVar.f26222w) != null && bArr.length > 0;
    }

    private void hp(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return;
        }
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty(AbstractC1114b.f5589g, "multipart/form-data; boundary=" + this.jx);
    }

    private void hp(byte[] bArr, OutputStream outputStream, String str, String str2) throws IOException {
        if (bArr == null || outputStream == null) {
            return;
        }
        PrintWriter printWriter = new PrintWriter((Writer) new OutputStreamWriter(outputStream, "UTF-8"), true);
        printWriter.append((CharSequence) ("--" + this.jx)).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) ("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"")).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) "Content-Type: multipart/form-data").append((CharSequence) "\r\n");
        StringBuilder sb = new StringBuilder("Content-Length: ");
        sb.append(bArr.length);
        printWriter.append((CharSequence) sb.toString()).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) "\r\n");
        printWriter.flush();
        outputStream.write(bArr);
        printWriter.append((CharSequence) "\r\n");
        printWriter.append((CharSequence) ("--" + this.jx + "--")).append((CharSequence) "\r\n");
        printWriter.flush();
        printWriter.close();
    }

    private boolean hp(v vVar) {
        k kVar;
        byte[] bArr;
        return vVar != null && (kVar = this.hp) != null && "POST".equalsIgnoreCase(kVar.jx()) && vVar.f26219a == v.hp.FILE_TYPE && (bArr = vVar.f26222w) != null && bArr.length > 0;
    }
}
